package br.com.fiap.HT.bean;

import java.util.Calendar;


import br.com.fiap.HT.bean.Exercicio;
import br.com.fiap.HT.bean.Login;
import br.com.fiap.HT.bean.Refeicao;
import br.com.fiap.HT.bean.Cadastro;
import br.com.fiap.HT.bean.Dashboard;
import br.com.fiap.HT.bean.Peso;
import br.com.fiap.HT.dao.AlimentoDAO;
import br.com.fiap.HT.dao.ExercicioDAO;
import br.com.fiap.HT.dao.LoginDAO;
import br.com.fiap.HT.dao.PesoDAO;
import br.com.fiap.HT.dao.PressaoDAO;
import br.com.fiap.HT.dao.RefAlimDAO;
import br.com.fiap.HT.dao.RefeicaoDAO;
import br.com.fiap.HT.dao.impl.OracleAlimentoDAO;
import br.com.fiap.HT.dao.impl.OracleExercicioDAO;
import br.com.fiap.HT.dao.impl.OracleLoginDAO;
import br.com.fiap.HT.dao.impl.OraclePesoDAO;
import br.com.fiap.HT.dao.impl.OraclePressaoDAO;
import br.com.fiap.HT.dao.impl.OracleRefAlimDAO;
import br.com.fiap.HT.dao.impl.OracleRefeicaoDAO;
import br.com.fiap.HT.exception.DBException;



/*import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Scanner;*/

/**
 * Classe main
 * @author julianapetroni
 * @version 1.0
 */

public class Principal {


	private static int cdUsuario;
	private static int cdPeso;
	private static double pesou;
	private static double meta;
	private static Calendar dtPesagem;

	/**
	 * Acrescenta variaveis e objetos
	 * @param args para criacao dos atributos e objetos
	 * @throws DBException 
	 */
	   
	 
	public static void main (String[] args) throws DBException {
		// Instancia o DAO
		OraclePesoDAO pdao = new OraclePesoDAO();
		OraclePressaoDAO padao = new OraclePressaoDAO();
		OracleExercicioDAO exdao = new OracleExercicioDAO();
		OracleRefAlimDAO radao = new OracleRefAlimDAO();
		OracleRefeicaoDAO rfdao = new OracleRefeicaoDAO();
		OracleAlimentoDAO aldao = new OracleAlimentoDAO();
		OracleLoginDAO logdao = new OracleLoginDAO();

		// Instancia o Peso
		Peso peso = new Peso (cdPeso, cdUsuario, pesou, meta, dtPesagem);
		peso.setCdUsuario(1);
		peso.setPeso(62.00);
		peso.setMeta(52.00);
		peso.setDtPesagem(Calendar.getInstance());
			
		// Instancia a Pressao
		PressaoArt pressaoArt = new PressaoArt();
		pressaoArt.setCdUsuario(1);
		pressaoArt.setPressaoDiastolica(120);
		pressaoArt.setPressaoDiastolica(80);
		pressaoArt.setDtMedicaoPressao(Calendar.getInstance());
		pressaoArt.setSituacaoPressao("Normal");
		
		// Instancia o Exercicio
		Exercicio exercicio = new Exercicio();
		exercicio.setCdUsuario(1);
		exercicio.setDtExercicio(Calendar.getInstance());
		exercicio.setHrExercicio(Calendar.getInstance());
		exercicio.setTipoExercicio("Corrida");
		exercicio.setIntensidade("Alta");
		exercicio.setCalorias(1200);
		
		// Instancia a Refeicao/ALimento
		RefAlim refAlim = new RefAlim();
		refAlim.setCdUsuario(1);
		refAlim.setCdRefAlim(1); 
		refAlim.setCdRefeicao(1);	
		refAlim.setQtRefeicao(100);
		refAlim.setDsRefeicao("festa"); 
		
		// Instancia a Refeicao
		Refeicao refeicao = new Refeicao();
		refeicao.setCdUsuario(1);
		refeicao.setCdRefAlim(1);
		refeicao.setDsRefeicao("fruta"); 
		
		// Instancia o Alimento
		TipoAlimento tipoAlimento = new TipoAlimento();
		tipoAlimento.setCdUsuario(1);
		tipoAlimento.setCdRefAlim(1);
		tipoAlimento.setDsAlimento("banana");
		tipoAlimento.setDtAlimento(Calendar.getInstance());
		tipoAlimento.setCalorias(70);
		
		// Instancia o Login
		Login login = new Login();
		login.setCdUsuario(1);
		login.setEmail("julianampetroni@gmail.com");
		login.setPassword("Ju2017");
		
        
		
		//Cadastra no banco de dados
				pdao.cadastrar(peso);
				System.out.println("Peso cadastrado!");
				
				padao.cadastrar(pressaoArt);
				System.out.println("Pressao cadastrada!");
				
				exdao.cadastrar(exercicio);
				System.out.println("Exercicio cadastrado!");
				
				radao.cadastrar(refAlim);
				System.out.println("Refeicao/Alimento cadastrado!");
				
				rfdao.cadastrar(refeicao);
				System.out.println("Refeicao cadastrada!");
				
				aldao.cadastrar(tipoAlimento);
				System.out.println("Alimento cadastrado!");
				
				logdao.cadastrar(login);
				System.out.println("Login cadastrado!");
				
	}
}


		// ------------------------
		
		/*
		 * // Atributos de classe
		String nome, email, password, cemail, cpassword;
		char sexo, objetivo, situacao;
		int idade;
		double peso, altura, imc, meta = 49.0, faltam;
		Date dtNasc, today;
		int pressao;*/
		

		
		// Objetos
		/*
		Cadastro cd = new Cadastro();
		cd.setAltura (1.65);
		cd.setPeso (51.5);
		
		Dashboard ds = new Dashboard();
		ds.meta (49.0);
		ds.pressao(100, 80);
		ds.getNome();
		ds.getAltura();
		ds.getDataNasc();
				
		System.out.println("Faltam: " + ds.faltam(cd.getPeso(), ds.meta(meta)) + " Kg para atingir sua meta");
		System.out.println("IMC: " + ds.imc(51.5, 1.65));
		System.out.println("Idade: " + ds.idade(2017, 1981)+ " anos");
		
		Login lg = new Login();
		lg.getPassword();
		lg.getEmail();
		
		Exercicio ex = new Exercicio();
		
		Menu mn = new Menu();
		
		Peso kg = new Peso();
		kg.getPeso();
		System.out.println("Peso atual: "+ kg.getPeso());

			
		PressaoArt pa = new PressaoArt();
		pa.setPressao(100);
		
		
		
		Refeicao rf = new Refeicao();
		
		TipoAlimento ta = new TipoAlimento();
		
		
		//Scanner sc = new Scanner (System.in);
		//System.out.println("Preencha os seus dados no formulário anexo: ");
		//System.out.println(ds.altura);
		//System.out.println("Digite altura");
		//ds.altura = sc.nextFloat();
		//System.out.println(ds.altura);
		//sc.close();*/
	

