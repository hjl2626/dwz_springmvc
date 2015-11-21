<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<footer id="footer">

	<div class="mainbox">
	    <div class="top"><span>&nbsp;</span></div>
	    <fmt:message key="ui.copyrights"/>
	    <div class="bottom"><span>&nbsp;</span></div>
	</div>
	
    <div id="areaFooter">
    	<strong>Customer Service: </strong> 
        <c:forEach var="item" items="${info:pages('footer')}" varStatus="s">
			<a href="<c:url value='/webpage/${item.id}'/>">${item.name}</a> | 
		</c:forEach>
    </div>
    <div id="footerBottom">
    	<div id="paymentInfo">
			<a href="#"><img id="paypal" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/paypal.gif'/>" /></a>
			<a href="#"><img id="visa" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/visa.gif'/>" /></a>
			<a href="#"><img id="masterCard" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/master.gif'/>" /></a>
			<a href="#"><img id="googleCheck" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/googlecheckout.gif'/>" /></a>
		</div>
    </div>
</footer>

