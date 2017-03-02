
function indexMarkers(){
  var markers = gon.latlngs;
  var status = gon.status;
  var index_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: {lat: 51.508672, lng: -0.127233},
    styles: styleMaps()
  });

  if (markers.length>0){
    var bounds = new google.maps.LatLngBounds();
    for (var i = 0; i < markers.length; i++){
      marker = new google.maps.Marker({
        position: markers[i],
        map: index_map,
      });
      markerStyle(marker, status[i]);
      bounds.extend(marker.position);
    }
    index_map.fitBounds(bounds);
  }
}
