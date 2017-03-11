        // Get Modal
var modal = document.getElementById('myModal');

// Get pseudoelement to open Modal
var btn = document.getElementById("sized");

// Get the <span> element to close Modal
var span = document.getElementsByClassName("close")[0];

// When user clicks Close (x), close Modal
span.onclick = function() {
   modal.style.display = "none";
   };