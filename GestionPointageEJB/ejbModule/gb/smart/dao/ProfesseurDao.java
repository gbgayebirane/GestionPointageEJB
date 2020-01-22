package gb.smart.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import gb.smart.entities.Professeur;

@Stateless
public class ProfesseurDao  implements IProfesseurLocal ,IProfesseurRemote{

	@PersistenceContext(unitName="PointageEJB")
	private EntityManager em;
	@Override
	public List<Professeur> liste() {
		return em.createQuery("select p from Professeur p").getResultList();
	}

	@Override
	public int add(Professeur professeur) {
		int ok =0;
		try {
			///em.getTransaction().begin();
			em.persist(professeur);
			//em.getTransaction().commit();
			ok=1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ok;
		
	}

}
