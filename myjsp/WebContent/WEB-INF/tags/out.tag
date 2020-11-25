<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<jsp:doBody var="bodyText"></jsp:doBody>
<c:out value="${bodyText }" escapeXml="true"></c:out>