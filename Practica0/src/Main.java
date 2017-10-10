import Practica0.Permiso;
import Practica0.Rol;
import Practica0.Usuario;

public class Main {
	public static void main(String[] args){
		Rol r1 = new Rol("ADMIN", "ADMINISTRADOR", true);
		r1.AddPermiso(new Permiso("PANTALLA1", true, true));
		r1.AddPermiso(new Permiso("PANTALLA2", true, true));
		r1.AddPermiso(new Permiso("PANTALLA3", true, true));
		Rol r2 = new Rol("USER", "USUARIO", false);
		r2.AddPermiso(new Permiso("PANTALLA1", true, false));
		r2.AddPermiso(new Permiso("PANTALLA2", true, true));
		r2.AddPermiso(new Permiso("PANTALLA3", true, true));
		Rol r3 = new Rol("INVITADO", "INVITADO", false);
		r3.AddPermiso(new Permiso("PANTALLA1", false, false));
		r3.AddPermiso(new Permiso("PANTALLA2", true, false));
		r3.AddPermiso(new Permiso("PANTALLA3", true, false));
		Usuario u1 = new Usuario("U1", "U1", r1);
		Usuario u2 = new Usuario("U2", "U2", r2);
		Usuario u3 = new Usuario("U3", "U3", r3);
		
		System.out.println("U1 ACCESO1: "+u1.accesoPantalla("PANTALLA1"));
		System.out.println("U1 ACCESO2: "+u1.accesoPantalla("PANTALLA2"));
		System.out.println("U1 ACCESO3: "+u1.accesoPantalla("PANTALLA3"));
		
		System.out.println("U1 MOD1: "+u1.modificacionPantalla("PANTALLA1"));
		System.out.println("U1 MOD2: "+u1.modificacionPantalla("PANTALLA2"));
		System.out.println("U1 MOD3: "+u1.modificacionPantalla("PANTALLA3"));
		
		System.out.println("U1 NODIFICA ROL DE U2: "+u1.ModiRol(u2, r1));
		System.out.println("U1 NODIFICA ROL DE U2: "+u1.ModiRol(u2, r3));
		System.out.println("U1 NODIFICA ROL DE U2: "+u1.ModiRol(u2, r2));
		
		System.out.println("U2 ACCESO1: "+u2.accesoPantalla("PANTALLA1"));
		System.out.println("U2 ACCESO2: "+u2.accesoPantalla("PANTALLA2"));
		System.out.println("U2 ACCESO3: "+u2.accesoPantalla("PANTALLA3"));
		
		System.out.println("U2 MOD1: "+u2.modificacionPantalla("PANTALLA1"));
		System.out.println("U2 MOD2: "+u2.modificacionPantalla("PANTALLA2"));
		System.out.println("U2 MOD3: "+u2.modificacionPantalla("PANTALLA3"));
		
		System.out.println("U2 NODIFICA ROL DE U2: "+u2.ModiRol(u1, r1));
		System.out.println("U2 NODIFICA ROL DE U2: "+u2.ModiRol(u1, r3));
		System.out.println("U2 NODIFICA ROL DE U2: "+u2.ModiRol(u1, r2));
		
		System.out.println("U3 ACCESO1: "+u3.accesoPantalla("PANTALLA1"));
		System.out.println("U3 ACCESO2: "+u3.accesoPantalla("PANTALLA2"));
		System.out.println("U3 ACCESO3: "+u3.accesoPantalla("PANTALLA3"));
		
		System.out.println("U3 MOD1: "+u3.modificacionPantalla("PANTALLA1"));
		System.out.println("U3 MOD2: "+u3.modificacionPantalla("PANTALLA2"));
		System.out.println("U3 MOD3: "+u3.modificacionPantalla("PANTALLA3"));
		
		System.out.println("U3 NODIFICA ROL DE U2: "+u3.ModiRol(u2, r1));
		System.out.println("U3 NODIFICA ROL DE U2: "+u3.ModiRol(u2, r3));
		System.out.println("U3 NODIFICA ROL DE U2: "+u3.ModiRol(u2, r2));
		
	}
}
