<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>

<form id="pagerForm" action="<c:url value='/management/webpage/list'/>" method="post">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${numPerPage}" />
</form>

<div class="pageHeader">
	<H2>Page Content</H2>
</div>

<div class="pageContent">

	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" rel="pageNav" target="navTab" href="<c:url value='/management/webpage/add'/>" title="Add new Page"><span>Add</span></a></li>
			<li><a class="edit" rel="pageNav" target="navTab" href="<c:url value='/management/webpage/edit/{slt_pageId}'/>"><span>Edit</span></a></li>
			<li><a class="delete" target="ajaxTodo" href="<c:url value='/management/webpage/delete/{slt_pageId}'/>" title="Are you sure remove?"><span>Remove</span></a></li>
		</ul>
	</div>
	<table class="list" width="100%" layoutH="58">
		<thead>
			<tr>
				<th width="50px"></th>
				<th>Title</th>
				<th width="120px">Name</th>
				<th width="120px">Sequnce</th>
				<th width="120px">Target</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${pages}" varStatus="s">
			<tr target="slt_pageId" rel="${item.id}">
				<td>${s.index + 1}</td>
				<td>${item.title}</td>
				<td>${item.name}</td>
				<td>${item.sequence}</td>
				<td>${item.targetStr}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

</div>

