package br.com.fiap.HT.bean;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/**
 * Classe main
 * @author julianapetroni
 * @version 1.0
 */
public class Cadastro extends Principal implements Serializable{
	// Atributos de classe
	private String nome, email, password;
	private String sexo;
	private byte idade;
	private int cdUsuario;
	private double altura;
	Date dataNasc;
	private Calendar dtNascimento;
	
	
	/**
	 *  Construtor padrao
	 *  
	 */
	public Cadastro() {
		super();
	}
	
	/**
	 * Construtor
	 * @param nome do usuario
	 * @param email de cadastro para acesso ao site
	 * @param password de cadastro para acesso ao site
	 * @param sexo do usuario
	 * @param idade do usuario calculada pelo ano de nascimento
	 * @param altura do usuario
	 * @param dataNasc do usuario
	 * 
	 */
	  public Cadastro (int cdUsuario, String nome, String email, String password, Calendar dtNascimento, String sexo, byte altura) {
		  super();
		this.cdUsuario = cdUsuario;
		this.nome = nome;
		this.email = email;
		this.password = password;
		this.dtNascimento = dtNascimento;
		this.sexo = sexo;
		this.altura = altura;
	  }

	
	

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

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

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public byte getIdade() {
		return idade;
	}

	public void setIdade(byte idade) {
		this.idade = idade;
	}

	public int getCdUsuario() {
		return cdUsuario;
	}

	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}
}
