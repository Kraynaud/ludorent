import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { loadDynamicBannerText } from '../components/banner';

import { initAutocomplete } from '../plugins/init_autocomplete';

initMapbox();
loadDynamicBannerText();
