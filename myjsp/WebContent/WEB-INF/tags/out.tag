<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>

<h3>doBody 저장</h3>
<jsp:doBody var="bodyText" scope="page"></jsp:doBody>
<c:out value="${bodyText }" escapeXml="true"></c:out>