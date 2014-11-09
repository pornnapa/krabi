<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
  <title>Travel</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">    
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-theme.css"> 
  <script src="js/jquery.mobile-1.3.2.min.js"></script>
  <script src="js/action.js"></script>
  <script src="phonegap.js"></script> 
</head>
<header>
<body id="main">
<header class="imgheaderlogin" >
   
    <div class="row">
      <div class="col-md-12">
        <center><img src="img/travel.jpg" width="1000"></center>
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
	    <a class="navbar-brand"><img src="img/surf-icon.png" width="25" height="25"><font color="#33CCFF">Krabi</font>
	    </a>
	  </div>
	  <div class="collapse navbar-collapse">
	    <ul class="nav navbar-nav">
	     <li><a href="index.jsp"><img src="img/home-icon.png"> หน้าหลัก</a></li>
	     <li><a href="#"><img src="img/cocktail-icon.png"> ที่กิน</a></li>
	     <li class="active"><a href="#"><img src="img/palm-tree-icon.png"> ที่เที่ยว</a></li>
	     <li><a href="#"><img src="img/hotel-icon.png"> ที่พัก</a></li>
	     <li><a href="#"><img src="img/Phone-icon.png"> หมายเลขโทรศัพท์</a></li>
	     <li><a href="#"><img src="img/maps-icon.png"> แผนที่ท่องเที่ยว</a></li>
	     <li><a href="provider.html"><img src="img/user-icon.png"> คณะผู้จัดทำ</a></li>
	   </ul>
	   <ul class="nav navbar-nav navbar-right">
	   <% String getusername_ses = (String)session.getAttribute("username_ses");
	   	  String getfirstname_ses = (String)session.getAttribute("firstname_ses");
	      //String getlastname_ses = (String)session.getAttribute("lastname_ses");
		  if(getusername_ses==null) { %>
		  <li><a href="formlogin.html">Sing in</a></li>
		  <% } else { %>
		  <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> &nbsp;<%=getfirstname_ses%> (Log out)</a>
		         <% } %>
	    </ul>
	 </div>
	</div>
	</div>
	<section id="provider"> 
		<div id="travellist"></div>
		
	</section>
	
<footer>
  <br>
  <hr>
  <p>&copy; BEE&KWANG || Computer Science @ The University of the Thai Chamber of Commerce</p>            
