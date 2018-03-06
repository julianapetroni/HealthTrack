package br.com.fiap.HT.bean;

import java.io.Serializable;


/**
 * Classe Login
 * Permite que o usuario acesse a sua conta
 * @author julianapetroni
 * @version 1.0
 */

public class Login extends Cadastro implements Serializable{
	
	// Atributos de classe
	private String email, password;
	private int cdUsuario; // codigo do usuario
	private int cdLogin; // codigo do usuario
	
	/**
	 * Construtor padrao
	 */
	public Login() {
		super();
	}
	
	/**
	 * Construtor
	 * @param email cadastrado pelo usuario para login
	 * @param password cadastrada pelo usuario para login
	 */
	public Login(int cdLogin, int cdUsuario,String email, String password) {
		super();
		this.cdLogin = cdLogin;
		this.cdUsuario = cdUsuario;
		this.email = email;
		this.password = password;
	}

	
	// getters and setters
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCdUsuario() {
		return cdUsuario;
	}

	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}

	public int getCdLogin() {
		return cdLogin;
	}

	public void setCdLogin(int cdLogin) {
		this.cdLogin = cdLogin;
	}

	}
