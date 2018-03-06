package br.com.fiap.HT.bean;

import java.io.Serializable;

/**
 * Classe Menu
 * Permite acessar os dados cadastrados pelo usuario
 * @author julianapetroni
 * @version 1.0
 * 
 */
public class Menu implements Serializable{
	// Atributos de classe
	private char mDados, mAlterarDados, mAlterarSenha, mPeso, mPressao, mExercicio, mRefeicao;

	/**
	 *  Construtor padrao
	 */
	public Menu() {
		
	}
	
	/**
	 *  Construtor
	 * @param mDados para consultar dados
	 * @param mAlterarDados para alterar dados
	 * @param mAlterarSenha para alterar a senha
	 * @param mPeso para alterar o peso
	 * @param mPressao para altera a pressao
	 * @param mExercicio para adicionar o exercicio
	 * @param mRefeicao para adicionar a refeicao
	 */
	public Menu (char mDados, char mAlterarDados, char mAlterarSenha, char mPeso, char mPressao, char mExercicio, char mRefeicao) {
		this.mDados = mDados;
		this.mAlterarDados = mAlterarDados;
		this.mAlterarSenha = mAlterarSenha;
		this.mPeso = mPeso;
		this.mPressao = mPressao;
		this.mExercicio = mExercicio;
		this.mRefeicao = mRefeicao;
	}
	
}
