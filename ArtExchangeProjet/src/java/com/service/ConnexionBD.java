package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnexionBD {
  //  Définir l’url de connexion avec le nom de la base donnée
	private static String url = "jdbc:mysql://127.0.0.1:3306/artexchange?autoReconnect=true&useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
        //Les identifiants de connection de la bd
	private static String user = "root";
	private static String pwd = "root";
	private static Connection conn = null;
	public static Connection getConnection(){
		try {
                    //chargement du driver
			Class.forName("com.mysql.cj.jdbc.Driver");
	//DriverManager est responsable de la sélection de la BD et
        //la création de la connexion

			conn = DriverManager.getConnection(url, user, pwd);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return conn;
	}
	
	public static void closeConnection(){
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	
	
	
}
