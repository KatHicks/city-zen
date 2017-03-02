function editIssueMarker(){
  var edit_map = new google.maps.Map(document.getElementById('map'), {
    zoom: 19,
    center: gon.latlng
  });

  var marker = new google.maps.Marker({
    position: gon.latlng,
    map: edit_map,
    draggable: true
  });
  edit_map.panTo(marker.position);
  marker.addListener('dragend', handleEvent);
}

function handleEvent(event){
  jQuery(document).ready(function($) {
    $('#latitude').val(event.latLng.lat());
    $('#longitude').val(event.latLng.lng());
  });
}
