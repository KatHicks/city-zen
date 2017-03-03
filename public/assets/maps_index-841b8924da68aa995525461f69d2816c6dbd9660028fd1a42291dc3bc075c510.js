function indexMarkers(){
  var issues = gon.issues;
  var issuesId = []
  var titles = [];
  var status = [];
  var locations = [];
  var images = []
  for (var i=0; i<issues.length; i++){
    issuesId.push(gon.issues[i].id);
    titles.push(gon.issues[i].title);
    status.push(gon.issues[i].status);
    locations.push({lat: gon.issues[i].latitude, lng: gon.issues[i].longitude});
    images.push(gon.issues[i].image_file_name)
  }

  var index_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
    center: {lat: 51.508672, lng: -0.127233},
    styles: styleMaps()
  });

  if (locations.length>0){
    var bounds = new google.maps.LatLngBounds();
    for (var i=0; i<locations.length; i++){
      var marker = new google.maps.Marker({
        position: locations[i],
        map: index_map,
        content: titles[i],
        image: images[i],
        issueid: issuesId[i]
      });
      markerStyle(marker, status[i]);
      bounds.extend(marker.position);
      var infowindow = new google.maps.InfoWindow();
      google.maps.event.addListener(marker, 'mouseover', (function(marker) {
        return function() {
          infowindow.setContent(
                  '<img border="0" align="Left" src="../system/issues/images/000/000/0'+marker.issueid+'/thumb/'+marker.image+'">' +
                  '<br>' +
                  marker.content
          );
          infowindow.open(map, marker);
        }
      })(marker));
    }
    index_map.fitBounds(bounds);
  }
}
;
