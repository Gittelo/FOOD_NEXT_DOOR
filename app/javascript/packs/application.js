import "bootstrap";
import  { initMap, initMapConfirmation } from '../components/map.js';

const mapElement = document.getElementById('map');
initMap(mapElement);

const mapElementConfirmation = document.getElementById('map-confirmation');
initMapConfirmation(mapElementConfirmation);



import { autocomplete } from '../components/autocomplete';
autocomplete();

import { logo } from '../components/logo';

console.log("Hello from app/javascript/packs/application.js!");

