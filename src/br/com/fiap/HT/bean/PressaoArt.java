package br.com.fiap.HT.bean;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;

public class PressaoArt implements Serializable{
	// Atributos de classe
	private int cdPressaoArt, cdUsuario; // codigo pressao arterial e codigo do usuario
	private int pressaoSistolica, pressaoDiastolica; //pressao sistolica e diastolica
	private Calendar dtMedicaoPressao;
	private String situacaoPressao;
	
	
	/**
	 *  Construtor padrao
	 */
	public PressaoArt() {
		super();
	}
	
	/**
	 *  Construtor 
	 * @param dtMedicaoPressao 
	 * @param pressao medida calculada com base na pas e pad
	 * @param pas medida pelo usuario
	 * @param pad medida pelo usuario
	 * @param situacao da pressao do usuario: normal, alta ou baixa, calculada de acordo com a pas e pad
	 * @param data da medicao
	 */
		public PressaoArt(int cdPressaoArt, int cdUsuario, int pressaoSistolica, int pressaoDiastolica, Calendar dtMedicaoPressao, String situacaoPressao) {
			super();
			this.cdPressaoArt = cdPressaoArt;
			this.cdUsuario = cdUsuario;
			this.pressaoSistolica = pressaoSistolica;
			this.pressaoDiastolica = pressaoDiastolica;
			this.dtMedicaoPressao = dtMedicaoPressao;
			this.situacaoPressao = situacaoPressao;
		}

	// getters and setters	
		
	public int getCdPressaoArt() {
		return cdPressaoArt;
	}

	public void setCdPressaoArt(int cdPressaoArt) {
		this.cdPressaoArt = cdPressaoArt;
	}

	public int getCdUsuario() {
		return cdUsuario;
	}

	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}

	public int getPressaoSistolica() {
		return pressaoSistolica;
	}

	public void setPressaoSistolica(int pressaoSistolica) {
		this.pressaoSistolica = pressaoSistolica;
	}

	public int getPressaoDiastolica() {
		return pressaoDiastolica;
	}

	public void setPressaoDiastolica(int i) {
		this.pressaoDiastolica = i;
	}

	public String getSituacaoPressao() {
		return situacaoPressao;
	}

	public void setSituacaoPressao(String situacaoPressao) {
		this.situacaoPressao = situacaoPressao;
	}

	public Calendar getDtMedicaoPressao() {
		return dtMedicaoPressao;
	}

	public void setDtMedicaoPressao (Calendar dtMedicaoPressao) {
		this.dtMedicaoPressao = dtMedicaoPressao;
	}

	
	
		
}
