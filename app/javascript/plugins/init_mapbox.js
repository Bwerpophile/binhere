import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions';


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom:15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',

    });

    let directions = new MapboxDirections({
      accessToken: mapElement.dataset.mapboxApiKey,
      unit: 'metric',
      profile: 'mapbox/cycling'
    });

    // map.addControl(directions, 'top-left');
    directions.setOrigin(`${mapElement.dataset.departure-address}`);
    directions.setDestination(`${mapElement.dataset.data-end-coordinates}`);

    // const valenter = () => {
    //                   const input_address = document.getElementById("address_user").value;
    //                 }

    const markers = JSON.parse(mapElement.dataset.markers);

    // markers.forEach((marker) => {


    //   // Pass the element as an argument to the new marker
    //   new mapboxgl.Marker(element)
    //     .setLngLat([marker.lng, marker.lat])
    //     .setPopup(popup)
    //     .addTo(map);
    // });

    markers.forEach((marker) => {

      // Create a HTML element for your custom marker
      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '35px';
      element.style.height = '35px';


      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });

    fitMapToMarkers(map, markers);

  }
}

export { initMapbox };
