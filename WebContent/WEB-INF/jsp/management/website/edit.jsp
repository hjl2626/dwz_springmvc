<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%><%@ include file="/include.inc.jsp"%>
<h2 class="contentTitle">网站装修</h2>

<form action="/management/website/update" method="post" class='required-validate pageForm' onsubmit="return validateCallback(this, navTabAjaxDone);">
<input type="hidden" name="id" value="${website.id}"/>
<c:choose>
<c:when test="${!empty website.template}">
	<input type="hidden" name="template" value="${website.template}" class="required"/>
	<input type="hidden" name="layout" value="${website.layout}" class="required"/>
	<input type="hidden" name="theme" value="${website.theme}" class="required"/>
</c:when>
<c:otherwise>
	<input type="hidden" name="template" value="${defaultTemplate.name}" class="required"/>
	<input type="hidden" name="layout" value="${defaultTemplate.defaultLayout.name}" class="required"/>
	<input type="hidden" name="theme" value="${defaultTemplate.defaultTheme.name}" class="required"/>
</c:otherwise>
</c:choose>

<div class="pageFormContent" layoutH="94">
	<fieldset class="nowrap">
		<legend>首页设置</legend>
		<dl>
			<dt>Title</dt>
			<dd><input type="text" name="title" value="${website.title}" class="required" maxlength="100" size="60" /></dd>
		</dl>
		<dl>
			<dt>Meta Keywords</dt>
			<dd><textarea name="metaKeywords" cols="80" maxlength="200">${website.metaKeywords}</textarea></dd>
		</dl>
		<dl>
			<dt>Meta Description</dt>
			<dd><textarea name="metaDescription" cols="80" maxlength="200">${website.metaDescription}</textarea></dd>
		</dl>
	</fieldset>

	<fieldset class="nowrap">
		<legend>主题风格设置</legend>
		
		<div id="site-themeList" class="site-themeList">
		
		<c:forEach var="template" items="${templates}">
            <div class="site-theme ${template.name eq website.template ? 'themeFocus' : ''}" t-template="${template.name}" pre-pic-base="<c:out value='${template.prePicBase}'/>" preview-url="<c:url value='/management/website/preview/${template.name}'/>">
                <div class="smPic"><img src="<c:url value='${template.defaultSmPicUrl}' />" alt="${template.name}" /></div>
                <ul class="site-themeLayout">
                <c:forEach var="layout" items="${template.layouts}" varStatus="s">
                    <li t-layout="${layout.name}" class="${layout.name} ${template.name eq website.template and layout.name eq website.layout ? 'down' : ''}">
                        <a href="#template_layout">${s.index}</a>
                    </li>
                </c:forEach>
                </ul>
                <dl>
                    <dt>
                        <a href="<c:url value='/management/website/preview/${template.name}' />" target="dialog" mask="true" width="680" height="480" title="${template.label}主题风格预览">View</a>
                    </dt>
                    <dd>
                        <ul>
                       	<c:forEach var="theme" items="${template.themes}" varStatus="s">
		                    <li t-theme="${theme.name}" class="${theme.name} ${template.name eq website.template and theme.name eq website.theme ? 'down' : ''}" style="background:${theme.css}">
		                        <a href="#template_theme">${theme.name}</a>
		                    </li>
		                </c:forEach>
                        </ul>
                    </dd>
                </dl>
            </div>
        </c:forEach>
        
		</div>
	</fieldset>

</div>
<div class="formBar">
	<ul>
		<li><div class="buttonActive"><div class="buttonContent"><button type="submit">提交</button></div></div></li>
		<li><div class="button"><div class="buttonContent"><button type="button" class="close">关闭</button></div></div></li>
		<li><a class="button" href="<c:url value='/'/>" target="website"><span>网站预览</span></a></li>
	</ul>
</div>


</form>