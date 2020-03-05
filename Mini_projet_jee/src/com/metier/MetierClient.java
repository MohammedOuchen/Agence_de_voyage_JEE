package com.metier;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class MetierClient {
	
	public List<Clients> getClient(){
		List<Clients> clients = new ArrayList<Clients>();
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps =  conn.prepareStatement("SELECT * FROM client");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Clients c = new Clients();
				c.setId_client(rs.getLong("ID_client"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setTel(rs.getString("tel"));
				c.setCin(rs.getString("CIN"));
				c.setEmail(rs.getString("Email"));
				c.setAdresse(rs.getString("Adresse"));
				clients.add(c);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return clients;
	}
	
	public List<Clients> getClient(long id){
		List<Clients> clients = new ArrayList<Clients>();
		Connection conn = SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps =  conn.prepareStatement("SELECT * FROM client  where  ID_client = "+id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Clients c = new Clients();
				c.setId_client(rs.getLong("ID_client"));
				c.setNom(rs.getString("Nom"));
				c.setPrenom(rs.getString("Prenom"));
				c.setTel(rs.getString("tel"));
				c.setCin(rs.getString("CIN"));
				c.setEmail(rs.getString("Email"));
				c.setAdresse(rs.getString("Adresse"));
				clients.add(c);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return clients;
	}
	
	public int addClient(Clients c) {
		Connection conn = SingletonConnection.getConnection();
		int rs = 0;
		try {
			PreparedStatement ps =  conn.prepareStatement("INSERT INTO `client`(`ID_client`,`Nom`, `Prenom`, `CIN`, `tel`, `Email`, `Adresse`) VALUES "				
			+"('"+c.getId_client()+"','"+c.getNom()+"','"+c.getPrenom()+"','"+c.getCin()+"','"+c.getTel()+"','"+c.getEmail()+"','"+c.getAdresse()+"')");
			rs = ps.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			PreparedStatement ps =  conn.prepareStatement("SELECT ID_client FROM client order by ID_client");
			ps.executeUpdate("INSERT INTO `reserver`(`ID_voyage`, `ID_client`, `nbrPlace`) VALUES ("+c.getId_voy()+","+c.getId_client()+","+c.getNbrPlace()+")");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public long idClient() {
		long id = 0;
		Connection conn = SingletonConnection.getConnection();
		try {
			PreparedStatement ps =  conn.prepareStatement("SELECT ID_client FROM client order by ID_client");
			ResultSet rsul = ps.executeQuery();
			while(rsul.next()) {
			id = rsul.getLong("ID_client");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return id+1;
	}

	public MetierClient() {
	}

}
