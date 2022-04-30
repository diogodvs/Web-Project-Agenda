package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DAO {
 /** Modulo de conexao **/
	// parametros de conexao
	
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/dbagenda?useTimezone=true&serverTimezone=UTC";
	private String user = "root";
	private String password = "R3polho12@";
	
	// Metodo de conexao
	private Connection conectar() {
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			return con;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}
	
	/** CRUD CREATE **/
	
	public void inserirContato(JavaBeans contato) {
		String create = "insert into contatos (nome, fone, email) values (?, ?, ?)";
		
		try {
			// Abrir conex�o
			Connection con = conectar();
			
			// Preparar a query para execucao no banco de dados
			PreparedStatement pst = con.prepareStatement(create);
			
			// Substituir os par�metros(?) pelo conteudo das variaveis JavaBeans[
			pst.setString(1, contato.getNome());
			pst.setString(2, contato.getFone());
			pst.setString(3, contato.getEmail());
			
			// Executar a query
			pst.executeUpdate();
			
			// Encerrar a conexao com o banco
			con.close();
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/** CRUD READ **/
	
	
	
	

}