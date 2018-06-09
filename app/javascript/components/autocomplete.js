function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const mealsAddress = document.querySelectorAll('.autocomplete');
      mealsAddress.forEach((mealAddress) => {
      const autocomplete = new google.maps.places.Autocomplete(mealAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(mealAddress, 'keydown');
      });
  });
}

export { autocomplete };
