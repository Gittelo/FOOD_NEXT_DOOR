import "bootstrap";

import initMap from '../components/map.js';
const mapElement = document.getElementById('map');
initMap(mapElement);

import { autocomplete } from '../components/autocomplete';
autocomplete();

//import { hide_map } from '../components/hide_map';
//hide_map();

console.log("Hello from app/javascript/packs/application.js!");
