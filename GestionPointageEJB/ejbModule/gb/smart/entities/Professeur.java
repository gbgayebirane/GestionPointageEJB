package gb.smart.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Professeur implements Serializable
{
	 @Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	 private int id;
	 @Column
	 private String nomP;
	 @Column
	 private String prenomP;
	 @Column
	 private double salaire;
	public Professeur() {
		super();
	}
	public Professeur(int id, String nomP, String prenomP, double salaire) {
		super();
		this.id = id;
		this.nomP = nomP;
		this.prenomP = prenomP;
		this.salaire = salaire;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomP() {
		return nomP;
	}
	public void setNomP(String nomP) {
		this.nomP = nomP;
	}
	public String getPrenomP() {
		return prenomP;
	}
	public void setPrenomP(String prenomP) {
		this.prenomP = prenomP;
	}
	public double getSalaire() {
		return salaire;
	}
	public void setSalaire(double salaire) {
		this.salaire = salaire;
	}

}
