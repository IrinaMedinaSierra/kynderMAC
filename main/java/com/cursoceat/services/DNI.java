package com.cursoceat.services;

public interface DNI {
	
	public default  boolean validarDNI(String dni) {	
	    String dniChars="TRWAGMYFPDXBNJZSQVHLCKE"; 
	    try {
	    String intPartDNI = dni.trim().replaceAll(" ", "").substring(0, 8);
        char ltrDNI = dni.charAt(8);
        int valNumDni = Integer.parseInt(intPartDNI) % 23;
        if (dni.length()== 9 && dniChars.charAt(valNumDni)== ltrDNI) {
            return true;
        } else {
            return false;
        }
		
	}catch(Exception e) {
		return false;
	}
	
	}
}
