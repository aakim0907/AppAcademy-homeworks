console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  method: "GET",
  url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b",
  // datatype: "JSON",
  // data: weather,
  // success: function () {
  //   console.log(weather);
  // }
  success(data) {
    console.log("This is the weather!");
    console.log(data);
  },
  error() {
    console.log("An error occurred");
  }
});

// Add another console log here, outside your AJAX request
console.log("I'm outside the AJAX request");
