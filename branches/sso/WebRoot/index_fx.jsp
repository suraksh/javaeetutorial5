<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" pageEncoding="GBK"%>
<%@ include file="/WEB-INF/web/inc/ajaxInclude.jsp"%>
<html>
	<%
 				String path = request.getContextPath();
				String basePath = request.getScheme() + "://"
						+ request.getServerName() + ":" + request.getServerPort()
						+ path + "/";
			    %>
	<head>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>上海水务</title>

	<SCRIPT LANGUAGE="JavaScript">   
		if   (top.frames.length!=0)   top.location=self.document.location;   
	</SCRIPT>

<SCRIPT LANGUAGE="JavaScript">
	document.documentElement.addBehavior("#default#userdata");
	function  saveUserData(user,key,value){
	  var ex; 
	    if(!value){
	        value = key;key=user;user="defaultUser"
	    }
	    with(document.documentElement)try {
	    load(user);
	    expires = new Date(new Date()-(-86400000)).toGMTString();
	    setAttribute(key, value);
	    save(user);
	    return  getAttribute("value");
	  }
	  catch (ex){alert(ex)}
	}
	
	function loadUserData(user,key){
	    if(!key){
	        key=user;user="defaultUser";
	    }
	  var ex; 
	    with(document.documentElement)try{
	    load(user);
	    return getAttribute(key);
	  }
	  catch (ex){return null;}
	}
	
	function  deleteUserData(user){
	  var ex; 
	    if(!user)user="defaultUser";
	    with(document.documentElement)try{
	      load(user);
	    expires = new Date(new Date()-86400000).toGMTString();
	    save(user);
	  }
	  catch (ex){alert(ex.message);}
	} 
	
	function chageDiv()
	{
		deleteUserData("sh");
		saveUserData("sh","div1",document.getElementById("myID1").innerHTML)
		saveUserData("sh","div2",document.getElementById("myID2").innerHTML)
		saveUserData("sh","div3",document.getElementById("myID3").innerHTML)
		
		
	}
	//综合信息，防汛动态，水资源动态实现：１．综合信息，２．防汛动态，３．水资源动态
	function pagego(go)
	{
	   var link= document.getElementById("syhref");
	   if(go==1)
	   {
	     link.src="<%=path%>/infopubContentaction.do?method=news&xwzx=xwzx&tongzhitonggao=tongzhitonggao&swdt=swdt";
	     document.getElementById("deimage4").background="imagine/2.jpg"; 
	     document.getElementById("7").style.color="#2f475f";
	     document.getElementById("6").style.color="#8a95a1";
	     document.getElementById("5").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="<%=path%>/infopubContentaction.do?method=fxdt&code=fxdt"; 
	     document.getElementById("deimage4").background="imagine/4.jpg";
	     document.getElementById("7").style.color="#8a95a1";
	     document.getElementById("6").style.color="#2f475f";
	     document.getElementById("5").style.color="#8a95a1";
		}
	
	   if(go==3)
	   {
	     link.src="<%=path%>/infopubContentaction.do?method=szydt&code=szydt"; 
	     document.getElementById("deimage4").background="imagine/5.jpg";
	     document.getElementById("7").style.color="#8a95a1";
	     document.getElementById("6").style.color="#8a95a1";
	     document.getElementById("5").style.color="#2f475f";
		}
	}
	
	function pagego1(go)
	{
	   var link= document.getElementById("syhref1");
	   if(go==1)
	   {
	     link.src="<%=path%>/applyaction.do?method=wsbs"; 
	      document.getElementById("deimage").background="imagine/1.jpg"; 
		}
	
		if(go==2)
	   {
	     link.src="zwzl/wsbs1.htm"; 
	     document.getElementById("deimage").background="imagine/1.jpg";  
		}
	}
	
	function pagego2(go)
	{
	   var link= document.getElementById("syhref2");
	   if(go==1)
	   {
	     link.src="<%=path%>/govern.do?method=zfxxgk"; 
	     document.getElementById("deimage1").background="imagine/1.jpg";
	     document.getElementById("2").style.color="#2f475f";
	     document.getElementById("1").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="<%=path%>/infopubContentaction.do?method=gknb&code=gknb"; 
	     document.getElementById("deimage1").background="imagine/3.jpg";
	     
	     document.getElementById("2").style.color="#8a95a1";
	     document.getElementById("1").style.color="#2f475f";
		}
	}
	function pagego3(go)
	{
	   var link= document.getElementById("syhref3");
	   if(go==1)
	   {
	     link.src="http://31.16.1.7/cljg_n_bak.jsp";
	     document.getElementById("deimage2").background="imagine/1.jpg"; 
	     document.getElementById("4").style.color="#2f475f";
	     document.getElementById("3").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="http://31.16.1.7/cljg_n_bak.jsp"; 
	     document.getElementById("deimage2").background="imagine/3.jpg";
	     document.getElementById("4").style.color="#8a95a1";
	     document.getElementById("3").style.color="#2f475f";
		}
	
	   
	}
	function pagego4(go)
	{
	   var link= document.getElementById("syhref4");
	   if(go==1)
	   {
	     link.src="http://31.16.1.7/asp/table_qx9.asp"; 
	     document.getElementById("deimage3").background="imagine/2.jpg"; 
	     document.getElementById("10").style.color="#2f475f";
	     document.getElementById("9").style.color="#8a95a1";
	     document.getElementById("8").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="http://31.16.1.7/qxxx/defaultdata9.jsp?id=8"; 
	     document.getElementById("deimage3").background="imagine/4.jpg"; 
	     document.getElementById("10").style.color="#8a95a1";
	     document.getElementById("9").style.color="#2f475f";
	     document.getElementById("8").style.color="#8a95a1";
		}
	if(go==3)
	   {
	     link.src="http://31.16.1.7/qxxx/defaultdata9.jsp?id=7"; 
	     document.getElementById("deimage3").background="imagine/5.jpg";
	     document.getElementById("10").style.color="#8a95a1";
	     document.getElementById("9").style.color="#8a95a1";
	     document.getElementById("8").style.color="#2f475f"; 
		}
	   
	}
	function pagego5(go)
	{
	   var link= document.getElementById("syhref5");
	   if(go==1)
	   {
	     link.src="index/water.html"; 
	      document.getElementById("deimage5").background="imagine/2.jpg";
	      document.getElementById("16").style.color="#2f475f";
	     document.getElementById("15").style.color="#8a95a1";
	     document.getElementById("14").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="index/water1.html";
	      document.getElementById("deimage5").background="imagine/4.jpg";
	      document.getElementById("16").style.color="#8a95a1";
	     document.getElementById("15").style.color="#2f475f";
	     document.getElementById("14").style.color="#8a95a1"; 
		}
	if(go==3)
	   {
	     link.src="index/water2.html"; 
	      document.getElementById("deimage5").background="imagine/5.jpg";
	       document.getElementById("16").style.color="#8a95a1";
	     document.getElementById("15").style.color="#8a95a1";
	     document.getElementById("14").style.color="#2f475f"; 
		}
	   
	}
	function pagego6(go)
	{
	   var link= document.getElementById("syhref6");
	   if(go==1)
	   {
	     link.src="http://31.16.1.7/asp/sscw_bak.jsp"; 
	      document.getElementById("deimage6").background="imagine/2.jpg";
	      document.getElementById("13").style.color="#2f475f";
	     document.getElementById("12").style.color="#8a95a1";
	     document.getElementById("11").style.color="#8a95a1";
		}
	
		if(go==2)
	   {
	     link.src="http://31.16.1.7/asp/cwyb1_bak.jsp";
	      document.getElementById("deimage6").background="imagine/4.jpg"; 
	      document.getElementById("13").style.color="#8a95a1";
	     document.getElementById("12").style.color="#2f475f";
	     document.getElementById("11").style.color="#8a95a1";
		}
	if(go==3)
	   {
	     link.src="http://31.16.1.7/asp/scsw_bak.jsp"; 
	      document.getElementById("deimage6").background="imagine/5.jpg";
	      document.getElementById("13").style.color="#8a95a1";
	     document.getElementById("12").style.color="#8a95a1";
	     document.getElementById("11").style.color="#2f475f"; 
		}
	   
	}
	function pagego7(go)
	{
	   var link= document.getElementById("syhref7");
	   if(go==1)
	   {
	     link.src="";
	      document.getElementById("deimage7").background="imagine/ll-4-3.gif";
		}
	
		if(go==2)
	   {
	     link.src="" ;
	      document.getElementById("deimage7").background="imagine/2b-1.gif"; 
		}
	if(go==3)
	   {
	     link.src=""; 
	      document.getElementById("deimage7").background="imagine/2b-2.gif";
		}
	}
	var baseDiv1 ="<table width=\"333\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/xx_bg1.gif\"><tr class=\"dragTR\"><td width=\"100%\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tabl_atab\">&nbsp;&nbsp;&nbsp;&nbsp;数字地图</td></tr><tr><td width=\"100%\" align=\"center\" valign=\"top\" bgcolor=\"#FFFFFF\"><a href=\"http://31.16.1.74/website/shsw_webgis/viewer.htm\" onClick=\"\" target=\"_blank\"><img src=\"imagine/sy.jpg\" width=\"330\" height=\"163\" border=\"0\" scrolling=\"no\"></a></td></tr></table><table width=\"333\"  border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/xx_bg1.gif\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tabl_atab\">&nbsp;&nbsp;&nbsp;&nbsp;网上办事</td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe id=\"syhref1\" src=\"<%=path%>/applyaction.do?method=wsbs\" frameborder=\"0\" width=\"100%\"  height=\"163\"  scrolling=\"no\"></iframe></td></tr></table><!----><table width=\"333\"  border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/1.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage1\" height=\"24\" align=\"left\" class=\"tabl_atabno\" valign=\"bottom\">&nbsp;&nbsp;<a href=\"#L\" onClick=\"pagego2(1);\"><font id=\"2\">政府信息公开</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#l\" onClick=\"pagego2(2);\"><font id=\"1\" color=\"#8a95a1\">公开年报</span></td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe id=\"syhref2\" src=\"<%=path%>/govern.do?method=zfxxgk\" frameborder=\"0\" width=\"100%\"  height=\"163\"  scrolling=\"no\"></iframe></td></tr></table><!----><table width=\"333\"  border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\"background=\"imagine/1.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage2\" height=\"24\" align=\"left\"  valign=\"bottom\" class=\"tabl_atabno\" >&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#l2\" onClick=\"pagego3(1);\"><font id=\"4\">灾情快报</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#l1\" onClick=\"pagego3(2);\"><font id=\"3\" color=\"#8a95a1\">处理结果</font></td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe id=\"syhref3\" src=\"http://31.16.1.7/cljg_n_bak.jsp\" frameborder=\"0\" width=\"100%\"  height=\"165\"  scrolling=\"no\"></iframe></td></tr></table>";
	var baseDiv2 ="<table width=\"333\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/2.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage4\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atabno\">&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\"  onClick=\"pagego(1);\"><font id=\"7\">综合信息</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#l\" onClick=\"pagego(2);\"><font id=\"6\" color=\"#8a95a1\">防汛动态</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\" onClick=\"pagego(3);\"><font id=\"5\" color=\"#8a95a1\">水资源动态</font></td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe id=\"syhref\" src=\"<%=path%>/infopubContentaction.do?method=news&xwzx=xwzx&tongzhitonggao=tongzhitonggao&swdt=swdt\" frameborder=\"0\" width=\"100%\" height=\"364\"  scrolling=\"no\"></iframe></td></tr></table><!----><table width=\"333\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/xx_bg2.gif\"><tr class=\"dragTR\"><td width=\"100%\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atab\">&nbsp;&nbsp;&nbsp;&nbsp;网站动态</td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe src=\"<%=path%>/infopubContentaction.do?method=wzdt&code=wzdt\" frameborder=\"0\" width=\"100%\" height=\"163\"  scrolling=\"no\"></iframe></td></tr></table><!----><table width=\"333\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\"background=\"imagine/xx_bg2.gif\"><tr class=\"dragTR\"><td width=\"100%\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atab\">&nbsp;&nbsp;&nbsp;图文数据库</td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe src=\"index/pic.html\" frameborder=\"0\" width=\"100%\" height=\"165\"  scrolling=\"no\"></iframe></td></tr></table><!---->";
	var baseDiv3 ="<table width=\"335\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/2.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage3\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atabno\">&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#i\" onClick=\"pagego4(1);\"><font id=\"10\">天气预报</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#w\" onClick=\"pagego4(2);\"><font id=\"9\" color=\"#8a95a1\">专题预报</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#r\"onClick=\"pagego4(3);\"><font id=\"8\" color=\"#8a95a1\">短时预报</font></td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe id=\"syhref4\" src=\"http://31.16.1.7/asp/table_qx9.asp\" frameborder=\"0\"  width=\"100%\" height=\"163\"  scrolling=\"yes\"></iframe></td></tr></table><!----><table width=\"99%\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/2.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage6\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atabno\">&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#o\" onClick=\"pagego6(1);\"><font id=\"13\">实时潮位</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#t\" onClick=\"pagego6(2);\"><font id=\"12\" color=\"#8a95a1\">潮位预报</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#\" onClick=\"pagego6(3);\"><font id=\"11\" color=\"#8a95a1\">内河水位</font></a></td></tr><tr><td align=\"right\" valign=\"middle\" bgcolor=\"#eeecfb\"><iframe id=\"syhref6\" src=\"http://31.16.1.7/asp/sscw_bak.jsp\" frameborder=\"0\" width=\"100%\" height=\"163\"  scrolling=\"auto\"></iframe></td></tr></table><!----><table width=\"335\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/2.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage7\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atabno\">&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://31.16.1.74/website/taifeng/\" target=\"_blank\" onClick=\"\">台风路径</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://31.16.1.7/weixin/mtsat_31.asp\" target=\"_blank\" onClick=\"\"><font color=\"#8a95a1\">卫星云图</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"http://31.16.1.7/fx/qxxx/ldt.jsp\" target=\"_blank\"  onClick=\"\"><font color=\"#8a95a1\">雷达云图</font></a></td></tr><tr><td align=\"center\" valign=\"middle\" bgcolor=\"#FFFFFF\"><iframe id=\"syhref7\"  src=\"index/weixing.html\" align=\"center\" valign=\"top\" frameborder=\"0\" width=\"335\"  height=\"163\"  scrolling=\"no\"></iframe></td></tr></table><!----><table width=\"335\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" bordercolordark=\"#FFFFFF\" bordercolorlight=\"#468AC8\" class=\"dragTable\" background=\"imagine/2.jpg\"><tr class=\"dragTR\"><td width=\"100%\" id=\"deimage5\" height=\"24\" align=\"center\"  valign=\"bottom\" class=\"tab2_atabno\">&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#p\" onClick=\"pagego5(1);\"><font id=\"16\">水质报告</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#m\" onClick=\"pagego5(2);\"><font id=\"15\" color=\"#8a95a1\">供水水压</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"#n\" onClick=\"pagego5(3);\"><font id=\"14\" color=\"#8a95a1\">供水水量</font></a></td></tr><tr><td align=\"center\" valign=\"top\" bgcolor=\"#eeecfb\"><iframe  id=\"syhref5\" src=\"index/water.html\" frameborder=\"0\" width=\"100%\" height=\"165\"  scrolling=\"no\"></iframe></td></tr></table>";
	</SCRIPT>
	</head>
	<link href="css/index-css.css;css/style1.css" rel="stylesheet" type="text/css">

	<body style='overflow:scroll;overflow-x:hidden' leftmargin="0"
		topmargin="1">
