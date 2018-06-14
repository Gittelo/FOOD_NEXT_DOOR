import GMaps from 'gmaps/gmaps.js';
const styles = [];

const initMap = function(mapElement) {
  // Map initialisation
  if (mapElement) {
    const map = window.map = new GMaps({
      el: '#map',
      lat: 0,
      lng: 0,
      streetViewControl: false,
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

  }
}


const initMapConfirmation = function(mapElement) {
  // Map initialisation
  if (mapElement) {
    const map = window.map = new GMaps({
      el: '#map-confirmation',
      lat: 0,
      lng: 0,
      streetViewControl: false,
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
    function showInfoWindow() {
      const displayedMarkers = document.querySelectorAll('.gmnoprint');
      const click = new Event('click');
      displayedMarkers.forEach((marker) => {
        marker.dispatchEvent(click);
        clearInterval(showInfoWindow, 1000);
      });
      }
      setTimeout(showInfoWindow, 1000);
  }

  function showInfoWindow() {
    const displayedMarkers = document.querySelectorAll('.gmnoprint');
    const click = new Event('click');
    displayedMarkers.forEach((marker) => {
      marker.dispatchEvent(click);
      clearInterval(showInfoWindow, 1000);
    });
  }
  setTimeout(showInfoWindow, 1000);
}

export { initMap, initMapConfirmation };

import { autocomplete } from '../components/autocomplete';

// [...]
autocomplete();