</footer>  
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
  $(".tool").tooltip();
});
</script>
</body>
</html>
<script>
		$(document).ready(function() {
							var data = '{"travel":['
									+ '{"images":"travel1.jpg","heading":"น้ำตกร้อนคลองท่อม","paragraph":" น้ำตกร้อนแห่งนี้เกิดจากธารน้ำกลางป่าพรุสะพานยูง ที่ตั้งอยู่บนรอยแตกของเปลือกโลกทำให้เกิดน้ำพุร้อนผุดขึ้นมากจากใต้พื้นดิน  ไหลมารวมตัวกับธารน้ำเย็น ผ่านโขดหิน ผาหินปูน ฯลฯ จนกลายเป็นน้ำแร่ธรรมชาติอันบริสุทธิ์ และเป็นมิตรต่อผิวพรรณ แล้วจึงไหลมาตกลงสู่แอ่งน้ำที่แวดล้อมไปด้วยแมกไม้นานาพันธุ์ ซึ่งคุณสามารถแช่ตัวได้อย่างสบาย ราวกับทำสปาชั้นเลิศ หากตรงนี้มีคนจับจองพื้นที่เยอะมากไป ไม่ต้องเสียใจยังมีบ่อน้ำร้อน ลานน้ำร้อนให้เลือกใช้บริการด้วยล่ะ โฮะๆ สุโค่ยจนได้รับเลือกให้เป็นหนึ่งใน Unseen Thailand " },'
									+ '{"images":"travel2.jpg","heading":"อุทยานแห่งชาติธารโบกขรณี","paragraph":"อุทยานแห่งชาติธารโบกขรณี ซึ่งบริเวณที่ทำการอุทยานถือเป็นป่าผืนใหญ่ใจกลางชุมชนอ่าวลึกที่ยังคงความสมบูรณ์ สงบร่มรื่นด้วยแมกไม้ ดอกไม้นานาพันธุ์ และที่สำคัญทางอุทยานได้จัดทำเส้นทางศึกษาธรรมชาติระยะทางกว่า 1800 ม. มีสถานีให้ความรู้ทั้งหมด 18 จุดด้วยกัน เดินเพลินๆ ฟังเสียงน้ำตกเคล้าเสียงนกร้อง ผ่านดงพืชสมุนไพร ต้นมะม่วงป่า ต้นโสกน้ำ ต้นตะเคียนทอง ต้นไทร ฯลฯ โดยมีไฮไลท์อยู่ที่ สระธารโบกขรณี แอ่งน้ำกว้างๆ สีเขียวมารกต น่าหลงไหล อ๊ะ เห็นอย่างนี้มีกระแสน้ำวน แถมลึกตั้ง 5 ม. เชียวนะ ลงเล่นน้ำอาจไม่ปลอดภัย แนะนำให้ไปที่สระวังไทรน้อย สระวังฉัตรแก้ว สระวังเกล็ดหิน" },'
									+ '{"images":"travel3.jpg","heading":"อ่าวท่าเลน","paragraph":"แหล่งพายคายัคที่มีชื่อเสียงระดับโลก เพราะภูมิประเทศแถบนี้เต็มไปด้วยภูเขาหินปูนขนาดมหึมา ซึ่งถูกน้ำทะเลกัดเซาะจนมีรูปร่างแปลกตา เรียงรายสลับซับซ้อน ตลอดระยะทางประมาณ 4 กม. ที่คุณต้องออกแรงพายผ่านผาหินปูนน้อยใหญ่ ถ้ำจระเข้ และลากูน หรือทะเลใน ใครไม่ฟิตจริงอาจเสียเหงื่อมากหน่อย แต่เชื่อเถอะทัศนียภาพอันสวยงามของป่าชายเลนที่แสนอุดมสมบูรณ์ จะทำให้คุณตื่นเต้น สนุกสนาน และตื้นตันใจจนหายเหนื่อยเป็นปลิดทิ้ง! TIPS แนะนำให้ชื้อ Day Trip กับบริษัทซีคายัค กระบี่ เค้ามีรถรับ-ส่งบริการถึงที่พัก มีมัคคุเทศก์คอยให้ความรู้ และอุปกรณ์เซฟตี้" },'
									+ '{"images":"travel4.png","heading":"สระมรกต","paragraph":"ขึ้นทำเนียบสถานที่ท่องเที่ยว Unseen Thailand อันดับต้นๆ มั่นใจได้เลยว่า สระมรกต แจ๋วจริงอะไรจริง และต้องออกกำลังค้นหากันหน่อย แต่รับรองว่าไม่อยากเกินความสามารถ เดินหนุงหนิง (เพียง 800ม.) ชื่นชมความสวยงามของ ผืนป่าทุ่งเตียว (เขตรักษาพันธุ์สัตว์ป่าเขาประ-บางคราม) ป่าที่ราบต่ำซึ่งยังคงสมบูรณ์ม้าก...มาก ไม่แน่นะ คุณอาจได้เห็น นกแต้วแร้วท้องดำ หรือ นกหายากชนิดอื่นๆ อีกก็ได้ พอพ้นจากจุดนี้ก็เตรียมตัวโดดลง สระมรกต สระน้ำธรรมชาติไซส์เบิ้ม ที่มีธารน้ำตกเล็กๆ ไหลรินลงมา ซึ่งน้ำสีเขียวมรกตสมชื่อนั้น “ใสกิ๊ง ราวกับกระจก” น่าแหวกว่ายเป็นที่สุด สาเหตุที่เป็นเช่นนี้เพราะน้ำที่ผุดขึ้นมาจากใต้ดินนั้นเต็มไปด้วยสารแคลเซียมคาร์บอเนต มีฤทธิ์เป็นด่างจึงทำให้เม็ดทรายตกตะกอนได้ง่าย แต่เอ๊ะ! สงสัยกันมั๊ยว่าตาน้ำตัวจริงอยู่ตรงไหน? แนะนำให้เดินไปอีก 500 ม. ตามเส้นทางศึกษาธรรมชาติคุณจะได้พบ สระน้ำผุด ที่สวยใสอย่างน่าอัศจรรย์" },'
									+ '{"images":"travel5.jpg","heading":"ถนนคนเดิน","paragraph":"เมืองกระบี่เค้าก็อินเทรนด์มี ถนนคนเดิน เหมือนกันนะเนี่ย แถมยังคึกคักครื้นเครงไม่น้อยหน้าถนนคนเดินจังหวัดอื่นๆ ใครผ่านมาช่วงเย็นย่ำ วันศุกร์-อาทิตย์ อย่าลืมหิ้วกระเป๋าน้อยๆ มาบรรจุสารพัดของอร่อย ราคาย่อยเยา ที่มีให้เลือกไม่อั้น ไม่ว่าจะเป็น หมึกย่าง-น้ำจิ้มรสเด็ด ผัดไทย หอยทอด ข้าวหมกไก่ ข้าวยำสมุนไพรสูตรปักษ์ใต้แท้ๆ ขนมพื้นเมือง กุ้งเผา ฯลฯ ที่สำคัญเค้าจัดโต๊ะ และเก้าอี้ให้นั่งหม่ำหน้าเวทีการแสดง ทานไปดูการแสดงพื้นเมืองไป ฟังดนตรีเพราะๆ จากบรรดาน้องๆ เด็กนักเรียน วงดนตรีสมัครเล่น ฯลฯ ที่ผลัดเปลี่ยนมาสร้างเสียงหัวเราะ และความบันเทิงไม่ซ้ำกัน สบายใจเพลินพุงกันแล้ว แวะช้อปสินค้าจิปาถะ เสื้อยืด กระเป๋า แอคเซสเซอรี่ รองเท้า โปสการ์ด ฯลฯ " }]}';

							var result = eval("(" + data + ")");
							for (var i = 0; i < result.travel.length; i++) {
								$("#travellist").append("<div class=\"media\"><ul class=\"media-list\"><li class=\"media\"><div class=\"row\"><div class=\"col-md-4\"><a class=\"media-left\"><img src=\"img/"+result.travel[i].images+"\"  id=\"travel\" width=\"280\" height=\"230\"></a></div><div class=\"col-md-8\"><div class=\"media-body\"><h4 class=\"media-heading\">"+result.travel[i].heading+"</h4><p>"+result.travel[i].paragraph+"</p></div></div></div></li></ul></div>"); 								
							}
						});
</script>