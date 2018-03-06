package br.com.fiap.HT.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.fiap.HT.bean.Login;
import br.com.fiap.HT.bean.Refeicao;
import br.com.fiap.HT.dao.LoginDAO;
import br.com.fiap.HT.exception.DBException;
import br.com.fiap.HT.jdbc.HealthTrackDbManager;
import br.com.fiap.HT.singleton.ConnectionManager;


public class OracleLoginDAO implements LoginDAO{
	
	private Connection conexao;
	
	@Override
	//Cadastrar
	public void cadastrar(Login loginu) throws DBException {
		PreparedStatement stmt = null;

		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO T_SHT_PESO(CD_LOGIN, CD_US, DS_EMAIL, DS_PASSWORD) VALUES (SQ_SPESO.NEXTVAL, ?, ?, ?)";
			stmt = conexao.prepareStatement(sql);
			stmt.setInt(1, loginu.getCdUsuario());
			stmt.setString(2, loginu.getEmail());
			stmt.setString(3, loginu.getPassword());
			

			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DBException("Erro ao cadastrar.");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
				
	      @Override
		  // Atualizar
	      public void atualizar(Login loginu) throws DBException{
			PreparedStatement stmt = null;

			try {
				conexao = ConnectionManager.getInstance().getConnection();
				String sql = "UPDATE T_SHT_LOGIN SET CD_US = ?, DS_EMAIL = ?, DS_PASSWORD = ? WHERE CD_LOGIN = ?";
				stmt = conexao.prepareStatement(sql);
				stmt.setInt(1, loginu.getCdLogin());
				stmt.setInt(2, loginu.getCdUsuario());
				stmt.setString(3, loginu.getEmail());
				stmt.setString(4, loginu.getPassword());
				

				stmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DBException("Erro ao atualizar.");
			} finally {
				try {
					stmt.close();
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	      
	      @Override
	  	// Remover 	 	
	        public void remover(int cdLogin) throws DBException{
	  		PreparedStatement stmt = null;

	  		try {
	  			conexao = ConnectionManager.getInstance().getConnection();
	  			String sql = "DELETE FROM T_SHT_LOGIN WHERE CD_LOGIN = ?";
	  			stmt = conexao.prepareStatement(sql);
	  			stmt.setInt(1, cdLogin);
	  			stmt.executeUpdate();
	  		} catch (SQLException e) {
	  			e.printStackTrace();
	  			throw new DBException("Erro ao remover.");
	  		} finally {
	  			try {
	  				stmt.close();
	  				conexao.close();
	  			} catch (SQLException e) {
	  				e.printStackTrace();
	  			}
	  		}
	  	}

      //Buscar
      @Override
  	  public Login buscar(int id) {
    	    Login loginu = null;
    	    PreparedStatement stmt = null;
    	    ResultSet rs = null;
    	    try {
    	      conexao = ConnectionManager.getInstance().getConnection();
    	      stmt = conexao.prepareStatement("SELECT * FROM T_SHT_LOGIN WHERE CD_LOGIN = ?");
    	      stmt.setInt(1, id);
    	      rs = stmt.executeQuery();
    	      if (rs.next()){
    	        int cdLogin = rs.getInt("CD_LOGIN");
    	        int cdUsuario = rs.getInt("CD_US");
    	        String email = rs.getString("DS_EMAIL");
    	        String password = rs.getString("DS_PASSWORD");

    	        loginu = new Login(cdLogin, cdUsuario, email, password);
    	      }
  
    	      
    	    } catch (SQLException e) {
    	      e.printStackTrace();
    	    }finally {
    	      try {
    	        stmt.close();
    	        rs.close();
    	        conexao.close();
    	      } catch (SQLException e) {
    	        e.printStackTrace();
    	      }
    	    }
    	    return loginu;
    	  }
      
      @Override
  	//Listar
  	public List<Login> listar() {
  		//Cria uma lista de Login
  		List<Login> lista = new ArrayList();
  		PreparedStatement stmt = null;
  		ResultSet rs = null;
  		try {
  			conexao = ConnectionManager.getInstance().getConnection();
  		stmt = conexao.prepareStatement("SELECT * FROM T_SHT_LOGIN");
  		rs = stmt.executeQuery();

  		//Percorre todos os registros encontrados
  		while (rs.next()) {
  		int cdLogin = rs.getInt("CD_LOGIN");
  		int cdUsuario = rs.getInt("CD_US");
  		String email = rs.getString("DS_EMAIL");
  		String password = rs.getString("DS_PASSWORD");
  		
  				//Cria um objeto Login com as informações encontradas
  				Login loginu = new Login (cdLogin, cdUsuario, email, password);
  				//Adiciona o login na lista
  				lista.add(loginu);
  			}
  		} catch (SQLException e) {
  			e.printStackTrace();
  		}finally {
  			try {
  				stmt.close();
  				rs.close();
  				conexao.close();
  			} catch (SQLException e) {
  				e.printStackTrace();
  			}
  		}
  		return lista;
  	}



}
