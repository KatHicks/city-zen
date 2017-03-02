var markers = gon.latlngs;

function indexMarkers(){
  var bounds = new google.maps.LatLngBounds();
  var index_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 19,
    center: {lat: 51.5074, lng: 0.1278}
  });


  for (var i = 0; i < markers.length; i++){
    marker = new google.maps.Marker({
      position: markers[i],
      map: index_map,
    });
    bounds.extend(marker.position);
  }
  console.log(bounds);
  index_map.fitBounds(bounds);
}
