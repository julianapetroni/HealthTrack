package br.com.fiap.HT.dao;

import java.util.List;
import br.com.fiap.HT.bean.Peso;
import br.com.fiap.HT.exception.DBException;

public interface PesoDAO {
	
	//Cadastrar
	void cadastrar(Peso peso) throws DBException ;
	
	// Atualizar
    void atualizar(Peso peso) throws DBException;
	
	// Remover 	 	
    void remover(int cdPeso) throws DBException;
	
    // Buscar
    Peso buscar (int id);
    
  //Listar
  	List<Peso> listar() ;
}

	
	
	
	

