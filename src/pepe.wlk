object vendedor {
	var hayMuchasVentas = true
	method neto(){
		return 16000 * if(hayMuchasVentas){
			1.25
		}else{
			1
		}
	}
	
	method activarAumentoPorMuchasVentas(){
		hayMuchasVentas = true
	}
	
	method desactivarAumentoPorMuchasVentas(){
		hayMuchasVentas = false
	}
}

object medioTiempo {
	var categoriaBase = cadete
	
	method categoriaBase(_categoriaBase){
		categoriaBase =  _categoriaBase
	}
	
	method neto(){
		return categoriaBase.neto() / 2
	}
}

object gerente {
	method neto(){
		return 15000
	}
}

object cadete {
	method neto(){
		return 20000
	}
}

object porcentaje {
	method valor(empleado){
		return empleado.neto() * 0.1
	}
}

object montoFijo {
	method valor(){
		return 800
	}
}

object resultadoNulo {
	method valor(){
		return 0
	}
}

object normal {
	method valor(empleado){
		return if(empleado.faltas() == 0){
			2000
		}else if(empleado.faltas() == 1){
			1000
		}else{
			0
		}
	}
}

object ajuste {
	method valor(empleado){
		return if(empleado.faltas() == 0){
			100
		}else{
			0
		}
	}
}

object demagogico {
	method valor(empleado){
		return if(empleado.neto() < 18000){
			500
		}else{
			300
		}
	}
}

object presentismoNulo {
	method valor(empleado){
		return 0
	}
}

object pepe {
	var categoria = cadete
	var resultado = resultadoNulo
	var presentismo = presentismoNulo
	var faltas = 0
	
	method sueldo(){
		return self.neto() + self.resultado() + self.presentismo()
	}
	
	method neto(){
		return categoria.neto()
	}
	
	method resultado(){
		return resultado.valor(self)
	}
	
	method presentismo(){
		return presentismo.tipo()
	}
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method resultado(_resultado){
		resultado = _resultado
	}
	
	method presentismo(_presentismo){
		presentismo = _presentismo
	}
	
	method faltas(_faltas){
		faltas = _faltas
	}
}

object sofia {
	var categoria = cadete
	var resultado = resultadoNulo
	var faltas = 0
	
	method sueldo(){
		return self.neto()*1.3 + self.resultado()
	}
	
	method neto(){
		return categoria.neto()
	}
	
	method resultado(){
		return resultado.valor(self)
	}
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method resultado(_resultado){
		resultado = _resultado
	}
	
	method faltas(_faltas){
		faltas = _faltas
	}
}

object roque {
	var categoria = cadete
	var resultado = resultadoNulo
	
	method sueldo(){
		return self.neto() + self.resultado() + self.presentismo()
	}
	
	method neto(){
		return 28000
	}
	
	method resultado(){
		return resultado.valor(self)
	}
	
	method presentismo(){
		return 9000
	}
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method resultado(_resultado){
		resultado = _resultado
	}
}

object ernesto {
	var companero = pepe
	var categoria = cadete
	var presentismo = presentismoNulo
	const faltas = 0
	
	method sueldo(){
		return self.neto() + self.presentismo()
	}
	
	method neto(){
		return companero.neto()
	}
	
	method presentismo(){
		return presentismo.tipo()
	}
	
	method companero(_companero){
		companero = _companero
	}
	
	method categoria(_categoria){
		categoria = _categoria
	}
	
	method presentismo(_presentismo){
		presentismo = _presentismo
	}
}
