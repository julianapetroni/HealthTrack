package br.com.fiap.HT.dao;


	import java.sql.Connection;
	import java.util.List;
	import br.com.fiap.HT.bean.Login;
	import br.com.fiap.HT.exception.DBException;;


	public interface LoginDAO {
		
		//Cadastrar
		void cadastrar(Login loginu) throws DBException ;
	    //Listar
		List<Login> listar();
		// Remover 	 	
	    void remover(int cdLogin) throws DBException ;
		// Atualizar
	    void atualizar(Login loginu) throws DBException ;
	    //Buscar
	    Login buscar (int id);
	}
