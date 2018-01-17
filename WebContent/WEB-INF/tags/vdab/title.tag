<%@tag description='title (h1) onderdeel van pagina' pageEncoding='UTF-8'%>
<%@attribute name='title' required='true' type='java.lang.String'%>
<%@attribute name='image' required='true' type='java.lang.String'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<h1>
	<img src='images/${image}.png' alt='${image}'>CULTUURHUIS - ${title}
</h1>
