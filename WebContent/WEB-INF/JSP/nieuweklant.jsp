<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@taglib prefix='vdab' uri='http://vdab.be/tags'%>
<!doctype html>
<html lang='nl'>
<c:set var='titel' value='Nieuwe Klant' />
<vdab:head title='${titel}' />
<body>
	<vdab:header title='${titel}' image='nieuweklant' />
	<section>
		<form id='nieuweklantform'>
			<vdab:textinputfield label='Voornaam' name='voornaam' value='${voornaam}' />
			<vdab:textinputfield label='Familienaam' name='familienaam' value='${familienaam}' />
			<vdab:textinputfield label='Straat' name='straat' value='${straat}' />
			<vdab:textinputfield label='Huisnr.' name='huisnr' value='${huisnr}' />
			<vdab:textinputfield label='Postcode' name='postcode' value='${postcode}' />
			<vdab:textinputfield label='Gemeente' name='gemeente' value='${gemeente}' />
			<vdab:textinputfield label='Gebruikersnaam' name='gebruikersnaam' value='${gebruikersnaam}' />
			<vdab:passwordinputfield label='Paswoord' name='paswoord' value='' />
			<vdab:passwordinputfield label='Herhaal paswoord' name='paswoord2' value='' />
			<p>
				<input id='nieuweklantknop' type='submit' value='OK' formmethod='post' formaction='nieuweklant.htm' />
			</p>
		</form>
		<ul>
			<c:forEach var='fout' items='${fouten}'>
				<li>${fout}</li>
			</c:forEach>
		</ul>
	</section>
	<script>
		document.getElementById('nieuweklantform').onsubmit = function() {
			if (!navigator.cookieEnabled) {
				alert("Dit werkt enkel als cookies aanstaan");
				return false;
			}
			document.getElementById('nieuweklantknop').disabled = true;
		};
	</script>
</body>
</html>
