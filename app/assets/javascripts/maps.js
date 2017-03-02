
var marker;
var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    zoom: 11,
    center: {lat: 51.5074, lng: 0.1278}
  });

  // Try HTML5 geolocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };
      var currentLocationIcon = 'http://www.robotwoods.com/dev/misc/bluecircle.png';

      map.setCenter(pos);
      map.setZoom(18);
      var userMarker = new google.maps.Marker({
        position: pos,
        map: map,
        icon: currentLocationIcon
      });
    });
  } else {
    // Browser doesn't support Geolocation
    var infoWindow = new google.maps.InfoWindow({map: map});
    handleLocationError(false, infoWindow, map.getCenter());
  }

  map.addListener('click', function (e){
    placeMarkerAndPanTo(e.latLng, map);
    handleEvent(e);
  });
}

function placeMarkerAndPanTo(latLng, map){
  if (marker != null){
    marker.setMap(null);
  }
  marker = new google.maps.Marker({
    position: latLng,
    map: map,
    draggable: true
  });
  map.panTo(latLng);
  marker.addListener('dragend', handleEvent);
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}

function handleEvent(event){
  jQuery(document).ready(function($) {
    $('#latitude').val(event.latLng.lat());
    $('#longitude').val(event.latLng.lng());
  });
}
