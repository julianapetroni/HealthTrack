package br.com.fiap.HT.dao;

import java.util.List;
import br.com.fiap.HT.bean.PressaoArt;
import br.com.fiap.HT.exception.DBException;

	public interface PressaoDAO{
		
	//Cadastrar
	void cadastrar(PressaoArt pressao) throws DBException;
	//Listar
	List<PressaoArt> listar() ;
	// Remover 	 	
      void remover(int cdPressaoArt) throws DBException;
	// Atualizar
      void atualizar(PressaoArt pressao) throws DBException;
	// Buscar
      PressaoArt buscar (int id);
	}
