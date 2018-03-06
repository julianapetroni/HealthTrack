package br.com.fiap.HT.bean;

import java.io.Serializable;

import java.util.Calendar;


/**
 * Classe Peso
 * Permite a inclusao dos pesos do usuario para controle da aproximacao de sua meta
 * @author julianapetroni
 * @version 1.0
 */
public class Peso implements Serializable{
	// Atributos de classe 
	
	private int cdPeso; // codigo do peso
	private int cdUsuario; // codigo do usuario
	private double pesou; // peso do usuario
	private double meta; // meta de peso do usuario
	private Calendar dtPesagem; // data da pesagem
	
	
	/**
	 *  Construtor padrao
	 * @param dtPesagem
	 * @param peso do usuario
	 * @param codigo do peso
	 * @param codigo do usuario
	 * 
	 */
	public Peso() {
		super();
	}

	
	/**
	 *  Construtor 
	 * @param cdPeso 
	 * @param cdUsuario 
	 * @param peso 
	 * @param código do peso
	 * @param código do usuário
	 * @param peso do usuario por ele cadastrado
	 * @param meta 
	 * @param meta de peso do usuario
	 * @param dtPesagem 
	 * @param data da pesagem
	 * @param  
	 * 
	 */
	public Peso(int cdPeso, int cdUsuario, double pesou, double meta, Calendar dtPesagem) {
		super();
		this.cdPeso = cdPeso;
		this.cdUsuario = cdUsuario;
		this.pesou = pesou;
		this.meta = meta;
		this.dtPesagem = dtPesagem;	
	}


	public int getCdPeso() {
		return cdPeso;
	}


	public void setCdPeso(int cdPeso) {
		this.cdPeso = cdPeso;
	}


	public int getCdUsuario() {
		return cdUsuario;
	}


	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}


	public double getPeso() {
		return pesou;
	}


	public void setPeso(double pesou) {
		this.pesou = pesou;
	}


	public double getMeta() {
		return meta;
	}


	public void setMeta(double meta) {
		this.meta = meta;
	}


	public Calendar getDtPesagem() {
		return dtPesagem;
	}


	public void setDtPesagem(Calendar dtPesagem) {
		this.dtPesagem = dtPesagem;
	}

	
}
