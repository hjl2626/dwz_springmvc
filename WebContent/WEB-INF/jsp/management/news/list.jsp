<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<c:import url="../_frag/pager/pagerForm.jsp"></c:import>

<form method="post" rel="pagerForm" action="<c:url value='/management/news'/>" onsubmit="return navTabSearch(this)">
<div class="pageHeader">
	<div class="searchBar">
		<ul class="searchContent">
			<li>
				<label>Keywords：</label>
				<input type="text" name="keywords" value="${param.keywords}"/>
			</li>
			<li>
				<label>Type：</label>
				<select name="type">
					<option value="">All</option>
					<c:forEach var="item" items="${newsTypes}">
					<option value="${item}" ${item.id eq param.newsType ? 'selected="selected"' : ''}>${item.name}</option>
					</c:forEach>
				</select>
			</li>
			
		</ul>
		<div class="subBar">
			<span style="margin-left: 5px; line-height: 25px; float: left">Matching Records Found: <strong>${vo.totalCount}</strong></span>
			<ul>						
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">Search</button></div></div></li>
			</ul>
		</div>
	</div>
</div>
</form>

<div class="pageContent">

	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" target="navTab" rel="newsNav" href="<c:url value='/management/news/add'/>" title="Add News"><span>添加</span></a></li>
			<li><a class="edit" target="navTab" rel="newsNav" href="<c:url value='/management/news/edit/{slt_newsId}'/>" title="Edit News"><span>修改</span></a></li>
			<li><a class="delete" target="ajaxTodo" href="<c:url value='/management/news/delete/{slt_newsId}'/>" title="Are you sure remove?"><span>删除</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="50px"></th>
				<th>标题</th>
				<th width="140px">创建时间</th>
				<th width="140px">修改时间</th>
				<th width="100px">类型</th>
				<th width="100px">状态</th>
				<th width="100px">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${newsList}" varStatus="s">
			<tr target="slt_newsId" rel="${item.id }">
				<td>${s.index + 1}</td>
				<td>${item.title}</td>
				<td><fmt:formatDate value="${item.insertDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td><fmt:formatDate value="${item.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${item.type.name}</td>
				<td>${item.status.name}</td>
				<td>
					<c:choose>
						<c:when test="${item.status eq 'PENDING' or item.status eq 'DISABLED'}">
							<a class="unit" target="ajaxTodo" href="/management/news/publish/${item.id}">Publish</a>
						</c:when>
						<c:when test="${item.status eq 'ACTIVE'}">
							<a class="unit" target="ajaxTodo" href="/management/news/disable/${item.id}">Disable</a>
						</c:when>
					</c:choose>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<c:import url="../_frag/pager/panelBar.jsp"></c:import>
</div>