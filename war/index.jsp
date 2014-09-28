<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>หน้าหลัก</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">    
  <link rel="stylesheet" type="text/css" href="css/form.css" />
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-theme.css"> 
  <script src="jquery.mobile-1.3.2.min.js"></script>
  <script src="phonegap.js"></script> 
</head>
<body id="main">
 <header>
  <div class="row">
    <div class="col-md-12">         
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
          <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          <li data-target="#carousel-example-generic" data-slide-to="5"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="img/slide1.jpg" class="img-responsive">
            <div class="carousel-caption">
              <font size="6" color="#000000">ทะเลแหวก</font><br>
              <font size="3" color="#000000">ลึกล้ำข้ามไปกลางทะเลลึกแห่งอันดามัน</font>
            </div>
          </div>
          <div class="item">
            <img src="img/slide2.jpg" class="img-responsive">
            <div class="carousel-caption">
              <font size="6" color="#000000">สระมรกต</font><br>
              <font size="3" color="#000000">สระมรกต สระน้ำสวยใสกลางใจป่า</font>
            </div>
          </div>
          <div class="item">
            <img src="img/slide3.jpg" class="img-responsive">
            <div class="carousel-caption">
              <font size="6" color="#000000">หมู่เกาะพีพี</font><br>
              <font size="3" color="#000000">มรกตกลางอันดามัน ที่ใครหลายคนปรารถนาจะมาเยือน</font>
            </div>
          </div>
          <div class="item">
            <img src="img/slide4.jpg" class="img-responsive">
            <div class="carousel-caption">
              <font size="6" color="#000000">น้ำตกร้อน</font><br>
              <font size="3" color="#000000">อ่างอาบน้ำธรรมชาติกลางป่ารองรับสายน้ำตกที่ไหลหลั่นลงมาจากเนินเขา </font>
            </div>
          </div>
          <div class="item">
            <img src="img/slide5.jpg" class="img-responsive">
            <div class="carousel-caption">
              <font size="6">วัดถ้ำเสือ</font><br>
              <font size="3">สันนิษฐานในอดีตมีเสืออาศัยอยู่ ภายในถ้ำยังปรากฏหินธรรมชาติ เป็นรูปแบบของอุ้งเท้าเสือ</font>
            </div>
          </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
  </div>
</header>
<div class="navbar navbar-fixed-top navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle"
      data-toggle="collapse" 
      data-target=".navbar-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand"> <img src="img/surf-icon.png" width="25" height="25"><font color="#33CCFF">Krabi</font>
    </a>
  </div>
  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
     <li class="active"><a href="index.html"><img src="img/home-icon.png"> หน้าหลัก</a></li>
     <li><a href="#"><img src="img/cocktail-icon.png"> ที่กิน</a></li>
     <li><a href="#"><img src="img/palm-tree-icon.png"> ที่เที่ยว</a></li>
     <li><a href="#"><img src="img/hotel-icon.png"> ที่พัก</a></li>
     <li><a href="#"><img src="img/Phone-icon.png"> หมายเลขโทรศัพท์</a></li>
     <li><a href="#"><img src="img/maps-icon.png"> แผนที่ท่องเที่ยว</a></li>
     <li><a href="provider.html"><img src="img/user-icon.png"> คณะผู้จัดทำ</a></li>
   </ul>
   <ul class="nav navbar-nav navbar-right">
   <% String getusername_ses = (String)session.getAttribute("username_ses");
   	  String getfirstname_ses = (String)session.getAttribute("firstname_ses");
      String getlastname_ses = (String)session.getAttribute("lastname_ses");
	  if(getusername_ses==null) { %>
	  <li><a href="formlogin.html">Sing in</a></li>
	  <% } else { %>
	  <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getfirstname_ses%> (Log out)</a></a>
	         <% } %>
    </ul>
 </div>
