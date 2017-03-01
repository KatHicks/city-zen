function issueMarker(){
  var show_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 19,
    center: gon.latlng
  });

  marker = new google.maps.Marker({
    position: gon.latlng,
    map: show_map,
  });
}
