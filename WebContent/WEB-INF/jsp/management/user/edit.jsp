<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<form id="pagerForm" method="post" action="/management/book/edit/${book.id}">
	<input type="hidden" name="pageNum" value="1" />
</form>

<div class="pageContent">
<form method="post" action="<c:url value='/management/user/update?navTabId=userLiNav&callbackType=closeCurrent'/>" class="pageForm required-validate" onsubmit="return validateCallback(this,navTabAjaxDone);">
	<input type="hidden" name="id" value="${vo.id}"/>
	<div class="pageFormContent" layoutH="57">
		<p>
			<label>用户名: </label>
			<input type="text" name="username" value="${vo.username}" readonly="readonly"/>
		</p>
		<p>
			<label>密码: </label>
			<input type="text" name="password" value="${vo.password}" class="required alphanumeric" minlength="6" maxlength="20"/>
		</p>
		<p>
			<label>昵称: </label>
			<input type="text" name="nickname" value="${vo.nickname}" class="required" maxlength="30"/>
		</p>
		<p>
			<label>性别: </label>
			<select name="gender">
				<c:forEach var="item" items="${genderList}">
				<option value="${item}" ${item eq vo.gender ? 'selected="selected"' : ''}>${item.name}</option>
				</c:forEach>
			</select>
		</p>
		<p>
			<label>Email: </label>
			<input type="text" name="email" value="${vo.email}" class="required email" maxlength="100"/>
		</p>
		<p>
			<label>电话: </label>
			<input type="text" name="phone" value="${vo.phone}" maxlength="30"/>
		</p>
		<p>
			<label>出生日期: </label>
			<input type="text" name="birthDate" class="date" readonly="readonly" value="<fmt:formatDate value='${vo.birthDate}' pattern='yyyy-MM-dd'/>"/>
			<a href="javascript:;" class="inputDateButton">选择</a>
		</p>
		<p>
			<label>创建时间: </label>
			<fmt:formatDate value="${vo.insertDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</p>
		<p>
			<label>修改时间: </label>
			<fmt:formatDate value="${vo.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
		</p>

	</div>

	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
		</ul>
	</div>
</form>
</div>