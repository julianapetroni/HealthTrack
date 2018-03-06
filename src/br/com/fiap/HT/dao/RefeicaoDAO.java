package br.com.fiap.HT.dao;

	
	import java.util.List;
	import br.com.fiap.HT.bean.Refeicao;
	import br.com.fiap.HT.exception.DBException;

  
	public interface RefeicaoDAO {
		//Cadastrar
		void cadastrar(Refeicao refeicao) throws DBException ;
		//Listar
		List<Refeicao> listar();
		// Remover 	 	
	      void remover(int cdRefeicao) throws DBException ;
		// Atualizar
	      void atualizar(Refeicao refeicao) throws DBException ;
	    //Buscar
	      Refeicao buscar(int id);
	}



