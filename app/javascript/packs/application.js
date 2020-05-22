require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//import "../plugins/flatpickr";
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatPicker } from '../plugins/flatpickr';

document.addEventListener('turbolinks:load', () => {
  console.log("hello");
  initMapbox();
  initFlatPicker();
})

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();
