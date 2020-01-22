package gb.smart.dao;

import java.util.List;

import javax.ejb.Remote;

import gb.smart.entities.Professeur;

@Remote
public interface IProfesseurRemote
{
	public List<Professeur> liste();
	public int add (Professeur professeur);
}
