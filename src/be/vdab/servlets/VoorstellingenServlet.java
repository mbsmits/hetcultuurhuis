package be.vdab.servlets;

import javax.servlet.annotation.WebServlet;

import be.vdab.repositories.RepositoryException;

@WebServlet(urlPatterns = "/voorstellingen.htm", name = "voorstellingenservlet")
public class VoorstellingenServlet extends CultuurHuisServlet {
	
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/WEB-INF/JSP/voorstellingen.jsp";
	
	@Override
	void doGet(CultuurHuisGetRequest request) {
		request.setGenres(genreRepository);
		try {
			request.setGenreById(genreRepository);
			request.setVoorstellingenByGenreId(voorstellingRepository);
		} catch (NumberFormatException | RepositoryException ex) {
		}
	}
	
	@Override
	String getView() {
		return VIEW;
	}
}
