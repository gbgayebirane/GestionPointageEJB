package gb.smart.dao;

import java.util.List;

import javax.ejb.Local;

import gb.smart.entities.Professeur;

@Local
public interface IProfesseurLocal 
{
  public List<Professeur> liste();
  public int add (Professeur professeur);
}
