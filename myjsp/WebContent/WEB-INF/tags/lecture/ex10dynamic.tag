<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="attr" %>
<%@ attribute name="attr0" %>
${attr.attr1 }
<br />
${attr["attr2"] }
<br />

<ul>
<c:forEach items="${attr }" var="entry">
	<li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul>
