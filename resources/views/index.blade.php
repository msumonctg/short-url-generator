<!DOCTYPE html>
<html>
<head>
	<title>Short url</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
		
</head>
<body>
<?php $random = str_random(7); ?>
<form method="POST" id="myform" action="/">
	{{ csrf_field() }}
	<table>
	<tr><td>You URL:</td> <td><input type="text" name="originalURL"><br></td></tr>
	<tr><td>Captcha:</td><td><input type="" id="check" value="{{ $random }}" disabled><br></td></tr>
	<tr><td>Varify:</td><td><input type="text" id="capcha" name="recapcha" placeholder="Captcha"><br></td></tr>
	</table>
	<!-- <input type="submit" name="" value="submit"> -->
	
</form>
<button id="submit">Generate URL</button>
<div>
	@foreach($errors->all() as $error)
		{{ $error }}
	@endforeach
	<a href="{{session()->get('message')}}">{{session()->get('message')}}</a>


<script type="text/javascript">
// $(document).ready(function(){
// 	$capcha = $('#capcha').val();
// 	$capcha2 = "{{$random}}";
// 	if($capcha === $capcha2)
// 	{
// 		alert('successful');
// 	}
// })
$('#check').css({
	"-webkit-touch-callout": "none",
  "-webkit-user-select": "none",
  "-khtml-user-select": "none",
  "-moz-user-select": "none",
  "-ms-user-select": "none",
  "user-select": "none"});

$('#submit').click(function(){
	$capcha = $('#capcha').val();
	$capcha2 = "{{$random}}";
	if($capcha === $capcha2)
	{
		$('#myform').submit();
	}
	else $('#capcha').css({backgroundColor: "red"});
})

</script>
</div>
</body>
</html>