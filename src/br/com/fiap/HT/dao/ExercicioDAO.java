package br.com.fiap.HT.dao;

import java.util.List;
import br.com.fiap.HT.bean.Exercicio;
import br.com.fiap.HT.exception.DBException;;

public interface ExercicioDAO {
	//Cadastrar
	void cadastrar (Exercicio gym) throws DBException ;
	//Listar
	List<Exercicio> listar() ;
	// Remover 	 	
    void remover(int cdGym) throws DBException ;
	// Atualizar
    void atualizar(Exercicio gym) throws DBException ;
    //Buscar
    Exercicio buscar (int id);
}



