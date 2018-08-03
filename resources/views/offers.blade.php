@extends('layouts.header')

@section('content')

<div class="container" style="padding: 15px 0;">
	<h2 style="text-align: center;">Offers</h2>
  <div class="row">
    <div class="col-sm">
      <img src="img/phrmacie.png" style="width: 100%;    cursor: pointer;"  data-toggle="modal" data-target="#exampleModal">
      <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Pharmacie</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Pharmacie Name</th>
				      <th scope="col">dicouver</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>saoudi pharmacie</td>
				      <td>20%</td>
				    </tr>
				  </tbody>
				</table>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
    </div>
    <div class="col-sm">
      <img src="img/supermarket.png" style="width: 100%;    cursor: pointer;"  data-toggle="modal" data-target="#exampleModal1">
      <div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Super market</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <table class="table">
				  <thead>
				    <tr>
				      <th scope="col">Pharmacie Name</th>
				      <th scope="col">dicouver</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>saoudi supermarket</td>
				      <td>30%</td>
				    </tr>
				  </tbody>
				</table>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
    </div>
    <div class="col-sm">
     
    </div>
  </div>
</div>

@endsection