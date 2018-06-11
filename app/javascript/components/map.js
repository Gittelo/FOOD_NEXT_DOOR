import GMaps from 'gmaps/gmaps.js';
const styles = [];

const initMap = function(mapElement) {
  // Map initialisation
  if (mapElement) {
    const map = window.map = new GMaps({
      el: '#map',
      lat: 0,
      lng: 0,
      mapTypeControl: false,
      streetViewControl: false,
      fullscreenControl: false,
      zoomControl: true,
      zoomControlOptions: {
        position: google.maps.ControlPosition.TOP_RIGHT
      },
      });

    // Markers and zoom definition
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

    // Functions to change markers color on hover on cards
    const cards = document.getElementsByClassName("card");

    function markBlue(i) {
        map.markers[i].setIcon({
             url: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png'
        })
      }

    function markRed(i) {
        map.markers[i].setIcon({
          url: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png'
        })
      }

    Array.from(cards).forEach(function(card, index) {
      card.addEventListener("mouseover", function() {
        markBlue(index);
      });
    });

    Array.from(cards).forEach(function(card, index) {
      card.addEventListener("mouseout", function() {
        markRed(index);
      });
    });

    // Infowindow on click
    const contentString = "Hello World";
    const infoWindow = new google.maps.InfoWindow({
      content: contentString
    });

    markers.forEach(function(marker) {
      marker.addEventListener(marker, 'click', function(marker) {
      infowindow.setContent(content);
      infowindow.open(map, marker);
      });
    });


  }
}


// pass html.erb


export default initMap ;

import { autocomplete } from '../components/autocomplete';

// [...]
autocomplete();

