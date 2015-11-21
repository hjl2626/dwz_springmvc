<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<c:import url="../_frag/pager/pagerForm.jsp"></c:import>

<form method="post" rel="pagerForm" action="<c:url value='/management/user'/>" onsubmit="return navTabSearch(this)">
<div class="pageHeader">
	<div class="searchBar">
		<ul class="searchContent">
			<li>
				<label>关键词：</label>
				<input type="text" name="keywords" value="${param.keywords}"/>
			</li>
			<li>
				<label>状态：</label>
				<select name="status">
					<option value="">全部</option>
					<c:forEach var="item" items="${userStatusList}">
					<c:if test="${item ne 'DELETED'}">
					<option value="${item}" ${item eq param.status ? 'selected="selected"' : ''}>${item}</option>
					</c:if>
					</c:forEach>
				</select>
			</li>
		</ul>
		<div class="subBar">
			<ul>						
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">搜索</button></div></div></li>
			</ul>
		</div>
	</div>
</div>
</form>

<div class="pageContent">

	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" target="navTab" rel="userNav" href="<c:url value='/management/user/add'/>" title="添加用户"><span>添加</span></a></li>
			<li><a class="edit" target="navTab" rel="userNav" href="<c:url value='/management/user/edit/{slt_objId}'/>" title="编辑用户"><span>编辑</span></a></li>
			<li><a class="delete" target="ajaxTodo" href="<c:url value='/management/user/delete/{slt_objId}'/>" title="你确定要删除吗?"><span>删除</span></a></li>
			<li class="line">line</li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="50"></th>
				<th width="100" orderField="USERNAME" class="${param.orderField eq 'USERNAME' ? param.orderDirection : ''}">用户名</th>
				<th width="100" orderField="NICKNAME" class="${param.orderField eq 'NICKNAME' ? param.orderDirection : ''}">昵称</th>
				<th orderField="EMAIL" class="${param.orderField eq 'EMAIL' ? param.orderDirection : ''}">Email</th>
				<th width="100" orderField="PHONE" class="${param.orderField eq 'PHONE' ? param.orderDirection : ''}">电话</th>
				<th width="100" orderField="BIRTH_DATE" class="${param.orderField eq 'BIRTH_DATE' ? param.orderDirection : ''}">出生日期</th>
				<th width="130" orderField="INSERT_DATE" class="${param.orderField eq 'INSERT_DATE' ? param.orderDirection : ''}">创建时间</th>
				<th width="100" orderField="STATUS" class="${param.orderField eq 'STATUS' ? param.orderDirection : ''}">状态</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${userList}" varStatus="s">
			<tr target="slt_objId" rel="${item.id }">
				<td>${s.index + 1}</td>
				<td>${item.username}</td>
				<td>${item.nickname}</td>
				<td>${item.email}</td>
				<td>${item.phone}</td>
				<td><fmt:formatDate value="${item.birthDate}" pattern="yyyy-MM-dd"/></td>
				<td><fmt:formatDate value="${item.insertDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>${item.status}</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

	<c:import url="../_frag/pager/panelBar.jsp"></c:import>
</div>