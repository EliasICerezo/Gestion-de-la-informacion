package Practica0;

public class Permiso {
	private boolean acceso;
	private boolean modificacion;
	private String pantalla;
	
	public Permiso(String s, boolean a, boolean m){
		acceso=a;
		modificacion=m;
		pantalla=s;
	}
	
	public void setPantalla(String s){
		pantalla=s;
	}
	
	public String getPantalla(){
		return pantalla;
	}
	
	public void setAcceso(boolean b){
		acceso=b;
	}
	
	public boolean getAcceso(){
		return acceso;
	}
	
	public void setModificacion(boolean b){
		modificacion=b;
	}
	
	public boolean getModificacion(){
		return modificacion;
	}
}
