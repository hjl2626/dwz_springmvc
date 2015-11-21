<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<c:set var="website" value="${info:contextWebsite()}"></c:set>
<div id="content">
	<div id="areaBanner">
		<img src="/styles/website/${website.template}/themes/${website.theme}/images/banner.gif" />
	</div>
	<div class="clearBoth">&nbsp;</div>
	<div id="areaSidebar">可编辑区域</div>

	<c:if test="${website.template ne 'template3'}">
	<c:import url="/WEB-INF/jsp/_fragment/featureProductList.jsp?template=${website.template}&layout=${website.layout}&theme=${website.theme}" charEncoding="UTF-8"/>
	</c:if>
</div>