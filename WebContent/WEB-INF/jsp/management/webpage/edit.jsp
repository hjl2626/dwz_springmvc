<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<h2 class="contentTitle">Edit Page</h2>

<form action="<c:url value='/management/webpage/update'/>?navTabId=pageLiNav&callbackType=closeCurrent" method="post" class='required-validate pageForm' onsubmit="return iframeCallback(this, navTabAjaxDone);">
<input type="hidden" name="id" value="${page.id}"/>
<div class="pageFormContent" layoutH="97">
	<div class="unit">
		<label>Name</label>
		<input type="text" name="name" value="${page.name}" class="required" maxlength="100" />
	</div>
	
	<div class="unit">
		<label>Title</label>
		<input type="text" name="title" value="${page.title}" class="required" maxlength="100" />
	</div>
	
	<div class="unit">
		<label>Keywords</label>
		<textarea name="metaKeyword" cols="80" maxlength="200">${page.metaKeyword}</textarea>
	</div>
	<div class="unit">
		<label>Description</label>
		<textarea name="metaDescription" cols="80" maxlength="200">${page.metaDescription}</textarea>
	</div>
	
	<div class="unit">
		<label>Sequence</label>
		<input type="text" name="sequence" value="${page.sequence}" class="digits" maxlength="4" />
	</div>
	
	<div class="unit">
		<label>target</label>
		<c:forEach var="item" items="${pageTargets}">
			${item.name} : <input type="checkbox" ${elutil:contains(item.id, page.target) ? 'checked="checked"' : ''} name="pageTarget" value="${item}"/>
		</c:forEach>
	</div>
	
	<div class="unit">
		<label>Content</label>
		<textarea class="editor" name="content" rows="10" cols="80" tools="simple">${page.content}</textarea>
	</div>
</div>
<div class="formBar">
	<ul>
		<li><div class="buttonActive"><div class="buttonContent"><button type="submit">Save</button></div></div></li>
		<li><div class="button"><div class="buttonContent"><button type="button" class="close">Close</button></div></div></li>
	</ul>
</div>


</form>