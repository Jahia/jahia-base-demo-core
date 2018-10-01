<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="ui" uri="http://www.jahia.org/tags/uiComponentsLib" %>
<%@ taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %>
<%@ taglib prefix="query" uri="http://www.jahia.org/tags/queryLib" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="s" uri="http://www.jahia.org/tags/search" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<c:set var="newsImage" value="${currentNode.properties['image']}"/>
<fmt:formatDate dateStyle="long" value="${currentNode.properties['date'].time}" var="newsDate"/>
<div style="background: #fff; width: 100%; display: block; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 13px; line-height: 1.6; color: #333;">
	<h1 style="font-size: 32px; font-weight: 200; margin: 0 0 20px; line-height: 45px; text-transform: uppercase; color: #555; font-family: Open Sans,Arial,sans-serif;">${currentNode.properties['jcr:title'].string}</h1>
        <c:if test="${not empty newsImage.node}">
            <img style="width: 100%; max-width: 840px;" src="<template:module node='${newsImage.node}' editable='false' view='hidden.contentURL' />" alt="">
        </c:if>
	<div style="padding: 30px;">
  		<p style="margin-left: -5px;	margin-top: 0; margin-bottom: 10px;	color: #555; font-style: italic; display: inline-block; padding-right: 5px; padding-left: 5px;">${newsDate}</p>
  		${currentNode.properties['desc'].string}
	</div>
</div>