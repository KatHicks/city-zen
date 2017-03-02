var markers = gon.latlngs;

function indexMarkers(){

  var index_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: {lat: 51.508672, lng: -0.127233}
  });
  if (markers.length>0){
    var bounds = new google.maps.LatLngBounds();
    for (var i = 0; i < markers.length; i++){
      marker = new google.maps.Marker({
        position: markers[i],
        map: index_map,
      });
      bounds.extend(marker.position);
    }
    index_map.fitBounds(bounds);
  }
}
