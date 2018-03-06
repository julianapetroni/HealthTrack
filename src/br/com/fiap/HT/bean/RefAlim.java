package br.com.fiap.HT.bean;

import java.io.Serializable;

/**
	 * Classe Refeicao
	 * Permite o controle da alimentacao diaria do usuario
	 * @author julianapetroni
	 * @version 1.0
	 */
	public class RefAlim implements Serializable {
		// Atributos de classe
		private int cdRefAlim, cdUsuario , cdAlimento, cdRefeicao , qtRefeicao; 
		private String dsRefeicao; 
		
		
		/**
		 *  Construtor padrao
		 */
		public RefAlim() {
			super();
		}
		
		/**
		 *  Construtor 
		 * @param data da ingestao
		 * @param calorias consumidas na refeicao
		 * @param tipoRefeicao consumida, i.e., cafe da manha, almoco, jantar, lanche leve ou fruta
		 * @param descricao da refeicao
		 */
		public RefAlim (int cdRefAlim, int cdUsuario , int cdAlimento, int cdRefeicao , int qtRefeicao , String dsRefeicao) {
			super();
			this.cdRefAlim = cdRefAlim;
			this.cdUsuario = cdUsuario;
			this.cdAlimento = cdAlimento; 
			this.cdRefeicao = cdRefeicao;
			this.qtRefeicao = qtRefeicao;
			this.dsRefeicao = dsRefeicao;
		}
		
		// Getters and setters

		public int getCdRefAlim() {
			return cdRefAlim;
		}

		public void setCdRefAlim(int cdRefAlim) {
			this.cdRefAlim = cdRefAlim;
		}

		public int getCdUsuario() {
			return cdUsuario;
		}

		public void setCdUsuario(int cdUsuario) {
			this.cdUsuario = cdUsuario;
		}

		public int getCdAlimento() {
			return cdAlimento;
		}

		public void setCdAlimento(int cdAlimento) {
			this.cdAlimento = cdAlimento;
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
	
	
	}

