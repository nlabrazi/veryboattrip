require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
const Turbolinks = require("turbolinks")


import "bootstrap";
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
Turbolinks.start()

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();
