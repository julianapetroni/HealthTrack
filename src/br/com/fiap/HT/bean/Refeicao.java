package br.com.fiap.HT.bean;

import java.io.Serializable;

public class Refeicao implements Serializable {
		// Atributos de classe
		private int cdRefeicao, cdUsuario , cdRefAlim; 
		private String dsRefeicao; 
		
		
		/**
		 *  Construtor padrao
		 */
		public Refeicao() {
			super();
		}
		
		/**
		 *  Construtor 
		 * @param codigo da refeicao
		 * @param codigo do usuario
		 * @param codigo da refeicao/alimento
		 * @param descricao da refeicao, i.e., cafe da manha, almoco, jantar, lanche leve ou fruta
		 */
		public Refeicao (int cdRefeicao, int cdUsuario , int cdRefAlim ,  String dsRefeicao) {
			super();
			this.cdRefeicao = cdRefeicao;
			this.cdUsuario = cdUsuario;
			this.cdRefAlim = cdRefAlim; 
			this.dsRefeicao = dsRefeicao;
		}
		// Getters and setters
		public int getCdRefeicao() {
			return cdRefeicao;
		}

		public void setCdRefeicao(int cdRefeicao) {
			this.cdRefeicao = cdRefeicao;
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

		public String getDsRefeicao() {
			return dsRefeicao;
		}

		public void setDsRefeicao(String dsRefeicao) {
			this.dsRefeicao = dsRefeicao;
		}
		
	

			
	
	}

