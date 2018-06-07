import "bootstrap";

import { initMap } from '../components/map.js';
const mapElement = document.getElementById('map');
const mapElementConfirmation = document.getElementById('map-confirmation');
initMap(mapElement);
initMap(mapElementConfirmation);

import { autocomplete } from '../components/autocomplete';
autocomplete();

console.log("Hello from app/javascript/packs/application.js!");

