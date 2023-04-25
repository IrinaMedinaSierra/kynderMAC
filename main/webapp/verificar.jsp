<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>

<body>




	<div class="container">
		<p class="text-danger">
			<c:out value="${error }"></c:out>
		</p>

		<p>(*) Obligatorios</p>
		<form action="Controller" method="post">
			<fieldset>
				<legend
					class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					del Niño/a</legend>
					<div class="row g-3 my-1">
					<div class="col">
						<input disabled type="text" name="nombre"
							class="form-control text-capitalize" placeholder="Nombre*"
							aria-label="First name"   value="${param.nombre}">
					</div>
					<div class="col">
						<input disabled type="text" name="apellidos"
							class="form-control text-capitalize" placeholder="Apellidos*"
							aria-label="Last name"   value="${param.apellidos}">
					</div>
				</div>

				<div class="row g-3 my-1">
					<div class="col">
						<label id="bornDate">Fecha de Nacimiento</label> <input disabled
							type="date" name="fechaNacimiento"
							class="form-control text-capitalize"
							placeholder="Fecha de Nacimiento*"  
							aria-label="born date" id="bornDate"
							value="${param.fechaNacimiento}">
					</div>
					<div class="col">
						<label id="adress"></label> <input disabled type="text" name="direccion"
							class="form-control  text-capitalize" placeholder="Dirección*"
							  aria-label="address" id="adress"
							value="${param.direccion}">
					</div>
				</div>
				<div class="row g-3 my-1">
					<div class="col">
						<input disabled type="text" name="poblacion"
							class="form-control text-capitalize" placeholder="Población*"
							  aria-label="City" value="${param.poblacion}">
					</div>
					<div class="col">
						<input disabled type="text" name="cp" class="form-control text-capitalize"
							placeholder="Código Postal" aria-label="CP"  
							value="${param.cp}">
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend
					class="bg-success-subtle bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Datos
					Familiares</legend>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="nombreApellidoT1"
							class="form-control text-capitalize"
							placeholder="Nombre y Apellidos*" aria-label="First name"
							  value="${param.nombreApellidoT1}">
					</div>
					<div class="col">
						<input disabled type="text" name="dniT1"
							class="form-control text-uppercase" placeholder="DNI*"
							aria-label="Last name"   value="${param.dniT1}">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="profesionT1"
							class="form-control text-capitalize" placeholder="Profesión"
							aria-label="First name" value="${param.profesionT1}">
					</div>
					<div class="col">
						<input disabled type="text" name="telefonoT1"
							class="form-control" placeholder="Teléfono*"
							aria-label="Last name" value="${param.telefonoT1}">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="emailT1"
							class="form-control text-lowercase" placeholder="Email"
							aria-label="First name" value="${param.emailT1}">
					</div>
					<div class="col">
						<input disabled type="text" name="parentesco"
							class="form-control text-capitalize" 
							aria-label="First name" value="${param.parentesco}">
					
					</div>
					
				</div>
				<hr>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="nombreApellidoT2"
							class="form-control text-capitalize"
							placeholder="Nombre y Apellidos" aria-label="First name">
					</div>
					<div class="col">
						<input disabled type="text" name="dniT2"
							class="form-control text-uppercase" placeholder="DNI"
							aria-label="Last name">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="profesionT2"
							class="form-control text-capitalize" placeholder="Profesión"
							aria-label="First name">
					</div>
					<div class="col">
						<input disabled type="text" name="telefonoT2"
							class="form-control " placeholder="Teléfono"
							aria-label="Last name">
					</div>
				</div>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="emailT2"
							class="form-control text-lowercase" placeholder="Email"
							aria-label="First name">
					</div>
					<div class="col">
					<input disabled type="text" name="parentesco"
							class="form-control text-capitalize" 
							aria-label="First name" value="${param.parentesco2}">
					
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Otros Datos</legend>
				<div class="row g-3">
					<div class="col">
						<input disabled type="text" name="alergias" class="form-control"
							placeholder="Alergias" aria-label="First name">
					</div>
					<div class="col">
						<input disabled type="text" name="AlergiaAlim" class="form-control"
							placeholder="Alergias Alimentarias" aria-label="Last name">
					</div>
				</div>
				<div class="row g-3 mt-1">
					<div class="col">
						<input disabled type="text" name="intolerancias" class="form-control"
							placeholder="Intolerancias" aria-label="First name">
					</div>
					<div class="col">
						<input disabled type="text" name="medicacion" class="form-control"
							placeholder="Medicación" aria-label="Last name">
					</div>
				</div>

				<div class="row">
					<div class="col">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" placeholder="Observaciones" name="observaciones"></textarea>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<legend class="bg-success-subtle shadow-sm p-3 my-1 bg-body-tertiary rounded">Autorizaciones</legend>
				<p class="fst-italic">Al menos debe indicar un Autorizado</p>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input disabled
						type="text" class="form-control text-capitalize" name="autor1"
						aria-label="Username"  > <span
						class="input-group-text">DNI</span> <input disabled type="text"
						class="form-control text-capitalize" name="dniAuto1"
						aria-label="Server"  > <span
						class="input-group-text">Teléfono</span> <input disabled type="text"
						class="form-control text-capitalize" name="telefonoAuto1"
						aria-label="Server"  > <span
						class="input-group-text">Parentesco</span> <input disabled type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto1"  >
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text ">Nombre y Apellidos</span> <input disabled
						type="text" class="form-control" name="autor2"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input disabled type="text" class="form-control text-capitalize"
						name="dniAuto2" aria-label="Server"> <span
						class="input-group-text">Teléfono</span> <input disabled type="text"
						class="form-control" name="telefonoAuto2" aria-label="Server">
					<span class="input-group-text">Parentesco</span> <input disabled type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto2">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input disabled
						type="text" class="form-control" name="autor3"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input disabled type="text" class="form-control text-capitalize"
						name="dniAuto3" aria-label="Server"> <span
						class="input-group-text">Teléfono</span> <input disabled type="text"
						class="form-control " name="telefonoAuto3" aria-label="Server">
					<span class="input-group-text">Parentesco</span> <input disabled type="text"
						class="form-control text-capitalize" aria-label="Server"
						name="parentAuto3">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input disabled
						type="text" class="form-control text-capitalize" name="autor4"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input disabled type="text" class="form-control" name="dniAuto4"
						aria-label="Server"> <span class="input-group-text">Teléfono</span>
					<input disabled type="text" class="form-control" name="telefonoAuto4"
						aria-label="Server"> <span class="input-group-text">Parentesco</span>
					<input disabled type="text" class="form-control text-capitalize"
						aria-label="Server" name="parentAuto4">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text">Nombre y Apellidos</span> <input disabled
						type="text" class="form-control text-capitalize" name="autor5"
						aria-label="Username"> <span class="input-group-text">DNI</span>
					<input disabled type="text" class="form-control" name="dniAuto5"
						aria-label="Server"> <span class="input-group-text">Teléfono</span>
					<input disabled type="text" class="form-control" name="telefonoAuto5"
						aria-label="Server"> <span class="input-group-text">Parentesco</span>
					<input disabled type="text" class="form-control text-capitalize"
						aria-label="Server" name="parentAuto5">
				</div>
			</fieldset>
			<div class="row mb-4">
				<div class="col">
					<input  type="submit" name="confirmar" value="Enviar Solicitud"
						class="btn btn-success large">
				</div>
			</div>
		
		</form>
	</div>
</body>
</html>