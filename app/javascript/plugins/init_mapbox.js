import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');
const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
  return map;
};

const addMarkersToMap = (map, marker) => {
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
};

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};


const initMapbox = () => {
  console.log(mapElement.dataset.marker);
  if (mapElement) {
    const map = buildMap();
    const marker = JSON.parse(mapElement.dataset.marker);
    addMarkersToMap(map, marker);
    fitMapToMarkers(map, marker);
  }
};

export { initMapbox };
