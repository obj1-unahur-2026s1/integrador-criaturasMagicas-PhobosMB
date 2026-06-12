import roles.*

class Criaturas{
    var property poderMagico
    var property astucia
    var property rol

    method poderMagico() = poderMagico

    method esAstuto()

    method cambioDeRol(){
        rol = rol.rolSiguiente()
    }

    method esFormidable() = self.esAstuto() || self.rol().esExtraordinario(self)

    method poderOfensivo() = (poderMagico * 10) + self.rol().extraRol()
}

class Duende inherits Criaturas{
    override method esAstuto() = false
    
    override method poderOfensivo() = super() * 1.1
}

class Hadas inherits Criaturas{
    var cuantosKmPuedeVolar = 2

    override method esAstuto() = astucia > 50

    override method esFormidable() = super() && cuantosKmPuedeVolar > 10


    method aumentarKm(cant){
        cuantosKmPuedeVolar = 25.min(cuantosKmPuedeVolar + cant)
    }

}
