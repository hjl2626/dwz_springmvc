<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<header id="header">
    <ul id="sm">
        <li><a href="<c:out value='/'/>"><fmt:message key="ui.home"/></a></li>
        <li><a href="<c:out value='/news'/>"><fmt:message key="ui.news"/></a></li>
		
        <li><a href="<c:out value='/myaccount'/>"><fmt:message key="ui.myaccount"/></a></li>

        <c:if test="${!empty info:contextUser()}">
			<li><a href="<c:url value='/passport/logout'/>"><fmt:message key="ui.logout"/></a></li>
		</c:if>
    </ul>
    <div id="areaHeader"><img class="areaHeaderImg" src="/styles/website/${param.template}/themes/${param.theme}/images/sp.gif" /></div>
    <div id="logo"><img class="logobg" src="/styles/website/${param.template}/themes/${param.theme}/images/sp.gif" width="250" height="60" /></div>
    <div Id="nav_menu">
    	<ul id="MenuBar1" class="MenuBarHorizontal">
        <li class="first"><a href="<c:out value='/'/>"><fmt:message key="ui.home"/><span>&nbsp;</span></a></li>
        <li><a href="<c:out value='/news'/>"><fmt:message key="ui.news"/><span>&nbsp;</span></a></li>
        <c:forEach var="item" items="${info:pages('header')}">
		<li ${param.pageId eq item.id ? 'class="selected"' : ''}><a href="<c:url value='/webpage/${item.id}'/>">${item.name}<span>&nbsp;</span></a></li>
		</c:forEach>
    </div>
    <div id="nav_searchBox">
    	<div class="left"></div>
        <form class="search" action="#" method="post">
        	<label>Search for:</label>
            <input name="search" type="text" class="searchInput" value="KEYWORDS &amp; ITEMS" />
            <label>in</label>
            <select name="brand"><option>SELECT BRAND</option></select>
            <button class="btn_search"></button>
        </form>
        <div class="right"></div>
        <a class="btn_allCat" href="<c:out value='/products'/>"></a>
    </div>
</header>

