<%-- 
    Document   : info
    Created on : Nov 26, 2014, 11:23:01 PM
    Author     : Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Styles/layoutinfo.css">
<script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="Scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="Scripts/jquery.jcarousel.setup.js"></script>
<title>Giới Thiệu</title>
</head>
<body id="top">
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <img id = "logoteam" src="images/demo/logo.gif">
  <div id="header">
      <p id = "TeamName">S k y - L a n d</p>
  </div>
</div>
 <!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="featured_slide">
    <div id="featured_content">
      <ul>
        <li><img src="images/demo/c9cap1.jpg" alt="" />
          <div class="floater">
            <h2 id = "temp1">Vũ Đức Huy</h2>
            <p>information of Leader</p>
          </div>
        </li>
		<li><img src="images/demo/teammate2.jpg" alt="" />
          <div class="floater">
            <h2 id = "temp2">Nguyễn Phú Thuận</h2>
            <p>information of teammate1</p>
          </div>
        </li>
        <li><img src="images/demo/teammate3.jpg" alt="" />
          <div class="floater">
            <h2 id = "temp3">Lê Thị Mỹ Thịnh</h2>
            <p>information of teammate2</p>
          </div>
        </li>
		<li><img src="images/demo/teammate4.jpg" alt="" />
          <div class="floater">
            <h2 id = "temp4">Trần Thị Bích Ngọc</h2>
            <p>information of teammate4</p>
          </div>
        </li>
      </ul>
    </div>
	<a href="javascript:void(0);" id="featured-item-prev"><img src="images/prev1.gif" alt="" /></a> 
	<a href="javascript:void(0);" id="featured-item-next"><img src="images/next1.gif" alt="" /></a> 
</div>
</div>
	<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
    <div class="homepage">
      <ul>
        <li>
          <h2><img src="images/demo/60x60.gif" alt="" />Nullamlacus dui ipsum conseque loborttis</h2>
          <p>id nibh sociis malesuada.</p>
        </li>
        <li>
          <h2><img src="images/demo/60x60.gif" alt="" />Nullamlacus dui ipsum conseque loborttis</h2>
          <p> felit elit id nibh sociis malesuada.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
        <li class="last">
          <h2><img src="images/demo/60x60.gif" alt="" />Nullamlacus dui ipsum conseque loborttis</h2>
          <p> leo ut consequam ris felit elit id nibh sociis malesuada.</p>
          <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
        </li>
      </ul>
      <br class="clear" />
    </div>
  </div>
</div>
</body>
</html>
