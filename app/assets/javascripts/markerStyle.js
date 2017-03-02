(function(exports){

  function markerStyle(marker, status){
    if (status==='pending'){
      return marker.setIcon('http://maps.google.com/mapfiles/ms/icons/yellow-dot.png');
    } else if (status==='resolved') {
      return marker.setIcon('http://maps.google.com/mapfiles/ms/icons/green-dot.png');
    } else if (status==='open') {
      return marker.setIcon('http://maps.google.com/mapfiles/ms/icons/red-dot.png');
    }
  }
  exports.markerStyle = markerStyle;
})(this);
