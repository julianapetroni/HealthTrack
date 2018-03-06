package br.com.fiap.HT.bean;

import java.io.Serializable;
import java.util.Calendar;
import br.com.fiap.HT.bean.Refeicao;
import br.com.fiap.HT.bean.RefAlim;

/**
 * Classe TipoAlimento
 * Possibilita que o usuario insira seus alimentos de acordo com o tipo de refeicao consumida
 * @author julianapetroni
 * @version 1.0
 */
public class TipoAlimento implements Serializable{
	// Atributos de classe
	private String dsAlimento; // bebida, carboidrato, proteina, fruta
	private int cdAlimento, cdUsuario , cdRefAlim, calorias;
	Calendar dtAlimento;
	private int  cdRefeicao , qtRefeicao; 
	private String dsRefeicao; 
	 
	
	
	
	/**
	 *  Construtor padrao
	 */
	public TipoAlimento () {
		super();
	}
	
	/**
	 *  Construtor
	 * @param descricao do alimento: bebida, carboidrato, proteina, fruta
	 * @param codigo do alimento
	 * @param codigo da refeicao
	 * @param codigo do usuario
	 * @param codigo da refeicao/alimento 
	 * @param data do consumo
	 * @param calorias do alimento
	 * @param quantidade da refeicao
	 * @param codigo descricao do alimento
	 */
	public TipoAlimento (int cdAlimento, int cdUsuario , int cdRefeicao, int cdRefAlim, Calendar dtAlimento, int calorias, String dsAlimento, int qtRefeicao, String dsRefeicao) {
		super();
		this.cdAlimento = cdAlimento;
		this.cdUsuario = cdUsuario;
		this.cdRefeicao = cdRefeicao;
		this.cdRefAlim = cdRefAlim;
		this.dtAlimento = dtAlimento;
		this.calorias = calorias;
		this.dsAlimento = dsAlimento;
		this.qtRefeicao = qtRefeicao; 
		this.dsRefeicao = dsRefeicao;
	}
	
	
	
	
public int getCdRefeicao() {
		return cdRefeicao;
	}

	public void setCdRefeicao(int cdRefeicao) {
		this.cdRefeicao = cdRefeicao;
	}

	public int getQtRefeicao() {
		return qtRefeicao;
	}

	public void setQtRefeicao(int qtRefeicao) {
		this.qtRefeicao = qtRefeicao;
	}

	public String getDsRefeicao() {
		return dsRefeicao;
	}

	public void setDsRefeicao(String dsRefeicao) {
		this.dsRefeicao = dsRefeicao;
	}

	// getters and setters
	public String getDsAlimento() {
		return dsAlimento;
	}

	public void setDsAlimento(String dsAlimento) {
		this.dsAlimento = dsAlimento;
	}

	public int getCdAlimento() {
		return cdAlimento;
	}

	public void setCdAlimento(int cdAlimento) {
		this.cdAlimento = cdAlimento;
	}

	public int getCdUsuario() {
		return cdUsuario;
	}

	public void setCdUsuario(int cdUsuario) {
		this.cdUsuario = cdUsuario;
	}

	public int getCdRefAlim() {
		return cdRefAlim;
	}

	public void setCdRefAlim(int cdRefAlim) {
		this.cdRefAlim = cdRefAlim;
	}

	public Calendar getDtAlimento() {
		return dtAlimento;
	}

	public void setDtAlimento(Calendar dtAlimento) {
		this.dtAlimento = dtAlimento;
	}

	public int getCalorias() {
		return calorias;
	}

	public void setCalorias(int calorias) {
		this.calorias = calorias;
	}
	
	
}




