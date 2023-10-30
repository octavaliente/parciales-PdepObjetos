object pdeplibre {
	const usuarios = #{}
	const productos = #{}
	
	method penalizarMorosos(){
		self.usuariosMorosos().forEach{unUsuario => unUsuario.reducirPuntos(1000)}
	}
	method usuariosMorosos(){
		return usuarios.filter{unUsuario => unUsuario.esMoroso()}
	}
	method actualizarNivelDeUsuarios(){
		
	}
}
