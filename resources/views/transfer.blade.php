@extends('layouts.header')

@section('content')
<div class="container" style="padding: 15px 0;">
    <h2 style="text-align: center;">Transfer</h2>
<div class="row">

  <form style="margin: 0 auto;width: 75%;" action="{{route('transfer2')}}">
  <div class="form-row">
    <div class="col">
      <input type="text" class="form-control" name="from" placeholder="From">
    </div>
    <ion-icon name="arrow-forward" style="padding: 12px;"></ion-icon>
    <div class="col">
      <input type="text" class="form-control" name="to" placeholder="To">
    </div>
  </div>
  <div class="col" style="padding: 15px 0;">
    <input type="submit" style="float: right;" name="proccess" class="btn btn-primary" value="proccess">
  </div>
</form>
</div>

</div>
@endsection