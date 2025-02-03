
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>

<jcr:nodeProperty node="${currentNode}" name="j:node" var="reference"/>
<jcr:nodeProperty node="${currentNode}" name="j:alternateText" var="title"/>
<c:set var="node" value="${reference.node}"/>
<%-- display image if referenced image is available --%>
<c:if test="${not empty node}">
    <template:addCacheDependency node="${node}" />
    <c:url var="url" value="${node.url}" context="/"/>
    <img src="${url}" alt="${fn:escapeXml(not empty title.string ? title.string : currentNode.name)}" width="100%"
         height="100%"/> />
</c:if>
<c:if test="${empty node}">
    <c:if test="${not empty reference}">
        <template:addCacheDependency path="${reference.string}" />
    </c:if>
    <c:if test="${renderContext.editMode}">
        <fmt:message key="label.missingReference"/>
    </c:if>
</c:if>