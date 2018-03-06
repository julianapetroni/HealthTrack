package br.com.fiap.HT.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.com.fiap.HT.bean.TipoAlimento;
import br.com.fiap.HT.dao.AlimentoDAO;
import br.com.fiap.HT.exception.DBException;
import br.com.fiap.HT.factory.DAOFactory;


@WebServlet("/alimentos")
public class AlimentosServlet extends HttpServlet {

  private static final long serialVersionUID = 1L;
  
  private AlimentoDAO aldao;

  @Override
  public void init() throws ServletException {
    super.init();
    aldao = DAOFactory.getAlimentoDAO();
  }
  
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String acao = request.getParameter("acao");
    
   
  switch (acao) {
  case "listar":
    List<TipoAlimento> lista = aldao.listar();
    request.setAttribute("alimentos", lista);
    request.getRequestDispatcher("lista-alimento.jsp").forward(request, response);
    break;
  case "abrir-form-edicao":
    int id = Integer.parseInt(request.getParameter("cdAlimento"));
    TipoAlimento alimento = aldao.buscar(id);
    request.setAttribute("alimento", alimento);
    request.getRequestDispatcher("edicao-alimento.jsp").forward(request, response);
  } 
}
  private void abrirFormEdicao(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    int id = Integer.parseInt(request.getParameter("cdAlimento"));
	    TipoAlimento alimento = aldao.buscar(id);
	    request.setAttribute("alimento", alimento);
	    request.getRequestDispatcher("edicao-alimento.jsp").forward(request, response);
	  }

	  private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    List<TipoAlimento> lista = aldao.listar();
	    request.setAttribute("alimentos", lista);
	    request.getRequestDispatcher("lista-alimento.jsp").forward(request, response);
	  }

	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {

	    String acao = request.getParameter("acao");
	    
	    switch (acao) {
	    case "cadastrar":
	      cadastrar(request, response);
	      break;
	    case "editar":
	      editar(request,response);
	      break;
	    case "excluir":
	      excluir(request, response);
	      break;
	    }
	  }

	  private void excluir(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	    int cdAlimento = Integer.parseInt(request.getParameter("cdAlimnento"));
	    try {
	      aldao.remover(cdAlimento);
	      request.setAttribute("msg", "Alimento removido!");
	    } catch (DBException e) {
	      e.printStackTrace();
	      request.setAttribute("erro", "Erro ao atualizar");
	    }
	    listar(request,response);
	  }

	  private void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  try {
			    int cdAlimento = Integer.parseInt(request.getParameter("cdAlimento"));
		    	  	int cdUsuario = Integer.parseInt(request.getParameter("cdUsuario"));
		    	  	int cdRefeicao = Integer.parseInt(request.getParameter("cdRefeicao"));
		    	  	int cdRefAlim = Integer.parseInt(request.getParameter("cdRefAlim"));
		    	  	SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");	    	  			
		    	  	Calendar dtAlimento = Calendar.getInstance();
		        dtAlimento.setTime(format.parse(request.getParameter("dtAlimento"))); 
		        int calorias = Integer.parseInt(request.getParameter("calorias"));
		        String dsAlimento = request.getParameter("dsAlimento");
		        int qtRefeicao = Integer.parseInt(request.getParameter("qtRefeicao"));
		        String dsRefeicao = request.getParameter("dsRefeicao");
       
		        
		        TipoAlimento alimento = new TipoAlimento (cdAlimento, cdUsuario , cdRefeicao, cdRefAlim, dtAlimento, calorias, dsAlimento, qtRefeicao, dsRefeicao);
		        aldao.atualizar(alimento);
			    
			    request.setAttribute("msg", "Alimento atualizado!");
			  }catch (DBException db) {
				  db.printStackTrace();
				  request.setAttribute("erro", "Erro ao atualizar");
			  } catch (Exception e) {
				  e.printStackTrace();
				  request.setAttribute("erro", "Por favor, valide os dados");
			  }
		  listar(request,response);
	  }

	  private void cadastrar(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		  try {
			int cdAlimento = Integer.parseInt(request.getParameter("cdAlimento"));
	    	  	int cdUsuario = Integer.parseInt(request.getParameter("cdUsuario"));
	    	  	int cdRefeicao = Integer.parseInt(request.getParameter("cdRefeicao"));
	    	  	int cdRefAlim = Integer.parseInt(request.getParameter("cdRefAlim"));
	    	  	SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");	    	  			
	    	  	Calendar dtAlimento = Calendar.getInstance();
	        dtAlimento.setTime(format.parse(request.getParameter("dtAlimento"))); 
	        int calorias = Integer.parseInt(request.getParameter("calorias"));
	        String dsAlimento = request.getParameter("dsAlimento");
	        int qtRefeicao = Integer.parseInt(request.getParameter("qtRefeicao"));
	        String dsRefeicao = request.getParameter("dsRefeicao");
 
	        
	        TipoAlimento alimento = new TipoAlimento (cdAlimento, cdUsuario , cdRefeicao, cdRefAlim, dtAlimento, calorias, dsAlimento, qtRefeicao, dsRefeicao);
	        aldao.cadastrar(alimento);
	
			    request.setAttribute("msg", "Alimento atualizado!");
			  } catch (DBException db) {
				  db.printStackTrace();
				  request.setAttribute("erro", "Erro ao cadastrar");
			  } catch (Exception e) {
				  e.printStackTrace();
				  request.setAttribute("erro", "Por favor, valide os dados");
			  }
		  request.getRequestDispatcher("alimentos.jsp").forward(request, response);
	  	}

		}


