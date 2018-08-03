@extends('layouts.header')

@section('content')

<div class="container" style="padding: 15px 0;">
    <h2 style="text-align: center;">Exchange</h2>
<div class="row">


  <div class="form-row" style="margin: 0 auto;width: 75%;">
    <div class="col">
	  <div class="input-group-prepend">
	    <label class="input-group-text" for="inputGroupSelect01">From</label>
	  </div>
	  <select class="custom-select" id="inputGroupSelect01">
	    <option selected>Choose...</option>
	    <option value="1">Dirham Marocain</option>
	    <option value="2.5">Rryal saoudi</option>
	  </select>
	  <input type="text" name="from" class="form-control" id="from">
	</div>
    <ion-icon name="arrow-forward" style="padding: 12px;"></ion-icon>
    <div class="col">
	  <div class="input-group-prepend">
	    <label class="input-group-text" for="inputGroupSelect02">To</label>
	  </div>
	  <select class="custom-select" id="inputGroupSelect02">
	    <option selected>Choose...</option>
	    <option value="1">Dirham Marocain</option>
	    <option value="2.5">Rryal saoudi</option>
	  </select>
	  <input type="text" name="to" class="form-control" id="to">
	</div>
  </div>
  <div class="col" style="padding: 15px 0;">
    <button style="float: right;" onclick="nn()" name="Change" class="btn btn-primary" value="Change">Change</button>
  </div>
</div>

</div>

<script>
	/*function myFunction() {
		var from = document.getElementById("inputGroupSelect01").value;
		var to = document.getElementById("inputGroupSelect02").value;
		//alert(from);

		document.getElementById("to").value == from * to;
	}*/

	function nn(){
		var from = $('#from').val();
		var to = $('#inputGroupSelect02').val();

		var reslt = from * to;
		//alert(reslt);

		$('#to').val(reslt); 
	}
</script>

@endsection