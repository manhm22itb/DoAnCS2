<!DOCTYPE html>
<html>
<body>
<p>Kích vào button để lấy vị trí.</p>
<button onclick="watchPosition() ">Lấy vị trí</button>

<p id="demo"></p>

<script>
var x = document.getElementById("demo");

function watchPosition()  {
if (navigator.geolocation) {
navigator.geolocation.watchPosition(showPosition);
} else {
x.innerHTML = "Geolocation is not supported by this browser.";}
}

function showPosition(position) {
x.innerHTML="Kinh độ: " + position.coords.accuracy +
"<br>Vĩ độ: " + position.coords.accuracy;
}
</script>

</body>
</html>