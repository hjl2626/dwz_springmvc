<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<h2 class="contentTitle">Add News</h2>

<form action="<c:url value='/management/news/insert?navTabId=newsLiNav&callbackType=closeCurrent'/>" method="post" class='required-validate pageForm' onsubmit="return iframeCallback(this, navTabAjaxDone);">

<div class="pageFormContent" layoutH="97">
	<div class="unit">
		<label>标题</label>
		<input type="text" name="title" class="textInput required" maxlength="200" size="100"/>
	</div>
	<div class="unit">
		<label>类型</label>
		<select class="required" name="type">
			<option value="">请选择</option>
			<c:forEach var="item" items="${newsTypes}">
			<option value="${item.id}">${item.name}</option>
			</c:forEach>
		</select>
	</div>
	<div class="unit">
		<label>内容</label>
		<textarea class="editor" name="content" rows="20" cols="80" tools="simple"></textarea>
	</div>
</div>
<div class="formBar">
	<ul>
		<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
		<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
	</ul>
</div>


</form>