<jsp:include page="/index_top_fx.jsp"></jsp:include>

				<table width="1006" border="0" align="center" cellpadding="0" cellspacing="2" bgcolor="#ffffff" id="parentTable">
					<tr>
						<td width="333" valign="top" id="myID1"></td>
						<td width="333" valign="top" id="myID2"></td>
						<td width="335" valign="top" id="myID3"></td>

					</tr>
				</table>
				<tr>
					<td valign="top">
						<table width="1000" align="center" border="0" cellpadding="0"
							cellspacing="0" bgcolor="#EBF1F5">

							<tr>
								<td colspan="5" valign="top">
									<table width="1000" border="1" cellpadding="0" cellspacing="0"
										bordercolor="c6c6c6" bgcolor="#FFFFFF" class="tableborder">
										<tr>
											<td>
												<table width="1000" border="0" cellpadding="0"
													cellspacing="0">
													<tr>
														<td height="22" background="imagine/sy-d1.gif"
															class="zw-cu">
															&nbsp;&nbsp;&nbsp;常用工具
														</td>
													</tr>
													<tr>
														<td align="center">
															<table width="80%" border="0" cellpadding="0"
																cellspacing="0">
																<tr align="center">
																	<td>
																		<a href="http://qq.ip138.com/train/" target="_blank"><img
																				src="imagine/sy-tp8.gif" width="67" height="37"
																				border="0">
																		</a>
																	</td>
																	<td>
																		<a href="http://www.feeyo.com/flightsearch.htm"
																			target="_blank"><img src="imagine/sy-tp9.gif"
																				width="61" height="37" border="0">
																		</a>
																	</td>
																	<td>
																		<a href="http://www.hao123.com/haoserver/tefudh.htm"
																			target="_blank"><img src="imagine/sy-tp10.gif"
																				width="61" height="50" border="0">
																		</a>
																	</td>
																	<td>
																		<a href="http://www.google.cn/language_tools"
																			target="_blank"><img src="imagine/sy-tp11.gif"
																				width="61" height="47" border="0">
																		</a>
																	</td>
																</tr>
																<tr align="center" class="zw">
																	<td height="25">
																		<a href="http://qq.ip138.com/train/" target="_blank">列车时刻
																		
																	</td>
																	<td height="25">
																		<a href="http://www.feeyo.com/flightsearch.htm"
																			target="_blank">航班信息 
																	</td>
																	<td height="25">
																		<a href="http://www.hao123.com/haoserver/tefudh.htm"
																			target="_blank">常用电话 
																	</td>
																	<td height="25">
																		<a href="http://www.google.cn/language_tools"
																			target="_blank">翻译工具 
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			
			
			<tr>
				<td height="130" align="center" valign="middle"
					background="imagine/sy-ddd.gif">
					<table width="1000" border="0" cellpadding="0" cellspacing="0"  bgcolor="#658deb"
						align="center">
						<tr>
							<td align="center" valign="top">
								<table width="100%" border="0" cellpadding="0" cellspacing="0"
									bgcolor="#658deb">
									<tr>
										<td height="30" bgcolor="#658deb">
											<select
												onchange="javascript:window.open(this.options[this.selectedIndex].value)"
												name="select2">
												<option selected="selected">
													国内省级水利厅局
												</option>
												<option value="http://www.bjwater.gov.cn" />
													北京市
												<option value="http://www.shanghaiwater.gov.cn" />
													上海市
												<option value="http://www.tjwcb.gov.cn" />
													天津市
												<option value="http://www.cqwater.gov.cn" />
													重庆市
												<option value="http://www.water.hebnet.gov.cn" />
													河北省
												<option value="http://www.sxwater.gov.cn" />
													山西省
												<option value="http://www.dwr.ln.gov.cn" />
													辽宁省
												<option value="http://slt.jl.gov.cn" />
													吉林省
												<option value="http://www.e-gov.hl.cn/agriculture/shuili">
													黑龙江省
												</option>
												<option value="http://www.jswater.gov.cn" />
													江苏省
												<option value="http://www.zjwater.com" />
													浙江省
												<option value=" http://www.ahsl.gov.cn/   ">
													安徽省
												</option>
												<option value="http://www.fjwater.gov.cn" />
													福建省
												<option value="http://www.jxfx.gov.cn/  ">
													江西省
												</option>
												<option value="http://www.hnsl.gov.cn/  ">
													河南省
												</option>
												<option value="http://www.hubeiwater.gov.cn" />
													湖北省
												<option value="http://www.hnwr.gov.cn" />
													湖南省
												<option value="http://www.slt.gd.gov.cn" />
													广东省
												<option value="http://202.100.218.58/gov/jshuili/sljzy.htm">
													海南省
												</option>
												<option value="http://www.scwater.net/  ">
													四川省
												</option>
												<option value="http://www.gzmwr.gov.cn/ ">
													贵州省
												</option>
												<option value="http://www.wcb.yn.gov.cn/ ">
													云南省
												</option>
												<option value="http://www.xzwater.gov.cn/  ">
													西藏自治区
												</option>
												<option value="http://210.83.3.18/  ">
													陕西省
												</option>
												<option value="http://www.gssl.gov.cn/  ">
													甘肃省
												</option>
												<option value="http://www.nxsl.gov.cn/default.asp">
													宁夏
												</option>
												<option value="http://www.qhsl.gov.cn/  ">
													青海省
												</option>
												<option value="http://www.info.gov.hk/wsd/index.htm  ">
													香港
												</option>
											</select>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											<select style="WIDTH: 135px;" id="menu4" onchange="javascript:window.open(this.options[this.selectedIndex].value)" name="select3">
												<option selected="selected">
													国内市级水利机构
												</option>
												<option value="http://www.shanghaiwater.gov.cn" />
													上海
												<option value="http://www.gzwater.gov.cn" />
													广州
												<option value="http://www.szwrb.gov.cn" />
													深圳
												<option value="http://www.swj.dl.gov.cn" />
													大连
												<option value="http://www.jnwater.gov.cn" />
													济南
												<option value="http://slsd.wztelecom.zj.cn" />
													温州
												<option value="http://www.sysl.gov.cn" />
													沈阳
												<option value="http://sanfang.nanhai.gov.cn" />
													南海
												<option value="http://www.zhanjiang.gov.cn/zjsl" />
													湛江
												<option value="http://www.huainan.gov.cn/shuili/index.htm">
													淮南
												</option>
												<option
													value="http://www.gygov.gov.cn/shuidianjv/shuilijv.htm">
													贵阳
												</option>
												<option value="http://www.jqwater.net" />
													酒泉
												<option value="http://202.98.242.42" />
													昌都
												<option value="http://www.yqs-slj.zj001.net" />
													乐清
												<option value="http://www.gm.fswater.gov.cn" />
													高明
												<option value="http://www.dh.jl.gov.cn/shuiliju/jzzc.htm">
													敦化
												</option>
												<option value="http://www.shuili.cangzhou.gov.cn" />
													沧州
												<option value="http://www.ycsl.gov.cn" />
													宜昌
												<option value="http://www.xfwater.com" />
													襄樊
												<option value="http://www.qzwater.com" />
													衢州
												<option value="http://jjsl.nease.net/2001zjh/2001zjh.htm">
													椒江
												</option>
												<option value="http://szszys.sosoo.net" />
													宁波
												<option value="http://www.cndx.net/cnslj/index.htm">
													苍南
												</option>
												<option value="http://www.yzsl.gov.cn" />
													扬州
												<option value="http://www.jszjsl.gov.cn" />
													镇江
												<option value="http://www.tzwater.com" />
													泰州
												<option value="http://www.wxwater.gov.cn" />
													无锡
												<option value="http://xntf.wx-e.com" />
													咸宁
												<option value="http://www.zqwater.gov.cn" />
													肇庆
												<option value="http://hsslj.heshan.net" />
													鹤山
												<option value="http://www.njslw.com" />
													宁江
												<option value="http://www.shlj.sjz.net.cn" />
													石家庄
												<option value="http://www.hsswj.gov.cn/hsswj/index.jsp">
													衡水
												</option>
												<option value="http://bzwater.533.net" />
													滨州
												<option value="http://www.lzsl.gov.cn" />
													临淄
												<option value="http://www.cqrcsl.com" />
													荣昌
												<option value="http://www.cqlpsl.com" />
													梁平
												<option value="http://www.cqtnsl.com" />
													潼南
												<option value="http://www.cqtlsl.com" />
													铜梁
												<option value="http://www.cqbssl.com" />
													壁山
												<option value="http://www.cqkxsl.com" />
													开县
												<option value="http://www.cqddksl.com" />
													大渡口
												<option value="http://www.cqwssl.com" />
													万盛
												<option value="http://www.cqwzsl.com" />
													万州
												<option value="http://www.cqpssl.com" />
													彭水
												<option value="http://www.cqxssl.com" />
													秀山
												<option value="http://www.yywr.gov.cn" />
													益阳
												<option value="http://www.hhsl.gov.cn" />
													红河
												<option value="http://slj.liuzhou.gov.cn" />
													柳州
												<option value="http://www.lljj.com" />
													岳阳
												<option value="http://www.fswater.gov.cn" />
													佛山
												<option value="http://slj.lyg.gov.cn" />
													连云港
												<option value="http://www.qzsdj.gov.cn" />
													泉州
											</select>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											<select style="WIDTH: 140px; HEIGHT: 20px"
												onchange="javascript:window.open(this.options[this.selectedIndex].value)"
												name="select">
												<option selected="selected">
													业内网站
												</option>
												<option value="http://www.shhes.org.cn" />
													上海市水利学会
												<option value="http://www.cjw.com.cn" />
													水利部长江水利委员会
												<option value="http://www.yellowriver.gov.cn" />
													水利部黄河水利委员会
												<option value="http://www.hu.mwr.gov.cn/ ">
													水利部淮河水利委员会
												</option>
												<option value="http://www.hwcc.gov.cn" />
													水利部海河水利委员会
												<option value="http://www.pearlwater.gov.cn/ ">
													水利部珠江水利委员会
												</option>
												<option value=" http://www.slwr.gov.cn/">
													水利部松辽水利委员会
												</option>
												<option value=" http://www.tba.gov.cn/  ">
													水利部太湖流域管理局
												</option>
												<option value="http://rencai.chinawater.net.cn" />
													水利部人才资源开发中心
												<option value=" http://www.waterinfo.com.cn/  ">
													水利部发展研究中心
												</option>
												<option value="http://www.ccwm.com.cn" />
													中国水利市场网
												<option value="http://www.water-sh.com" />
													上海市自来水市南有限公司
												<option value="http://www.shanghaiwater.com" />
													上海市自来水市北有限公司
												<option value="http://www.minhangwater.com/index.asp">
													上海市自来水闵行有限公司
												</option>
												<option value=" http://www.pudongwater.com/index.asp">
													上海浦东威立雅自来水有限公司
												</option>
												<option value="http://www.swec.net" />
													上海水环境建设有限公司
												<option value="http://www.ssrcc.com/" />
													上海市苏州河综合整治建设有限公司
												<option value="http://www.swcc.org.cn" />
													水土保持生态环境建设网
												<option value="http://www.giwp.org.cn" />
													水电水利规划设计总院
												<option value=" http://www.hydroinfo.gov.cn/">
													中国水文信息网
												</option>
												<option value=" http://www.irrigate.com.cn/    ">
													中国排灌信息网
												</option>
												<option value="http://www.chinawater.net.cn" />
													中国水利科技信息网
												<option value="http://www.shuiwang.com/   ">
													水网
												</option>
												<option value="http://www.h2o-china.com" />
													中国水网
												<option value="http://www.e-water.com.cn/  ">
													华夏水网
												</option>
												<option value="http://www.waterwaswater.com" />
													给水排水
												<option value="http://www.gpszx.com" />
													给排水在线
												<option value="http://www.chinawater.net/  ">
													中国给水排水
												</option>
												<option value="http://www.h2o-china.com/general/index-g.asp">
													给水技术博物馆
												</option>
												<option value="http://www.cnwaternews.com" />
													中国水务网
												<option value="http://www.c-water.com.cn/  ">
													中国水工业网
												</option>
												<option value="http://www.chinasewage.com" />
													中国污水网
												<option value="http://www.chinawater.com.cn/ ">
													中国水利报社
												</option>
												<option value=" http://jhe.ches.org.cn/  ">
													水利学报
												</option>
												<option value="http://www.waterpub.com.cn" />
													中国水利水电出版社
												<option value=" http://www.nceib.iwhr.com/">
													国家节水灌溉北京工程技术研究中心
												</option>
												<option value="http://www.bjwatergroup.com" />
													北京市自来水集团有限责任公司
												<option value="http://www.pdswater.com" />
													平顶山市自来水公司
												<option value=" http://www.ytkfqwater.com.cn/">
													烟台经济技术开发区自来水公司
												</option>
												<option value="http://www.zibowater.com" />
													淄博市自来水公司
												<option value="http://www.whwater.com" />
													武汉市自来水公司
												<option value="http://www.xfgs.com.cn" />
													襄樊供水总公司
												<option value="http://www.tianjinwater.com.cn" />
													天津自来水集团有限公司
												<option value="http://www.supplywater.com" />
													长沙市自来水公司
												<option
													value="http://www.chinacity.net/zgcs/liaoning/shenyang/shen35/shen58.htm">
													沈阳市自来水总公司
												</option>
												<option value="http://www.waterchina.com" />
													深圳市水务（集团）有限公司
												<option value="http://www.ddzwater.com.cn" />
													大连经济技术开发区自来水公司
												<option value="http://www.fswater.com" />
													佛山水司
												<option value="http://www.qqhrwater.com" />
													齐齐哈尔市自来水公司
												<option value="http://www.chwater.com" />
													澄海市自来水公司
												<option value="http://www.ntws.com.cn" />
													南通市自来水公司
												<option value="http://www.wuwater.com" />
													梧州市自来水公司
												<option value="http://jingtai.363.net/index.htm">
													宁波市自来水公司
												</option>
												<option value="http://www.tysy.com.cn" />
													海南天涯水业（集团）公司
												<option value="http://www.xiamenwater.com" />
													厦门市自来水集团有限公司
												<option value="http://www.viewchina.org/qzss" />
													泉州市自来水公司
												<option value="http://www.jnwater.com.cn" />
													济南市自来水公司
											</select>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											<select style="WIDTH: 105px; HEIGHT: 20px"
												onchange="javascript:window.open(this.options[this.selectedIndex].value)"
												name="select">
												<option selected="selected">
													国外水务机构
												</option>
												<option value="http://www.wef.org" />
													Water Environment Federation
												<option value="http://www.awt.org" />
													Association of water Technologies
												<option value="http://www.awwa.org" />
													Americian Water Works Association
												<option value="http://www.water4people.org" />
													Water for People
												<option value="http://www.givewater.org" />
													Give Water
												<option value="http://www.worldwater.org" />
													The World`s Water
												<option value="http://www.waterwiser.org" />
													Water Wiser
												<option value="http://www.iwahq.org.uk" />
													International Water Association
												<option value="http://www.cleanwateraction.org" />
													Clean Water Action
												<option value="http://www.water.org.uk" />
													Water UK
												<option value="http://www.w-ww.com" />
													Water-Wastewater Web
												<option
													value=" http://www.wateronline.com/content/homepage/default.asp">
													Water online
												</option>
												<option value="http://water.usgs.gov" />
													Water Resources of the United States
												<option value="http://ga.water.usgs.gov/edu" />
													Water Science for Schools
												<option value="http://www.thames-water.com" />
													Thames Water
												<option value="http://www.uswaternews.com/homepage.htm">
													U.S. Water News
												</option>
												<option value="http://wow.nrri.umn.edu/wow" />
													Water on the Web
												<option value="http://www.thewaterpage.com" />
													The Water Page
												<option
													value="http://www.state.nv.us/cnr/ndwp/dict-1/waterwds.htm">
													Water Words Dictionary
												</option>
												<option value="http://www.nal.usda.gov/wqic">
													Water Quality Information Center
												</option>
												<option value="http://www.bottledwaterweb.com" />
													Bottled Water Web
												<option value="http://www.wcc.nrcs.usda.gov" />
													National Water and Climate Center
												<option value="http://www.water-technology.net" />
													Water Technology
												<option value="http://www.cleanwater.gov" />
													Cleanwater.gov
												<option value="http://www.southernwater.co.uk" />
													Southern Water
												<option value="http://www.fi.edu/city/water">
													Water in The City
												</option>
												<option value="http://www.anglianwater.co.uk" />
													Anglian Water
												<option value="http://www.sydneywater.com.au" />
													Sydney Water
												<option value="http://www.unesco.org/water" />
													United Nations Educational Scientific and Cultural
													Organization Water
												<option value="http://www.wcp.net" />
													Water Conditioning and Pur?9ification Magazine
												<option value="http://www.epa.gov/water">
													U.S. Environmental Protection Agency &gt; water
												</option>
												<option value="http://www.wsscc.org" />
													Water Supply &amp; Sanitation Collaborative Council
											</select>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											<select class="tx1" style="WIDTH: 120px"
												onchange="javascript:window.open(this.options[this.selectedIndex].value) "
												name="select">
												<option selected="selected">
													局属部门、单位
												</option>
												<option value="http://61.151.248.163">
													上海市防汛信息服务网
												</option>
												<option value="http://www.shswyouth.com">
													上海市水务青年网
												</option>
												<option value="http://www.shsl.org.cn" />
													上海市水利管理处
												<option value="http://www.wsa.gov.cn" />
													上海市供水管理处
												<!--option  value="http://paishui.shanghaiwater.gov.cn"/>
              										上海市排水管理处-->
												<option value="http://www.hydrology.sh.cn" />
													上海市水文总站
												<option value="http://www.shanghaiwater.org" />
													上海市防汛信息中心（上海市水务信息中心）
												<option value="http://www.shwaterplan.com" />
													上海市水务规划设计院
												<option value="http://www.swedri.com" />
													上海市水务工程设计研究院有限公司
												<option value="http://www.shhb.com.cn" />
													上海宏波工程咨询管理有限公司
												<option value="http://www.sscrpho.org" />
													上海苏州河环境综合整治领导小组办公室
											</select>
										</td>
										<td>
											&nbsp;
										</td>
										<td>
											<select class="tx1" style="WIDTH: 120px"
												onchange="javascript:window.open(this.options[this.selectedIndex].value) "
												name="select">
												<option selected="selected">
													郊区（县）防汛办
												</option>
												<option value="http://211.144.95.130:9080/website/index.jsp">
													浦东新区防汛办
												</option>
												<option value="http://31.16.1.9/shfx/jiuzai/xuhui.htm" />
													徐汇区防汛办
												</option>
												<option value="http://31.16.1.9/shfx/jiuzai/changnin.htm" />
													长宁区防汛办
												</option>
												<option value="http://172.1.5.1/" />
													普陀区防汛办
												</option>
												<option value="http://172.12.1.100/" />
													闸北区防汛办
												</option>
												<option value="http://31.16.1.9/shfx/jiuzai/hongke.htm" />
													虹口区防汛办
												</option>
												<option value="http://192.168.2.98/ypfx" />
													杨浦区防汛办
												</option>
												<option value="http://31.16.1.9/shfx/jiuzai/huangpu.htm" />
													黄浦区防汛办
												</option>
												<option value="http://31.16.1.9/shfx/jiuzai/luwan.htm" />
													卢湾区防汛办
												</option>
												<option value="http://172.9.1.100/" />
													静安区防汛办
												</option>
												<option value="http://172.13.1.1/" />
													宝山区防汛办
												</option>
												<option value="http://172.7.1.100/" />
													闵行区防汛办
												</option>
												<option value="http://www.jdwater.gov.cn/">
													嘉定区防汛办
												</option>
												<option value="http://172.8.1.1/" />
													松江区防汛办
												</option>
												<option value="http://192.69.1.1/" />
													金山区防汛办
												</option>
												<option value="http://www.nanhui.gov.cn/nhsw/default.jsp">
													南汇区防汛办
												</option>
												<option value="http://222.72.135.140/fxsw_new/index.asp">
													奉贤区防汛办
												</option>
												<option value="http://192.1.8.100/" />
													青浦区防汛办
												</option>
												<option value="http://www.cmwater.gov.cn">
													崇明县防汛办
												</option>
											</select>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="15" >
							</td>
						</tr>
						<tr>
							<td align="center" class="zw" >
								2007-2010&nbsp;&nbsp;上海市水务局 &nbsp;&nbsp;版权所有
							</td>
						</tr>
					</table>


	</body>
</html>

<SCRIPT LANGUAGE="JavaScript">


var cDiv1 = loadUserData("shanghaiwater","div1");
if (cDiv1!=null){
	document.getElementById("myID1").innerHTML = cDiv1;
}else{
	divInit();
}
var cDiv2 = loadUserData("shanghaiwater","div2");
if (cDiv2!=null){
	document.getElementById("myID2").innerHTML = cDiv2;
}


var cDiv3 = loadUserData("shanghaiwater","div3");
if (cDiv3!=null){
	document.getElementById("myID3").innerHTML = cDiv3;
}

function divInit(){

	document.getElementById("myID1").innerHTML = baseDiv1;
	document.getElementById("myID2").innerHTML = baseDiv2;
	document.getElementById("myID3").innerHTML = baseDiv3;
}
</SCRIPT>

<script src="js/scripts.js" language="javascript"></script>
<script src="js/init.js" language="javascript"></script>
