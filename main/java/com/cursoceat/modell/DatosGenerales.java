package com.cursoceat.modell;

import com.cursoceat.services.DNI;

public class DatosGenerales implements DNI{

	protected int idNino;
	protected String nombreApellidos;
	protected String dni;
	protected String telefono;
	public DatosGenerales(int idNino, String nombreApellidos, String dni, String telefono) {
		this.idNino = idNino;
		this.nombreApellidos = nombreApellidos;
		this.dni = dni;
		this.telefono = telefono;
	}
	public DatosGenerales() {
	}
	public int getIdNino() {
		return idNino;
	}
	public String getNombreApellidos() {
		return nombreApellidos;
	}
	public void setNombreApellidos(String nombreApellidos) {
		this.nombreApellidos = nombreApellidos;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		if (validarDNI(dni)) {
		this.dni = dni;
		}else {
			
		}
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	@Override
	public String toString() {
		return "DatosGenerales [idNino=" + idNino + ", nombreApellidos=" + nombreApellidos + ", dni=" + dni
				+ ", telefono=" + telefono + "]";
	}
	
	
	
}
