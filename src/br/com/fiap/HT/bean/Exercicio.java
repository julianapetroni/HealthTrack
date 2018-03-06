package br.com.fiap.HT.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.Calendar;

/**
 * Classe Exercicio
 * Recebe os dados das atividades fisicas praticadas pelo usuario
 * @author julianapetroni
 * @version 1.0
 * 
 */
public class Exercicio implements Serializable{
	//Atributos de classe
	private int cdGym, cdUsuario, calorias;
	private String tipoExercicio, intensidade;
	Calendar dtExercicio, hrExercicio;
	

	/**
	 * Construtor padrao
	 */
		public Exercicio () {
			super();
		}

	/**
	 * Construtor
	 * @param data da atividade fisica
	 * @param hora da atividade fisica
	 * @param calorias gastas na atividade
	 * @param tipoExercicio praticado pelo usuario
	 * @param intensidade da atividade praticada
	 * @param codigo do exercicio cdGym
	 * @param codigo do usuario
	 */
		public Exercicio (int cdGym, int cdUsuario, Calendar dtExercicio, Calendar hrExercicio, String tipoExercicio, String intensidade, int calorias) {
			super();
			this.cdGym = cdGym;
			this.cdUsuario = cdUsuario;
			this.dtExercicio = dtExercicio;
			this.hrExercicio = hrExercicio;
			this.tipoExercicio = tipoExercicio;
			this.intensidade = intensidade;
			this.calorias = calorias;
		}
		
		// getters and setters	

	public int getCdGym() {
		return cdGym;
	}

	public void setCdGym(int cdGym) {
		this.cdGym = cdGym;
	}

	public int getCdUsuario() {
		return cdUsuario;
	}

	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}

	public int getCalorias() {
		return calorias;
	}

	public void setCalorias(int calorias) {
		this.calorias = calorias;
	}

	public String getTipoExercicio() {
		return tipoExercicio;
	}

	public void setTipoExercicio(String tipoExercicio) {
		this.tipoExercicio = tipoExercicio;
	}

	public String getIntensidade() {
		return intensidade;
	}

	public void setIntensidade(String intensidade) {
		this.intensidade = intensidade;
	}

	public Calendar getDtExercicio() {
		return dtExercicio;
	}

	public void setDtExercicio(Calendar dtExercicio) {
		this.dtExercicio = dtExercicio;
	}

	public Calendar getHrExercicio() {
		return hrExercicio;
	}

	public void setHrExercicio(Calendar hrExercicio) {
		this.hrExercicio = hrExercicio;
	}


		
		

}
