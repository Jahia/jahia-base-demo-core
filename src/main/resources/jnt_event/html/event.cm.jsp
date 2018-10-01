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
<fmt:formatDate dateStyle="long" value="${currentNode.properties['startDate'].time}" var="startDate"/>
<fmt:formatDate dateStyle="long" value="${currentNode.properties['endDate'].time}" var="endDate"/>
<div style="background: #fff; width: 100%; display: block; font-family: Helvetica Neue,Helvetica,Arial,sans-serif; font-size: 13px; line-height: 1.6; color: #333;">
  <h1 style="margin-top: 5px; text-shadow: none; font-weight: normal; font-family: Open Sans,Arial,sans-serif; font-size: 24px; line-height: 33px; color: #e74c3c; text-decoration: none;">  ${currentNode.properties['jcr:title'].string}</h1>
  <div>
    <ul style="padding-left: 5px; list-style: none; margin-left: -5px; margin-top: 0; margin-bottom: 10px; display: inline-flex; flex-direction: row; color: #555;">
        <c:if test="${not empty currentNode.properties['eventsType']}">
			<li style="padding-right: 5px; padding-left: 5px;  margin: 0 0 10px;"><span style="color: #fff; background-color: #337ab7; border: 1px solid #2e6da4; border-radius: 4px; padding: 3px 5px; font-size: 12px; line-height: 1.5;">${currentNode.properties['eventsType'].string}</span></li>
        </c:if>
      <li style="padding-right: 5px; padding-left: 5px;margin: 0 0 10px;"><b>${currentNode.properties['location'].string}</b></li>
	  <li style="padding-right: 5px; padding-left: 5px; margin: 0 0 10px;">${startDate} 
	   <c:if test="${not empty currentNode.properties['endDate']}">
		- ${endDate}
	   </c:if>
	  </li>
    </ul>
  </div>
  <div style="color: #555; margin: 0 0 10px;">
	${currentNode.properties['body'].string}
  </div>
</div>