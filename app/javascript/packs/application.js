require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
const Turbolinks = require("turbolinks")

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
Turbolinks.start()

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
