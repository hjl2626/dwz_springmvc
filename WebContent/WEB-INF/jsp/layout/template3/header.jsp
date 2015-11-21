<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<header id="header">

    <ul id="sm">
        <li id="sm_home" class="select"><a href="index.shtml"><span>&nbsp;</span>Home</a></li>
        
        <li><a href="<c:out value='/'/>"><span>&nbsp;</span><fmt:message key="ui.home"/></a></li>
        <li><a href="<c:out value='/news'/>"><span>&nbsp;</span><fmt:message key="ui.news"/></a></li>
        
		<c:forEach var="item" items="${info:pages('header')}">
		<li ${param.pageId eq item.id ? 'class="selected"' : ''}><a href="<c:url value='/webpage/${item.id}'/>"><span>&nbsp;</span>${item.name}</a></li>
		</c:forEach>
				
        <li><a href="<c:out value='/myaccount'/>"><span>&nbsp;</span><fmt:message key="ui.myaccount"/></a></li>

        <c:if test="${!empty info:contextUser()}">
			<li><a href="<c:url value='/passport/logout'/>"><fmt:message key="ui.logout"/></a></li>
		</c:if>
    </ul>
    <form id="nav_searchBox" action="#" method="post">
    	<label>
	        <span class="search">
	        <span class="left">
	        <input class="searchInput" size="25" name="search" type="text" />
	        </span>
	        </span>
	        <input class="btn_search" name="btn_search" type="button" value=""/>
        </label>
        <input class="btn_advance" name="btn_advance" type="button" />
    </form>
    <div id="cart_info"><a href="#"><span>0</span>items in Shopping Cart.</a></div>
    <div id="areaHeader"><img src="/styles/website/${param.template}/themes/${param.theme}/images/areaHeader.gif" /></div>
    <div id="logo"><img class="logobg" src="/styles/website/${param.template}/themes/${param.theme}/images/sp.gif" width="250" height="60" /></div>
</header>

