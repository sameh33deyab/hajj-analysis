<!DOCTYPE html>
<html>
<head>
	<title>Transfer</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://unpkg.com/ionicons@4.3.0/dist/ionicons.js"></script>
<script type="text/javascript" src="{{ asset('js/instascan.min.js')}}"></script>
</head>
<body>

	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mx-auto">
		      <li class="nav-item active" style="margin: 0 15px;">
		        <a class="nav-link" href="{{route('transfer')}}">Transfer</a>
		      </li>
		      <li class="nav-item" style="margin: 0 15px;">
		        <a class="nav-link" href="{{route('exchange')}}">Exchange</a>
		      </li>
		      <li class="nav-item" style="margin: 0 15px;">
		        <a class="nav-link" href="{{route('buy')}}">paye</a>
		      </li>
		      <li class="nav-item" style="margin: 0 15px;">
		        <a class="nav-link" href="{{route('offers')}}">Offers</a>
		      </li>
		    </ul>
		  </div>
		</nav>
		</div>

	@yield('content')

</body>
</html>