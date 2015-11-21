<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<style type="text/css">
<!--
#footerBottom ul {padding: 5px 10px}
#footerBottom ul li {display:inline;}
-->
</style>

<footer id="footer">
	
	<div class="contaiterBox">
		<div class="CB_T"><span class="CB_T_l">&nbsp;</span></div>
		<div id="footerBottom">
			<div id="paymentInfo">
				<a href="#"><img id="paypal" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/paypal.gif'/>" /></a>
				<a href="#"><img id="visa" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/visa.gif'/>" /></a>
				<a href="#"><img id="masterCard" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/master.gif'/>" /></a>
				<a href="#"><img id="googleCheck" src="<c:url value='/styles/website/${param.template}/themes/${param.theme}/images/googlecheckout.gif'/>" /></a>
			</div>
			<p><fmt:message key="ui.copyrights"/></p>
			<ul>
			<c:forEach var="item" items="${info:pages('footer')}" varStatus="s">
				<li><a href="<c:url value='/webpage/${item.id}'/>">${item.name}</a></li>
			</c:forEach>
			</ul>
		</div>
		<div class="CB_B"><span class="CB_B_l">&nbsp;</span></div>
	</div>
	<div id="areaFooter">
		
	</div>

</footer>

