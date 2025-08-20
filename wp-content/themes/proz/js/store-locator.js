(function ($) {
    // Haversine distance (km)
    function haversineKm(a, b) {
        var toRad = Math.PI / 180;
        var dLat = (b.lat - a.lat) * toRad, dLng = (b.lng - a.lng) * toRad;
        var lat1 = a.lat * toRad, lat2 = b.lat * toRad;
        var sinDlat = Math.sin(dLat / 2), sinDlng = Math.sin(dLng / 2);
        var h = sinDlat * sinDlat + Math.cos(lat1) * Math.cos(lat2) * sinDlng * sinDlng;
        return 6371 * 2 * Math.asin(Math.min(1, Math.sqrt(h)));
    }

    var map, infoWindow, markers = [], allStores = [];
    var $list = $('#sl-list');
    var kl = { lat: StoreLocatorCfg.default_center.lat, lng: StoreLocatorCfg.default_center.lng };

    function clearMarkers() {
        markers.forEach(function (m) { m.setMap(null); });
        markers = [];
    }

    function renderList(stores) {
        $list.empty();
        stores.forEach(function (s) {
            var contacts = (s.contacts && s.contacts.length) ? s.contacts.join(', ') : '-';
            var meta = [];
            if (s.type) meta.push(s.type);
            if (s.region) meta.push(s.region);
            if (s.country) meta.push(s.country);

            var li = $('<li/>');
            li.append($('<div class="sl-title"/>').text(s.title));
            if (s.area) li.append($('<div/>').text(s.area));
            if (s.address) li.append($('<div/>').text(s.address));
            li.append($('<div/>').text('Contacts: ' + contacts));
            li.append($('<div class="sl-meta"/>').text(meta.join(' • ')));
            li.on('click', function () {
                var marker = markers.find(function (m) { return m.__storeId === s.id; });
                if (marker) {
                    map.panTo(marker.getPosition());
                    map.setZoom(17);
                    google.maps.event.trigger(marker, 'click');
                }
            });
            $list.append(li);
        });
    }

    function placeMarkers(stores) {
        clearMarkers();
        stores.forEach(function (s) {
            if (typeof s.lat !== 'number' || typeof s.lng !== 'number') return;

            var marker = new google.maps.Marker({
                position: { lat: s.lat, lng: s.lng },
                map: map,
                title: s.title
            });
            marker.__storeId = s.id;

            var contactHtml = (s.contacts && s.contacts.length)
                ? '<div><strong>Contact:</strong> ' + s.contacts.join(', ') + '</div>' : '';

            var meta = [];
            if (s.type) meta.push(s.type);
            if (s.region) meta.push(s.region);
            if (s.country) meta.push(s.country);

            var html =
                '<div style="max-width:260px">' +
                '<div style="font-weight:600;margin-bottom:4px">' + s.title + '</div>' +
                (s.area ? '<div>' + s.area + '</div>' : '') +
                (s.address ? '<div>' + s.address + '</div>' : '') +
                contactHtml +
                (meta.length ? '<div style="color:#666;font-size:12px;margin-top:4px">' + meta.join(' • ') + '</div>' : '') +
                (s.permalink ? '<div style="margin-top:6px"><a href="' + s.permalink + '">More details</a></div>' : '') +
                '</div>';

            marker.addListener('click', function () {
                if (!infoWindow) infoWindow = new google.maps.InfoWindow();
                infoWindow.setContent(html);
                infoWindow.open(map, marker);
            });

            markers.push(marker);
        });
    }

    function filterStores() {
        var country = $('#sl-country').val();
        var region = $('#sl-region').val();
        var type = $('#sl-type').val();

        var filtered = allStores.filter(function (s) {
            var ok = true;
            if (country && (s.country || '').toLowerCase() !== country.toLowerCase()) ok = false;
            if (region && (s.region || '').toLowerCase() !== region.toLowerCase()) ok = false;
            if (type && (s.type || '').toLowerCase() !== type.toLowerCase()) ok = false;
            return ok;
        });

        return filtered;
    }

    function sortByDistance(from, stores) {
        return stores
            .map(function (s) {
                if (typeof s.lat === 'number' && typeof s.lng === 'number') {
                    s.__distKm = haversineKm(from, { lat: s.lat, lng: s.lng });
                } else {
                    s.__distKm = Number.POSITIVE_INFINITY;
                }
                return s;
            })
            .sort(function (a, b) { return a.__distKm - b.__distKm; });
    }

    function drawDefaultKL() {
        // nearest 5–10 to KL
        var filtered = filterStores();
        var sorted = sortByDistance(kl, filtered);
        var limit = Math.min(Math.max(5, StoreLocatorCfg.default_limit || 10), 10);
        var nearKL = sorted.slice(0, limit);

        map.setCenter(kl);
        map.setZoom(parseInt(StoreLocatorCfg.default_zoom) || 16);

        placeMarkers(nearKL);
        renderList(nearKL);
    }

    function refreshFromFilters() {
        // Keep current center/zoom; just redraw markers/list
        var filtered = filterStores();
        placeMarkers(filtered);
        renderList(filtered);
    }

    function loadAllStores(initialCb) {
        // We keep it simple: get all, client-filter + distance-sort.
        $.get(StoreLocatorCfg.ajax_url, { action: 'get_stores' }, function (data) {
            // normalize numeric lat/lng
            allStores = (data || []).map(function (s) {
                s.lat = typeof s.lat === 'string' ? parseFloat(s.lat) : s.lat;
                s.lng = typeof s.lng === 'string' ? parseFloat(s.lng) : s.lng;
                return s;
            });
            if (typeof initialCb === 'function') initialCb();
        });
    }

    function attachPlacesAutocomplete() {
        var input = document.getElementById('sl-search');
        var ac = new google.maps.places.Autocomplete(input, {
            fields: ['geometry', 'name']
        });
        ac.addListener('place_changed', function () {
            var place = ac.getPlace();
            if (!place.geometry || !place.geometry.location) return;
            var loc = place.geometry.location;
            map.panTo(loc);
            map.setZoom(15);

            // After user searches, show nearest 10 to that point
            var pt = { lat: loc.lat(), lng: loc.lng() };
            var filtered = filterStores();
            var sorted = sortByDistance(pt, filtered).slice(0, 10);
            placeMarkers(sorted);
            renderList(sorted);
        });
    }

    function attachUI() {
        $('#sl-country, #sl-region, #sl-type').on('change', function () {
            refreshFromFilters();
        });
        $('#sl-reset').on('click', function () {
            $('#sl-country').val('');
            $('#sl-region').val('');
            $('#sl-type').val('');
            $('#sl-search').val('');
            drawDefaultKL();
        });
    }

    function init() {
        map = new google.maps.Map(document.getElementById('store-map'), {
            center: kl,
            zoom: parseInt(StoreLocatorCfg.default_zoom) || 16,
            mapTypeControl: false,
            streetViewControl: false
        });

        attachUI();
        attachPlacesAutocomplete();

        loadAllStores(drawDefaultKL);
    }

    // DOM ready
    $(function () { init(); });

})(jQuery);
