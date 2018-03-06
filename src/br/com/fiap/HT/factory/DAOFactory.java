package br.com.fiap.HT.factory;

	import br.com.fiap.HT.dao.LoginDAO;
	import br.com.fiap.HT.dao.impl.OracleLoginDAO;
	import br.com.fiap.HT.dao.CadastroDAO;
	import br.com.fiap.HT.dao.impl.OracleCadastroDAO;
	import br.com.fiap.HT.dao.AlimentoDAO;
	import br.com.fiap.HT.dao.impl.OracleAlimentoDAO;
	import br.com.fiap.HT.dao.ExercicioDAO;
	import br.com.fiap.HT.dao.impl.OracleExercicioDAO;
	import br.com.fiap.HT.dao.PesoDAO;
	import br.com.fiap.HT.dao.impl.OraclePesoDAO;
	import br.com.fiap.HT.dao.PressaoDAO;
	import br.com.fiap.HT.dao.impl.OraclePressaoDAO;
	import br.com.fiap.HT.dao.RefAlimDAO;
	import br.com.fiap.HT.dao.impl.OracleRefAlimDAO;
	import br.com.fiap.HT.dao.RefeicaoDAO;
	import br.com.fiap.HT.dao.impl.OracleRefeicaoDAO;

	public class DAOFactory {

	  public static LoginDAO getLoginDAO() {
	    return new OracleLoginDAO();
	  }
	  
	  public static AlimentoDAO getAlimentoDAO() {
		    return new OracleAlimentoDAO();
		  }
	  
	  public static ExercicioDAO getExercicioDAO() {
		    return new OracleExercicioDAO();
		  }
	  
	  public static PesoDAO getPesoDAO() {
		    return new OraclePesoDAO();
		  }
	  
	  public static PressaoDAO getPressaoDAO() {
		    return new OraclePressaoDAO();
		  }
	  
	  public static RefAlimDAO getRefAlimDAO() {
		    return new OracleRefAlimDAO();
		  }
	  
	  public static RefeicaoDAO getRefeicaoDAO() {
		    return new OracleRefeicaoDAO();
		  }

	public static CadastroDAO getCadastroDAO() {
		// TODO Auto-generated method stub
			return new OracleCadastroDAO();
	}
	  
	}
