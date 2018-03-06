package br.com.fiap.HT.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class HealthTrackDbManager {

	public static Connection obterConexao() {
		Connection conexao = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conexao = DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL", "rm78489", "100881");
		
		} catch (Exception e) {
			//System.err.println("O Driver JDBC não foi encontrado!");
			e.printStackTrace();
		}
		return conexao;
	}
}
