require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
const Turbolinks = require("turbolinks")

Turbolinks.start()
//import "../plugins/flatpickr";
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initFlatPicker } from '../plugins/flatpickr';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initFlatPicker();
})

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();
