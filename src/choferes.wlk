import cliente.*



object roxana {
	method precioViaje(cliente,kms) {
		return cliente.precioPorkm() * kms
		
	}
	
}

object gabriela {
	method precioViaje(cliente,kms) {
		return (cliente.precioPorkm()* kms * 1.2) 
	}
}

object mariela {
	method precioViaje(cliente,kms) {
		if (cliente.precioPorkm() * kms < 50) {
			return 50
		}
		else { 
			return cliente.precioPorkm()*kms	}
}
}


object juana {
	method precioViaje(cliente,kms) {
		if (kms < 8) {
			return 100 
		} else { 
			return 200
		}
	}
}

object lucia {
	var chofer = null
	method reemplazarchofer(nombre){
		chofer = nombre
	}
	
	method precioViaje(cliente,kms){
		return chofer.precioViaje(cliente,kms)
	}
}


