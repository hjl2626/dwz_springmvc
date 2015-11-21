<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<div id="sidebar">

	<div class="catogeryMain">
		<div class="title_main">
			<h1>
				<span>&nbsp;</span>Catogery
			</h1>
		</div>
		<div class="CM_Content">
			<ul id="MenuBar2" class="MenuBarVertical">
				<li><a href="<c:out value='/products'/>">Computer Hardware</a></li>
                <li><a href="<c:out value='/products'/>">Memory</a></li>
                <li><a href="<c:out value='/products'/>">Hard Drives </a></li>
                <li><a href="<c:out value='/products'/>">Video Cards</a> </li>
                <li><a href="<c:out value='/products'/>">CPUs / Processors</a></li>
                <li><a href="<c:out value='/products'/>">Computer Cases </a></li>
                <li><a href="<c:out value='/products'/>">MVideo Cards</a></li>
			</ul>
		</div>
		<div class="CM_Bottom">
			<a href="allCatogery.shtml">View All Calogeries</a>
		</div>
	</div>
	
	<div id="areaSidebar">
		<img src="/styles/website/${param.template}/themes/${param.theme}/images/sidebar.gif" />
	</div>
</div>