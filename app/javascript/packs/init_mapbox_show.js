const initMapboxShow = () => {
  const mapDiv = document.getElementById('my_map')

  const startCoordinates = JSON.parse(mapDiv.dataset.startCoordinates)
  const endCoordinates   = JSON.parse(mapDiv.dataset.endCoordinates)
  const initialZoomLevel = parseInt(JSON.parse(mapDiv.dataset.initialZoomLevel))

  mapboxgl.accessToken = mapDiv.dataset.mapboxAccessToken

  const map = new mapboxgl.Map({
    container: mapDiv,
    style:     'mapbox://styles/mapbox/streets-v10',
    center:    startCoordinates,
    zoom:      initialZoomLevel
  });

  function drawRoute(end) {
    const url = `https://api.mapbox.com/directions/v5/mapbox/walking/${startCoordinates[0]},${startCoordinates[1]};${endCoordinates[0]},${endCoordinates[1]}?language=fr&steps=true&geometries=geojson&access_token=${mapboxgl.accessToken}`

    var req = new XMLHttpRequest();
    req.responseType = 'json';
    req.open('GET', url, true);
    req.onload = function() {
      var data  = req.response.routes[0];
      var route = data.geometry.coordinates;

      var geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'LineString',
          coordinates: route
        }
      };

      // if the route already exists on the map, reset it using setData
      if (map.getSource('route')) {
        map.getSource('route').setData(geojson)

      } else {
        // otherwise, make a new request
        map.addLayer({
          id: 'route',
          type: 'line',
          source: {
            type: 'geojson',
            data: {
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'LineString',
                coordinates: geojson
              }
            }
          },
          layout: {
            'line-join': 'round',
            'line-cap': 'round'
          },
          paint: {
            'line-color': '#3887be',
            'line-width':  5,
            'line-opacity': 0.75
          }
        });
      }

      // Printing instructions

      var instructions = document.getElementById('instructions')
      var steps        = data.legs[0].steps

      const itineraryDuration = Math.floor(data.duration / 60)

      const tripInstructionsHtml = steps.map(step => {
        return `<li>${step.maneuver.instruction}</li>`
      }).join('')

      instructions.innerHTML = `
        <span class="duration">${itineraryDuration} minutes 🚶‍♀️</span>
        ${tripInstructionsHtml}
      `
    }

    req.send()
  }

  map.on('load', function() {
    // make an initial directions request that
    // starts and ends at the same location
    drawRoute(startCoordinates);

    // Add starting point to the map

    const startPoint = {
      id: 'point',
      type: 'circle',
      source: {
        type: 'geojson',
        data: {
          type: 'FeatureCollection',
          features: [{
            type: 'Feature',
            properties: {},
            geometry: {
              type: 'Point',
              coordinates: startCoordinates
            }
          }
          ]
        }
      },
      paint: {
        'circle-radius': 10,
        'circle-color': '#3887be',
      }
    }

    map.addLayer(startPoint);

    // Add end point to the map

    const startMarker = new mapboxgl.Marker()
      .setLngLat(endCoordinates)
      .addTo(map);

    drawRoute(endCoordinates);
  })
}

initMapboxShow();