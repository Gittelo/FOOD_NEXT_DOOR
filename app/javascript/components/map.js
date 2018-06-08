import GMaps from 'gmaps/gmaps.js';
const styles = [
    {
        "featureType": "administrative.country",
        "elementType": "geometry",
        "stylers": [
            {
                "visibility": "simplified"
            },
            {
                "hue": "#ff0000"
            }
        ]
    }
];

const initMap = function(mapElement) {
  console.log('Hello world');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 } );
    const markers = JSON.parse(mapElement.dataset.markers);
    map.addMarkers(markers);
    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
    } else {
      map.fitLatLngBounds(markers);
    }
    map.addStyle({
      styles: styles,
      mapTypeId: 'map_style'
    });
    map.setStyle('map_style');
    const contentString = "Hello World";
    const infoWindow = new google.maps.InfoWindow({
      content: contentString
    });

    //   markers.forEach((marker) => {
    //   const marker_card = new google.maps.Marker({
    //   position: {marker.lat, marker.lng},
    //   map: map,
    //   title: 'Hello)'
    //   });
    //   marker_carcard.addEventListener('click', function() {
    //     infowindow.open(map, marker);
    //   });
    // });
  }
}

// pass html.erb


export default initMap ;

import { autocomplete } from '../components/autocomplete';

// [...]
autocomplete();

