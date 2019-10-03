<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://josex2r.github.io/jQuery-SlotMachine/dist/jquery.slotmachine.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/styles/github.min.css" type="text/css" />
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://josex2r.github.io/jQuery-SlotMachine/dist/slotmachine.js"></script>
    <script src="https://josex2r.github.io/jQuery-SlotMachine/dist/jquery.slotmachine.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/languages/javascript.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
</head>
	<style>
	.slot{
		 font-size: 60px;
	}
	</style>
<body>

<!-- Slot machine example -->
<div id="casino" style="padding-top:50px;"> 
  <div class="content">
    <h1>Use the API</h1>

    <div>
      <div id="casino1" class="slotMachine" style="margin-left: -65px;">
        <div class="slot slot1">1</div>
        <div class="slot slot2">2</div>
        <div class="slot slot3">3</div>
        <div class="slot slot4">4</div>
        <div class="slot slot5">5</div>
        <div class="slot slot6">6</div>
      </div>

      <div id="casino2" class="slotMachine">
        <div class="slot slot1">1</div>
        <div class="slot slot2">2</div>
        <div class="slot slot3">3</div>
        <div class="slot slot4">4</div>
        <div class="slot slot5">5</div>
        <div class="slot slot6">6</div>
      </div>

      <div id="casino3" class="slotMachine">
        <div class="slot slot1">1</div>
        <div class="slot slot2">2</div>
        <div class="slot slot3">3</div>
        <div class="slot slot4">4</div>
        <div class="slot slot5">5</div>
        <div class="slot slot6">6</div>
      </div>

      <div class="btn-group btn-group-justified" role="group">
        <button id="casinoShuffle" type="button" class="btn btn-primary btn-lg">Shuffle!</button>
        <button id="casinoStop" type="button" class="btn btn-primary btn-lg">Stop!</button>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-sm-10 col-md-5 offset-sm-1 offset-md-1">
        <pre><code id="codeBlock5"></code></pre>
      </div>

      <div class="col-sm-10 col-md-5 offset-sm-1 offset-md-0">
        <pre><code id="codeBlock6"></code></pre>
      </div>
    </div>
  </div>
</div>
<script id="codeScript5">
let count = 0;
const btnShuffle = document.querySelector('#casinoShuffle');
const btnStop = document.querySelector('#casinoStop');
const casino1 = document.querySelector('#casino1');
const casino2 = document.querySelector('#casino2');
const casino3 = document.querySelector('#casino3');
const mCasino1 = new SlotMachine(casino1, {
active: 0,
delay: 500
});
const mCasino2 = new SlotMachine(casino2, {
active: 1,
delay: 500
});
const mCasino3 = new SlotMachine(casino3, {
active: 2,
delay: 500
});
</script>
<script id="codeScript6">
btnShuffle.addEventListener('click', () => {
count = 3;
mCasino1.shuffle(9999);
mCasino2.shuffle(9999);
mCasino3.shuffle(9999);
});

btnStop.addEventListener('click', () => {
switch(count) {
case 3:
  mCasino1.stop();
  break;
case 2:
  mCasino2.stop();
  break;
case 1:
  mCasino3.stop();
  break;
}
count--;
});
</script>
</body>
</html>