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

import br.com.fiap.HT.bean.Login;
import br.com.fiap.HT.dao.LoginDAO;
import br.com.fiap.HT.exception.DBException;
import br.com.fiap.HT.factory.DAOFactory;
import javax.servlet.http.HttpSession;
import br.com.fiap.HT.exception.EmailException;



@WebServlet("/login")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  private LoginDAO loginu;
  
  
  @Override
  public void init() throws ServletException {
    super.init();
    loginu = DAOFactory.getLoginDAO();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String acao = request.getParameter("acao");
    
   
  switch (acao) {
  case "listar":
    List<Login> lista = loginu.listar();
    request.setAttribute("logins", lista);
    request.getRequestDispatcher("lista-login.jsp").forward(request, response);
    break;
  case "abrir-form-edicao":
    int id = Integer.parseInt(request.getParameter("codigo"));
    Login login = loginu.buscar(id);
    request.setAttribute("login", login);
    request.getRequestDispatcher("edicao-login.jsp").forward(request, response);
  } 
}

  private void abrirFormEdicao(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("codigo"));
    Login login = loginu.buscar(id);
    request.setAttribute("login", login);
    request.getRequestDispatcher("edicao-login.jsp").forward(request, response);
  }

  private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<Login> lista = loginu.listar();
    request.setAttribute("logins", lista);
    request.getRequestDispatcher("lista-login.jsp").forward(request, response);
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
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    try {
      loginu.remover(codigo);
      request.setAttribute("msg", "Login removido!");
    } catch (DBException e) {
      e.printStackTrace();
      request.setAttribute("erro", "Erro ao atualizar");
    }
    listar(request,response);
  }

  private void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  try {
		  int cdLogin = Integer.parseInt(request.getParameter("cdLogin"));
  	  	  int cdUsuario = Integer.parseInt(request.getParameter("cdUsuario"));
  	  	  String email = request.getParameter("email");
  	  	  String password = request.getParameter("password");  	  	 
      
	        Login logins = new Login(cdLogin, cdUsuario, email, password);
	        loginu.atualizar(logins);
		    
		    request.setAttribute("msg", "Login atualizado!");
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
			int cdLogin = Integer.parseInt(request.getParameter("cdLogin"));
	    	  	int cdUsuario = Integer.parseInt(request.getParameter("cdUsuario"));
	    	  	String email = request.getParameter("email");
	    	  	String password = request.getParameter("password");  	  	 
	        
	        Login logins = new Login(cdLogin, cdUsuario, email, password);
	        loginu.cadastrar(logins);
		    
		    request.setAttribute("msg", "Login atualizado!");
		  } catch (DBException db) {
			  db.printStackTrace();
			  request.setAttribute("erro", "Erro ao cadastrar");
		  } catch (Exception e) {
			  e.printStackTrace();
			  request.setAttribute("erro", "Por favor, valide os dados");
		  }
	  request.getRequestDispatcher("login.jsp").forward(request, response);
  	}

	}


