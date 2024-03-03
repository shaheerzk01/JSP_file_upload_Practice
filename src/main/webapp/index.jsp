<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>File Upload</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
    	html, body{
  			margin: 0px;
  			padding: 0px;
 			background: #000000;
		}
		.background{
			  position: absolute;
			  display: block;
			  top: 0px;
			  left: 0px;
			  z-index: 0;
		}
        .main-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }
        .main {
            width: 300px;
            height: 200px;
            text-align: center;
            border: none; /* Remove border */
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add shadow */
            border-radius: 10px;
        }
        form {
            width: 100%;
            position: relative;
            display: block;
            margin: 20px auto;
        }
        input[type="file"] {
            margin: 10px 0;
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white background */
            border: 1px solid rgba(255, 255, 255, 0.7); /* Semi-transparent white border */
            border-radius: 5px;
            padding: 10px;
            color: #000000; /* Black text color */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow */
        }
        input[type="file"]:focus {
            outline: none;
        }
        /* Upload button style */
        input[type="submit"] {
            background-color: #343a40; /* Navbar color */
            color: #ffffff; /* White text color */
            border: none; /* Remove border */
            padding: 10px 20px; /* Add padding */
            border-radius: 5px; /* Add border radius */
            cursor: pointer; /* Add cursor style */
            transition: background-color 0.3s ease; /* Add transition effect */
        }
        input[type="submit"]:hover {
            background-color: #23272b; /* Darker color on hover */
        }
        /* Navigation bar styles */
        .navbar {
            background-color: #343a40; /* Dark background color */
        }
        .navbar-brand {
            color: #ffffff; /* White text color for brand */
        }
        .navbar-nav .nav-link {
            color: #ffffff; /* White text color for links */
        }
    </style>
</head>
<body>
<canvas class="background"></canvas>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/particlesjs/2.2.3/particles.min.js"></script>
  <script type="text/javascript" src="script.js"></script>
<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">File Upload</a>
        <!-- Toggle button for small screens -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="main-container">
    <div class="main">
        <form method="POST" action="UploadServlet" enctype="multipart/form-data">
            <input type="file" name="file" class="form-control-file"/>
            <input type="submit" value="Upload" class="btn btn-primary mt-3"/>
        </form>
    </div>
</div>

<!-- Bootstrap JS (optional) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
window.onload = function(){
	  Particles.init({
	    selector: '.background',
	    maxParticles: 150,
	    connectParticles: 'true',
	    speed:2,
	    minDistance: 140,
	    sizeVariations: 4,
	    color: '#ffffff'
	  });
	}
</script>

</body>
</html>
