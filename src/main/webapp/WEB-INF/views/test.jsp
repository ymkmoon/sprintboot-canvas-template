<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <style>
        .back {
            width: 1000;
            height: 1000;
            background-image: url(resources/assets/images/test.png);
            /* background-image: url(resources/assets/images/gyeonggi-do.png); */
            background-size: contain;
            background-repeat: no-repeat;
        }
    </style>
    
    <script type="text/javascript">
    	function convertLatLngToPoint(lat, lng, mapWidth, mapHeight, latNorth, lngWest, latSouth, lngEast) {
    	  	var x = (lng - lngWest) * (mapWidth / (lngEast - lngWest));
    	  	var y = (latNorth - lat) * (mapHeight / (latNorth - latSouth));
    	  	return { x: x, y: y };
    	}

    	function init() {
    		
    		// ���ֽ� ��ǥ
    		var lat = 37.7598688;
    		var lng = 126.7801781;

    		// ���� �̹����� ũ��
    		var mapWidth = 467;
    		var mapHeight = 550;

    		// ������ ��� ��ǥ��
    		var latNorth = 38.31549149331101;
    		var lngWest = 126.32647377465511;
    		var latSouth = 36.84980128937025;
    		var lngEast = 127.89229364975684;

    		// ��ǥ���� �ȼ� ��ġ�� ��ȯ
    		var point = convertLatLngToPoint(lat, lng, mapWidth, mapHeight, latNorth, lngWest, latSouth, lngEast);

    		// �ȼ� ��ġ�� ���
    		console.log("���� �̹��������� ��ġ: x=" + point.x + ", y=" + point.y);

    	}

    </script>
</head>
 <!-- <body onload="init();" bgcolor="white" class="back">
                <canvas name="canvas" id="canvas" width="1000" height="1000"></canvas>
        </body> -->
<body onload="init();">
	<!-- <div id="main" class="back">
        <canvas id="myCanvas" style="width:467px; height:500px;"></canvas>
    </div> -->
    
    <!-- <img alt="" src="resources/assets/images/gyeonggi-do.png"> -->
    
    <canvas id="mapCanvas" style="width:467px; height:500px; "></canvas>
</body>
</html>