<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="title" fragment="true"%>

${title}

<hr />

<jsp:invoke fragment="title"></jsp:invoke>

<hr />

<jsp:doBody/>