<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<div id="content">
	<ul>
	<c:forEach var="item" items="${newsList}">
		<li><a href="<c:url value='/news/view/${item.id}'/>">${item.title}</a></li>
	</c:forEach>
	</ul>
</div>