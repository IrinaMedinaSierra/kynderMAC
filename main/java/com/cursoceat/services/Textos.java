package com.cursoceat.services;

public interface Textos {
	
	public default String validaTexto(String cadena) {
		
			String[] arraycadenaStrings=cadena.split(" ");
			String temp="";
			for (int i=0; i<arraycadenaStrings.length; i++) {
				arraycadenaStrings[i]=arraycadenaStrings[i].substring(0, 1).toUpperCase()+
						arraycadenaStrings[i].substring(1).toLowerCase();
				temp+=arraycadenaStrings[i]+" ";
			}
			return temp;
		}
		
	
	

}
