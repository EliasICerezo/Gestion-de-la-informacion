package Practica0;

import java.util.ArrayList;
import java.util.List;

public class Rol {
	private boolean admin;
	private String rolDes;
	private String rolName;
	private List<Permiso> permisos; 
	
	public Rol (String rn, String rd, boolean a){
		rolName=rn;
		rolDes=rd;
		admin=a;
		permisos=new ArrayList<>();
	}
	
	

	public boolean getAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}

	public String getRolDes() {
		return rolDes;
	}

	public void setRolDes(String rolDes) {
		this.rolDes = rolDes;
	}

	public String getRolName() {
		return rolName;
	}

	public void setRolName(String rolName) {
		this.rolName = rolName;
	}
	
	public void AddPermiso(Permiso p){
		
		permisos.add(p);
	}
	
	public boolean Acceso(String p){
		for(Permiso per: permisos){
			if(per.getPantalla().equals(p)){
				return per.getAcceso();
			}
			
		}
		return false;
	}
	
	public boolean Modificacion(String p){
		for(Permiso per: permisos){
			if(per.getPantalla().equals(p)){
				return per.getModificacion();
			}
			
		}
		return false;
	}
	
}
