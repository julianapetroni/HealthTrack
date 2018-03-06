package br.com.fiap.HT.bean;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;
import br.com.fiap.HT.bean.Peso;

/**
 * Classe Dashboard
 * Mostra o resumo dos dados do usuario
 * @author julianapetroni
 * @version 1.0
 */
public class Dashboard extends Cadastro implements Serializable {
	// Atributos de classe
	private String nome;
	private char situacao;
	String objetivo; 
	private int pressao;
	private double pesou, altura, imc, meta, faltam, pad, pas;
	private byte idade;
	private Date dataNasc;
	private Date today;
	private int codigo;
	private Calendar dtPesagem;
	private int cdPeso;
	private int cdUsuario;
	
	/**
	 * Construtor padrao
	 */
	public Dashboard() {
		
	}
	
	/**
	 *  Construtor
	 * @param situacao do usuario: abaixo do peso, normal ou acima do peso
	 * @param objetivo do usuario: perder peso, manter ou crescer
	 * @param pressao: alta, normal ou baixa, calculada com base na pas e pad
	 * @param peso registrado pelo usuario
	 * @param altura do usuario
	 * @param imc calculado com base na altura e peso do usuario
	 * @param meta de peso do usuario: quanto quer pesar
	 * @param idade do usuario calculada com base data de nascimento
	 * @param faltam para chegar ao peso estimado pelo usuario
	 */
	public Dashboard (char situacao, String objetivo, int pressao, double pesou, double altura, double imc, double meta, byte idade, double faltam) {
		this.situacao = situacao;
		this.objetivo = objetivo;
		this.pressao = pressao; 
		this.pesou = pesou;
		this.altura = altura;
		this.imc = imc;
		this.meta = meta;
		this.idade = idade;
		this.faltam = faltam;		
	}


	/**
	 * 
	 * @param meta com o objetivo do usuario
	 * @return meta de peso 
	 */
	public double meta (double meta) {
		return meta;	
	}
	
	/**
	 *  Calcula quanto falta para alcancar a meta
	 * @param peso registrado pelo usuario
	 * @param meta do usuario
	 * @return diferenca de peso para atingir o objetivo
	 */
	public double faltam (double peso, double meta) {
		if (peso >= meta) {
			faltam = peso - meta;
		}else {
			faltam = meta - peso;
		}
		return faltam;
	}
	
	/**
	 * Calcula o imc do usuario com base em seu peso e altura
	 * @param peso registrado pelo usuario
	 * @param altura do usuario
	 * @return imc
	 */
	public double imc (double peso, double altura) {
		imc = peso / (altura*altura);
		if (imc<17) {
			System.out.println("Muito abaixo do peso");
		} else if (imc>=17 && imc<18.5) {
			System.out.println("Abaixo do peso");
		} else if (imc>=18.5 && imc<25) {
			System.out.println("Peso normal");
		} else if (imc>=25 && imc<30) {
			System.out.println("Obesidade I");
		} else if (imc>=35 && imc<40) {
			System.out.println("Obesidade II");
		} else {
			System.out.println("Obesidade III (mórbida)");
		}
		return imc;
	}
/**
 * 
 * @param pas para pressao sistolica
 * @param pad para pressao diastolica
 * @return pressao do usuario
 */
	public double pressao (double pas, double pad) {
		
		if (pas > 140 && pad > 90) {
			System.out.println("Pressao Alta");
		} else if (pas < 90 && pad < 60) {
			System.out.println("Pressao Baixa");
		} else {
			System.out.println("Pressao Normal");
		}
		return pressao;
	}

public String getNome() {
	return nome;
}

public void setNome(String nome) {
	this.nome = nome;
}

public char getSituacao() {
	return situacao;
}

public void setSituacao(char situacao) {
	this.situacao = situacao;
}

public String getObjetivo() {
	return objetivo;
}

public void setObjetivo(String objetivo) {
	this.objetivo = objetivo;
}

public int getPressao() {
	return pressao;
}

public void setPressao(int pressao) {
	this.pressao = pressao;
}

public double getPesou() {
	return pesou;
}

public void setPesou(double pesou) {
	this.pesou = pesou;
}

public double getAltura() {
	return altura;
}

public void setAltura(double altura) {
	this.altura = altura;
}

public double getImc() {
	return imc;
}

public void setImc(double imc) {
	this.imc = imc;
}

public double getMeta() {
	return meta;
}

public void setMeta(double meta) {
	this.meta = meta;
}

public double getFaltam() {
	return faltam;
}

public void setFaltam(double faltam) {
	this.faltam = faltam;
}

public double getPad() {
	return pad;
}

public void setPad(double pad) {
	this.pad = pad;
}

public double getPas() {
	return pas;
}

public void setPas(double pas) {
	this.pas = pas;
}

public byte getIdade() {
	return idade;
}

public void setIdade(byte idade) {
	this.idade = idade;
}

public Date getDataNasc() {
	return dataNasc;
}

public void setDataNasc(Date dataNasc) {
	this.dataNasc = dataNasc;
}

public Date getToday() {
	return today;
}

public void setToday(Date today) {
	this.today = today;
}

public int getCodigo() {
	return codigo;
}

public void setCodigo(int codigo) {
	this.codigo = codigo;
}

public Calendar getDtPesagem() {
	return dtPesagem;
}

public void setDtPesagem(Calendar dtPesagem) {
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

	}
