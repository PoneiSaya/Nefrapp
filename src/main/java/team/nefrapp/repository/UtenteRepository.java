package team.nefrapp.repository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import team.nefrapp.entity.Utente;

// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete
@Repository
public interface UtenteRepository extends CrudRepository<Utente, Integer> {
    Utente findByCodiceFiscale(String cf);
}