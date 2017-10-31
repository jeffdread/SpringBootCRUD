package bootexemple.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="t_plat")
public class Plat implements Serializable{


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String lib;
	private String description;
	
	
	public Plat() {
		super();
	}
	
	public Plat(String lib, String description) {
		super();
		this.lib = lib;
		this.description = description;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLib() {
		return lib;
	}
	public void setLib(String lib) {
		this.lib = lib;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Plat [id=" + id + ", lib=" + lib + ", description=" + description + "]";
	}	
}
