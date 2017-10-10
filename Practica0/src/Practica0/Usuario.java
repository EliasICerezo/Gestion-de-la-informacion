package Practica0;

import java.util.List;

public class Usuario {

	
	private String nombre;
	private String password;
	private Rol rol;
	
	public Usuario(String n, String pwd, Rol r){
		nombre=n;
		password=pwd;
		rol=r;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Rol getRol() {
		return rol;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}
	
	public boolean ModiRol(Usuario u,Rol r){
		if(rol.getAdmin()){
			u.setRol(r);
			return true;
		}else{
			return false;
		}
	}
	public boolean accesoPantalla(String p){
		return rol.Acceso(p);
	}
	public boolean modificacionPantalla(String p){
		return rol.Modificacion(p);
	}
}
