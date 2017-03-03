(function(exports){

  function markerStyle(marker, status){
    if (status==='pending'){
      return marker.setIcon('../../images/marker_orange.png');
    } else if (status==='resolved'){
      return marker.setIcon('../../images/marker_green.png');
    } else if (status==='open'){
      return marker.setIcon('../../images/marker_red.png');
    }
  }
  exports.markerStyle = markerStyle;
})(this);
