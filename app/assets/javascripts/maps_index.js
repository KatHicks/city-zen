
function indexMarkers(){
  var markers = gon.latlngs;
  var status = gon.status;
  var title = "Hello Pedro";
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
        title: title
      });

      var infoWindow = new google.maps.InfoWindow();
      (function (marker, markers.length[i] {
        google.maps.event.addListener(marker, 'click', function(){
          var infoContent: "specific information associated"});
          infoWindow.setContent(infoontent);
          infowindow.open(map, marker);
        });
        (marker, result[i]);
      }))
      markerStyle(marker, status[i]);
      bounds.extend(marker.position);
    }

    var infowindow = new google.maps.InfoWindow({
    content: "Hello"
  });

  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
    index_map.fitBounds(bounds);
  }
}
