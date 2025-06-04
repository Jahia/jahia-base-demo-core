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
<template:addResources type="css" resources="cm.css" />
<fmt:formatDate dateStyle="long" value="${currentNode.properties['startDate'].time}" var="startDate"/>
<fmt:formatDate dateStyle="long" value="${currentNode.properties['endDate'].time}" var="endDate"/>
<event class="eventPreview">
  <h1>${fn:escapeXml(currentNode.properties['jcr:title'].string)}</h1>
  <div>
    <ul>
        <c:if test="${not empty currentNode.properties['eventsType']}">
			<li><span>${fn:escapeXml(currentNode.properties['eventsType'].string)}</span></li>
        </c:if>
      <li><b>${fn:escapeXml(currentNode.properties['location'].string)}</b></li>
	  <li>${fn:escapeXml(startDate)} 
	   <c:if test="${not empty currentNode.properties['endDate']}">
		- ${fn:escapeXml(endDate)}
	   </c:if>
	  </li>
    </ul>
  </div>
  <div>
	${currentNode.properties['body'].string}
  </div>
</event>
