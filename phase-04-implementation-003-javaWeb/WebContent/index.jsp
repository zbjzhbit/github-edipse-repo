<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/jame4.jpg);
	background-color: #000000;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1000px',
			top : '20px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/introduction.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/music.mp3"
		preload="auto"></audio>
    <span id="firstline" style="font-size: 22px; color: white">2016年NBA总决赛最有价值球员获得者：“<span
		style="font-size: 34px; color: red">LeBron James</span>”这场总决赛，这是一场没有硝烟的战争，球员们倾尽全力，最后克利夫兰骑士队稍胜一筹 <br /> 点击屏幕左下角詹姆斯个人图标，可以观看2016年夺冠纪录片！ <br />
	</span>
	<audio id="waiting" src="/static/audio/waiting.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 26px; color: white; position:absolute; left :10px;top:50px" >
		2016年NBA总决赛<br /> <span style="font-size: 22px; color: red">
			获胜方：克利夫兰骑士 </span><br /> <br /> 这是一场史无前例的大逆转 <br /> 这是骑士队46个赛季以来首次获得NBA总冠军<br /> 詹姆斯终于实现了他对家乡的承诺 <br /><br /> 终结了克利夫兰52年来职业体育联盟无冠的屈辱史 <br /><br /> 同时詹姆斯也是总决赛历史上唯一的， <br /><br /> 能在五项基础数据上领先两支球队的人 <br />
	</div>
	<img src="/static/imgs/symbol.jpg"
		style="position: absolute; left: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" 
		title="点击后，开始展示生涯 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="300px" controls="controls"
			src="/static/video/movie1.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">此次总决赛精彩程度在NBA历史上也算罕有 谨以此向<span style="color:red">克利夫兰骑士队</span>和<span style="color:orange">金州勇士队</span>表示致敬 !  <br/>一往无前虎山行<br/> 拨开云雾见光明！ <br/>跌宕起伏的剧情，双方球员的拼搏，骑士队夺冠后人们的欢呼与泪水 这就是篮球比赛的魅力</div>
</body>
</html>