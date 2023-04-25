package com.cursoceat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import com.cursoceat.modell.*;
import com.cursoceat.services.*;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet implements DNI {
	private static final long serialVersionUID = 1L;
       int idNino;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 
	 * 
	 * 
	 */
       
       String nombreNino;
		String apellidosNino;
		String fNacimiento;
		String direccionN;
		String poblacionN;
		String cpN;
		String alergia;
		String alergiaAli;
		String intolerancia;
		String medicacion;
		String observaciones;
		/**
		 * Datos del Tutor 1
		 */
		String nombreTutor1;
		String dniT1;
		String profesionT1;
		String telefonoT1;
		String emailT1;
		String parentesco;
	
		/**
		 * Datos de todos los autorizados
		 */

		String autor1;
		String dniAuto1;
		String telefonoAuto1;
		String parentAuto1;
		ArrayList<String> erroresList=new ArrayList<String>();

       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/**
		 * Datos del Nino
		 */
		HttpSession sesion=request.getSession(); //crea el objeto tipo sesion
		System.out.println(sesion.getId());// mostraer el id de la sesion
			nombreNino=request.getParameter("nombre");
			 apellidosNino=request.getParameter("apellidos");
			 fNacimiento=request.getParameter("fechaNacimiento");
			direccionN=request.getParameter("direccion");
			 poblacionN=request.getParameter("poblacion");
			cpN=request.getParameter("cp");
			 alergia=request.getParameter("alergias");
			 alergiaAli=request.getParameter("AlergiaAlim");
			intolerancia=request.getParameter("intolerancias");
			 medicacion=request.getParameter("medicacion");
			 observaciones=request.getParameter("observaciones");
			/**
			 * Datos del Tutor 1
			 */
			 nombreTutor1=request.getParameter("nombreApellidoT1");
			dniT1=request.getParameter("dniT1");
			 profesionT1=request.getParameter("profesionT1");
			//Ejemplo de un casting a entero
			//int telefono=Integer.parseInt(request.getParameter("telefonoT1"));
			 telefonoT1=request.getParameter("telefonoT1");
			 emailT1=request.getParameter("emailT1");
			 parentesco=request.getParameter("parentesco");
		
			/**
			 * Datos de todos los autorizados
			 */
	
			 autor1=request.getParameter("autor1");
			 dniAuto1=request.getParameter("dniAuto1");
			 telefonoAuto1=request.getParameter("telefonoAuto1");
			 parentAuto1=request.getParameter("parentAuto1");
			
			 if (validarDNI(dniAuto1)|| validarDNI(dniT1)){
				 erroresList.add("DNI con formato erroneo");
			 }
			 	 			
				if (nombreNino.isEmpty() || apellidosNino.isEmpty() || fNacimiento.isEmpty() || direccionN.isEmpty() 
						|| poblacionN.isEmpty() || cpN.isEmpty() || nombreTutor1.isEmpty() ||
						dniT1.isEmpty() || telefonoT1.isEmpty() || parentesco.isEmpty() || autor1.isEmpty() || dniAuto1.isEmpty() 
						|| telefonoAuto1.isEmpty() || parentAuto1.isEmpty()) {
					erroresList.add("Los campos requeridos son obligatorios");
				}
				
				if (erroresList.size()>0) {
					request.setAttribute("error", erroresList); //no se envia hasta que se despache
					request.getRequestDispatcher("index.jsp").forward(request, response);//no se muestra si tengo quien lo muestre		
				}
				
				else {		
							request.getRequestDispatcher("verificar.jsp").forward(request, response);
								
			
			/**
			 * aqui falta  validar que la sesion se cree cuando se pulse todo correcto
			 */
			
		
		}
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		List<Nino> miNiList=new ArrayList<Nino>();
		List<Tutores> tutoList=new ArrayList<Tutores>();
		List<Autorizados> autoList=new ArrayList<Autorizados>();
		//sesiones para poder recuperar a información dentro de la aplicacion
		
		
		System.out.println(idNino);
		if (idNino==0) {
			Nino miNino=new Nino(nombreNino, apellidosNino, direccionN, poblacionN, cpN, fNacimiento, 
				alergia, alergiaAli, intolerancia, medicacion, observaciones);
			idNino=miNino.getIdNino();
			request.getSession().setAttribute("idN", idNino);
			request.getSession().setAttribute("nombreN", nombreNino);
			miNiList.add(miNino);
			System.out.println(miNiList.toString());
		
		
		//crear la coleccion de niños en alta
		
		System.out.println("id niño: " + idNino);
		Tutores elTutor=new Tutores(idNino,nombreTutor1,dniT1,telefonoT1,profesionT1,emailT1,parentesco);
		tutoList.add(elTutor);
		Autorizados auto1=new Autorizados(idNino, autor1, dniAuto1,telefonoAuto1,parentAuto1);
		autoList.add(auto1);
		/**
		 * Datos del Tutor 2
		 */
		String nombreTutor2=request.getParameter("nombreApellidoT2");
		if (nombreTutor2!=null) {		
		String dniT2=request.getParameter("dniT2");
		String profesionT2=request.getParameter("profesionT2");
		String telefonoT2=request.getParameter("telefonoT2");
		String emailT2=request.getParameter("emailT2");
		String parentesco2=request.getParameter("parentesco2");
		Tutores tutor2 = new Tutores( idNino, nombreTutor2,dniT2,profesionT2,telefonoT2,emailT2,parentesco2);
		tutoList.add(tutor2);
		}
	
		String autor2=request.getParameter("autor2");			
		if (autor2!=null) {
			String dniAuto2=request.getParameter("dniAuto2");
			String telefonoAuto2=request.getParameter("telefonoAuto2");
			String parentAuto2=request.getParameter("parentAuto2");
			Autorizados auto2=new Autorizados(idNino, autor2, dniAuto2,telefonoAuto2,parentAuto2);
			autoList.add(auto2);
		}
		
		String autor3=request.getParameter("autor3");
		if (autor3!=null) {
			String dniAuto3=request.getParameter("dniAuto3");
			String telefonoAuto3=request.getParameter("telefonoAuto3");
			String parentAuto3=request.getParameter("parentAuto3");
			Autorizados auto3=new Autorizados(idNino, autor3, dniAuto3,telefonoAuto3,parentAuto3);
			autoList.add(auto3);
		}			 
		
		
		//System.out.println(elTutor.toString());
		
		
		response.sendRedirect("saludo.jsp"); 
		
		
		//request.getRequestDispatcher("saludo.jsp").forward(request, response);
		}else {
			System.out.print("El niño esta creado");
			miNiList.clear();
			idNino=0;
			response.sendRedirect("index.jsp"); 

		}
	}

}
