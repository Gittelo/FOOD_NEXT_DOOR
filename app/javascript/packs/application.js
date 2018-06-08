import "bootstrap";
import  initMap  from '../components/map.js';
const mapElement = document.getElementById('map');
initMap(mapElement);

import { autocomplete } from '../components/autocomplete';
autocomplete();

console.log("Hello from app/javascript/packs/application.js!");

