<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<header id="header">
	<div id="sm" class="contaiterBox">
		<div class="CB_T"><span class="CB_T_l">&nbsp;</span></div>
        <ul>
	        <li><a href="<c:out value='/'/>"><fmt:message key="ui.home"/></a></li>
	        <li><a href="<c:out value='/news'/>"><fmt:message key="ui.news"/></a></li>
			
	        <li><a href="<c:out value='/myaccount'/>"><fmt:message key="ui.myaccount"/></a></li>
	
	        <c:if test="${!empty info:contextUser()}">
				<li><a href="<c:url value='/passport/logout'/>"><fmt:message key="ui.logout"/></a></li>
			</c:if>
        </ul>
        <div class="CB_B"><span class="CB_B_l">&nbsp;</span></div>
    </div>
    <br />
    <div id="cart_info"><a href="#"><span>0</span>items in my cart</a></div>
    <div id="areaHeader"></div>
    <div class="headBoxT">
    	<span class="left">&nbsp;</span>
        <span class="middle">&nbsp;</span>
        <div id="logo">
        	<img src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/logo.gif'/>" />
        </div>
    </div>
    <div id="nav">
        <span class="bLeft">&nbsp;</span>
        <span class="bRight">&nbsp;</span>

        <form id="nav_searchBox" action="#" method="post" class="searchBar">
	        <label>
		        <input class="input" name="keywords" type="text" />
		        <input class="btn_search" type="button" value="Search"/>
	        </label>
	        <span class="advance"><a href="#">Advanced</a></span>
	    </form>

        <div class="headBoxB">
        	<span class="tLeft">&nbsp;</span>
            <ul id="nav_menu">
	            <li ${empty param.pageId ? 'class="selected"' : ''}><a href="<c:out value='/'/>"><span><fmt:message key="ui.home"/></span></a></li>
	             
				<c:forEach var="item" items="${info:pages('header')}">
				<li ${param.pageId eq item.id ? 'class="selected"' : ''}><a href="<c:url value='/webpage/${item.id}'/>"><span>${item.name}</span></a></li>
				</c:forEach>
            </ul>

            <span class="bLeft">&nbsp;</span>
            <span class="bRight">&nbsp;</span>
        </div>
    </div>

</header>

