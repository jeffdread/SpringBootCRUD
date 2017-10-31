package bootexemple.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bootexemple.dao.IPlatRepository;
import bootexemple.entities.Plat;

@Service
@Transactional
public class PlatService {

	@Autowired
	public IPlatRepository platRepository;
	
	public List<Plat> findAll(){
		return platRepository.findAll();
	}
	
	public Plat findPlat(int id){
		return platRepository.findOne(id);
	}
	
	public void save(Plat plat){
		platRepository.save(plat);
	}
	
	public void delete(int id){
		platRepository.delete(id);
	}
}