</div>
</div>
<section> 
  <div class="row">
    <div class="col-md-12">
      <marquee behavior="scroll"><font color="#4F94CD" size="5">คำขวัญจังหวัดกระบี่ : </font><font size="4">แหล่งถ่านหิน   ถิ่นหอยเก่า  เขาตระหง่าน   ธารสวย    รวยเกาะ   เพาะปลูกปาล์ม   งามหาดทราย   ใต้ทะเลสวยสด   มรกตอันดามัน  สวรรค์เกาะพีพี</font></marquee>
    </div>
  </div><br>
  <br>

  <div class="row">
    <div class="col-md-3">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><img src="img/shell-icon.png">&nbsp;ย้อนรอย<font color="#FF0099" size="4">ประวัติศาสตร์</font></h4>
        </div>
        <img class="img-responsive img-portfolio img-hover" src="img/krabi-one.jpg" alt="">
        <div class="panel-body">
          <p>เมือง กาไส ปกาไส ปกาสัย คือชุมชนแรกตั้งก่อนที่จะพัฒนามาเป็นเมืองในปัจจุบัน</p><br><br>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><img src="img/shell-icon.png">&nbsp;กระบี่<font size="4" color="#008B00">เมืองน่าอยู่</font></h4>
        </div>
        <center><img class="img-responsive img-portfolio img-hover" src="img/krabi.jpg" alt=""></center>
        <div class="panel-body">
          <p>เมืองที่มีสังคมน่าอยู่ มีการพัฒนาคุณภาพชีวิตภายใต้การบริหารจัดการที่ดี มีชีวิตความเป็นอยู่ที่ดี สมกับคำที่ว่า “กระบี่ เมืองน่าอยู่ ผู้คนน่ารัก”</p>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><img src="img/shell-icon.png">&nbsp;<font size="4" color="#CC9900">หัตถศิลป์</font>เลอค่า</h4>
        </div>
        <center><img class="img-responsive img-portfolio img-hover" src="img/at.jpg" alt=""></center>
        <div class="panel-body">
         <p>ลูกปัดที่ระลึก คลองท่อม  ผ้าปาเต๊ะ บ้านเกาะกลาง เม็ดมะม่วงหิมพานต์คั่ว กะปิคุณภาพ อ่าวลึก ตะกร้าสาน บ้านเกาะกลาง</p><br>
       </div>
     </div>
   </div>
   <div class="col-md-3">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4><img src="img/shell-icon.png">&nbsp;ห้า<font color="#4F94CD" size="4">เส้นทางทอง</font></h4>
      </div>
      <img class="img-responsive img-portfolio img-hover" src="img/krabi-there.jpg" alt="">
      <div class="panel-body">
        <p>เส้นทางอ่าวนาง เส้นทางอ่าวลึก เส้นทางเกาะลันตา เส้นทางคลองท่อม เกาะกลาง</p><br><br>
      </div>
    </div>
  </div>
</div>
<br>
<hr>
<br>
<section>
<div class="row">
  <div class="col-md-7">
   <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">
        <img class="media-object" src="img/Krabija.png">
      </a>
      <div class="media-body">
        <br><br>
        <p><b>พื้นที่ :</b> 4,708.512 ตร.กม. (อันดับที่ 45)</p>
        <p><b>ประชากร :</b> 450,890 คน (พ.ศ. 2556) (อันดับที่ 61)</p>
        <p><b>ความหนาแน่น :</b> 95.76 คน/ตร.กม. (อันดับที่ 50)</p>
        <p><b>การปกครอง : 8</b> อำเภอ 53 ตำบล 374 หมู่บ้าน</p>
        <div class="row">
          <div class="col-md-12">
            1. อำเภอเมืองกระบี่<br>
            2. อำเภอเขาพนม<br>
            3. อำเภอเกาะลันตา<br>
            4. อำเภอคลองท่อม<br>
            5. อำเภออ่าวลึก<br>
            6. อำเภอปลายพระยา<br>
            7. อำเภอลำทับ<br>
            8. อำเภอเหนือคลอง
          </div>
        </div>
      </div>
    </li>
  </ul>
</div>
<div class="col-md-5">
  <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">
        <img class="media-object" src="img/krabi.png" alt="...">
      </a>
      <div class="media-body">
        <br>
        <h4>ตราประจำจังหวัด</h4>
        <p> รูปกระบี่ไขว้ เบื้องหลังมีภูเขาและทะเล</p>
      </div>
    </li>
  </ul> 
  <ul class="media-list">
    <li class="media">
      <a class="pull-left" href="#">
        <img class="media-object" src="img/tonfa.jpg" alt="...">
      </a>
      <div class="media-body">
        <h4>ต้นไม้ประจำจังหวัด</h4>
        <p>ทุ้งฟ้า (Acacia catechu)</p>
      </div>
    </li>
  </ul>  
</div>
</div>
</section>
</section>
<footer>
  <br>
  <hr>
  <p>&copy; Computer Science @ The University of the Thai Chamber of Commerce</p>            
</footer>  
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function (){
  $(".tool").tooltip();
});
</script>
</body>
</html>
