import "bootstrap";

import initMap from '../components/map.js';
const mapElement = document.getElementById('map');
initMap(mapElement);

import { autocomplete } from '../components/autocomplete';
autocomplete();

//import drag_box from '../components/drag_box'
//drag_box();

console.log("Hello from app/javascript/packs/application.js!");
