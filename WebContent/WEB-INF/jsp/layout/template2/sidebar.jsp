<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<div id="sidebar">
	<div class="mainbox">
		<div class="top">
			<span>&nbsp;</span>
		</div>
		<form class="search" action="#" method="post" >
			<input name="search" type="text" class="searchInput"
				value="KEYWORDS &amp; ITEMS" /> <select name="brand"><option>SELECT
					BRAND</option></select>
			<button class="btn_search"></button>
		</form>
		<div class="bottom">
			<span>&nbsp;</span>
		</div>
	</div>
	<div class="mainbox" style="margin-top: 8px;">
		<div class="top">
			<span>&nbsp;</span>
		</div>
		<div class="gotoAllCat">
			<a href="allCatogery.shtml"><img
				src="/styles/website/${param.template}/themes/${param.theme}/images/icon_goAll02.gif" /></a>
		</div>
		<div class="catogeryMain">
			<ul>
               <li class="selected"><a href="<c:out value='/products'/>">TV & Video<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Audio<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Camcorders<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Car<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Acmeras<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Phones<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Music & MOovies<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Games & Toys<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Appliances<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Car<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Acmeras<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Phones<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Music & MOovies<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Games & Toys<span>&nbsp;</span></a></li>
               <li><a href="<c:out value='/products'/>">Appliances<span>&nbsp;</span></a></li>
            </ul>
		</div>
		<div class="bottom">
			<span>&nbsp;</span>
		</div>
	</div>
	<div id="areaSidebar">
		<img src="/styles/website/${param.template}/themes/${param.theme}/images/areaSidebarImg.gif" />
	</div>
</div>