<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<div class="pageContent" layoutH="10" style="text-align: center; padding: 1px 0;">

<c:choose>
<c:when test="${!empty param.layout && !empty param.theme}">
	<img src="<c:url value='${template.prePicBase}/${param.layout}_${param.theme}_lg.${template.prePicExt}' />" alt="${template.name}" />
</c:when>
<c:otherwise>
	<img src="<c:url value='${template.defaultPicUrl}' />" alt="${template.name}" />
</c:otherwise>
</c:choose>

</div>
