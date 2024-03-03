

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Uploaded Image</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            margin: 0;
            padding: 0;
            background: #000000;
        }
        .background {
            position: absolute;
            display: block;
            top: 0;
            left: 0;
            z-index: 0;
        }
        .container {
   			 max-width: 500px;
   			 margin: auto; /* Center horizontally */
		    position: absolute;
		    left: 50%;
		    top: 50%;
		    color: black;
		    transform: translate(-50%, -50%); /* Center vertically and horizontally */
		    padding: 20px;
		    background-color: rgba(255, 255, 255, 0.5); /* Transparent white */
		    border-radius: 10px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    z-index: 1;
		}
        
        img {
            max-width: 100%;
            display: block;
            margin: 0 auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <canvas class="background"></canvas>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/particlesjs/2.2.3/particles.min.js"></script>
    <script type="text/javascript" src="script.js"></script>

    <div class="container">
        <h2 class="text-center">Uploaded Image</h2>
        <img src="${requestScope.filePath}" alt="Uploaded Image">
    </div>

    <script>
        window.onload = function(){
              Particles.init({
                selector: '.background',
                maxParticles: 150,
                connectParticles: 'true',
                speed: 2,
                minDistance: 140,
                sizeVariations: 4,
                color: '#ffffff'
              });
            }
    </script>
</body>
</html>
