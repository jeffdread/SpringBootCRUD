package bootexemple.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import bootexemple.entities.Plat;

public interface IPlatRepository extends JpaRepository<Plat, Integer>{

}