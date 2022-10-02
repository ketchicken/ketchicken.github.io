<!DOCTYPE html>
<meta name="viewport" content="width=device-width, inital-scale=1.0">
<!--scripts-->
<script>
    function allowDrop(ev) {
        ev.preventDefault();
    }

    function drag(ev) {
        ev.dataTransfer.setData("text", ev.target.id);
    }

    function drop(ev) {
        ev.preventDefault();
        var data = ev.dataTransfer.getData("text");
        ev.target.appendChild(document.getElementById(data));
        document.getElementById("drag1").style.display = "none";
        document.getElementById("drag2").style.display = "block";
    }

    function mlem() {
        document.getElementById("drag2").style.display = "none";
    }
</script>

<body onload="mlem()">
    <div class="horizontal-box">
        <h1>Happy Birthday!</h1>
    </div>
    <div class="half-box">
        <h3>It's you birthday! Congratulations!</h3>
        <p>Drag the cake into the oven to bake it!</p>
    </div>
    <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
        <img id="drag1" src="/img/cake_batter.png" draggable="true" ondragstart="drag(event)" width="130" height="90">
    </div>
    <div id="div2">
        <img id="drag2" src="/img/cake_cooked.png" draggable="false" width="130" height="90">
    </div>
</body>

<audio controls autoplay>
    <source src="auido/seventeen.mp3" type="audio/mpeg" />
</audio>

</html>