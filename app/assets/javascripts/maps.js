var map;
var infowindow;
var latitude;
var longitude;

function getRandomInt(min, max) {
  return Math.random() * (max - min) + min;
}
latitude = getRandomInt(35,36);
longitude = getRandomInt(-120,-116);

function initMap() {
  var pyrmont = {lat: latitude, lng: longitude};

  map = new google.maps.Map(document.getElementById('map'), {
    center: pyrmont,
    zoom: 8
  });


  
  infowindow = new google.maps.InfoWindow();

  var service = new google.maps.places.PlacesService(map);
  service.nearbySearch({
    location: pyrmont,
    radius: 990000,
    types: ['movie_theater']
  }, callback);
}

function callback(results, status) {
  if (status === google.maps.places.PlacesServiceStatus.OK) {
    for (var i = 0; i < results.length; i++) {
      createMarker(results[i]);
    }
  }
}

function createMarker(place) {
  var placeLoc = place.geometry.location;
  var marker = new google.maps.Marker({
    map: map,
    position: place.geometry.location
  });

  google.maps.event.addListener(marker, 'click', function() {
    infowindow.setContent(place.name);
    infowindow.open(map, this);
  });
}

