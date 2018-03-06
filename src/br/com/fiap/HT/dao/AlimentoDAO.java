package br.com.fiap.HT.dao;

	
	import java.util.List;
	import br.com.fiap.HT.bean.TipoAlimento;
	import br.com.fiap.HT.exception.DBException;

	public interface AlimentoDAO {
		
		//Cadastrar
		void cadastrar(TipoAlimento al) throws DBException;
		//Listar
		List<TipoAlimento> listar() ;
		// Remover 	 	
	    void remover(int cdAlimento) throws DBException;
		// Atualizar
	    void atualizar(TipoAlimento al) throws DBException;
	    // Buscar
	    TipoAlimento buscar (int id);
		}




	