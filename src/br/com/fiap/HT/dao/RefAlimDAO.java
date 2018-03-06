package br.com.fiap.HT.dao;

	import java.util.List;
	import br.com.fiap.HT.bean.RefAlim;
	import br.com.fiap.HT.exception.DBException;;

    

	public interface RefAlimDAO {
		
	//Cadastrar
		public void cadastrar(RefAlim refAlim) throws DBException ;
	//Listar
		List<RefAlim> listar() ;
	// Remover 	 	
	    void remover(int cdRefAlim) throws DBException ;
	// Atualizar
	    void atualizar(RefAlim refAlim) throws DBException ;
	// Buscar
	    RefAlim buscar (int id);
	}



