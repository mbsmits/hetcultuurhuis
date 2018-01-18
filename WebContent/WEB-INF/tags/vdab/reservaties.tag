<%@tag description='text field onderdeel van een form' pageEncoding='UTF-8'%>
<%@attribute name='titel' required='true' type='java.lang.String'%>
<%@attribute name='reservaties' required='true' type='java.util.SortedSet'%>
<%@attribute name='verwijderbaar' required='true' type='java.lang.Boolean'%>
<%@attribute name='mislukt' required='true' type='java.lang.Boolean'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<%@taglib prefix='vdab' uri='http://vdab.be/tags'%>
<section>
	${titel}:
	<table>
		<tr>
			<th>Datum</th>
			<th>Title</th>
			<th>Uitvoerders</th>
			<th>Prijs</th>
			<th>Plaatsen</th>
			<c:if test='${verwijderbaar}'>
				<th><input type='submit' value='Verwijderen' /></th>
			</c:if>
			<c:if test='${mislukt}'>
				<th>Vrije plaatsen</th>
			</c:if>
		</tr>
		<c:forEach var='reservatie' items='${reservaties}'>
			<tr>
				<td><vdab:datum value='${reservatie.voorstelling.utilDatum}' /></td>
				<td><c:out value='${reservatie.voorstelling.titel}' /></td>
				<td><c:out value='${reservatie.voorstelling.uitvoerders}' /></td>
				<td><vdab:bedrag value='${reservatie.voorstelling.prijs}' /></td>
				<td>${reservatie.plaatsen}</td>
				<c:if test='${verwijderbaar}'>
					<td><input type='checkbox' /></td>
				</c:if>
				<c:if test='${mislukt}'>
					<td>${reservatie.voorstelling.vrijePlaatsen}</td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
</section>