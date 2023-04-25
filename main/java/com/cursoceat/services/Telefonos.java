package com.cursoceat.services;

public interface Telefonos {
	
	public default  boolean validarTelefono(String telefono) {
		boolean correcto;
		if ((!telefono.startsWith("9") && !telefono.startsWith("6") && !telefono.startsWith("7")) 
				|| telefono.length()!=9) {
			correcto=false;
		} else 
			correcto=true;
		return correcto;
	}

}
