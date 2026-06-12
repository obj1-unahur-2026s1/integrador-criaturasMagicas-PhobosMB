import criaturas.*

class Rol{
    method extraRol()
    method esExtraordinario(criatura)
    method rolSiguiente()
}

class Guardian inherits Rol{
    override method extraRol() = 100
    override method esExtraordinario(criatura) = criatura.poderMagico() > 50
    override method rolSiguiente() = Domador(mascota.add(new Mascota(edad = 1, tieneCuernos = false)))
}

class Hechicero inherits Rol{
    override method extraRol() = 0
    override method esExtraordinario(criatura) = true
    override method rolSiguiente() = Guardian
}

class Domador inherits Rol{
    const mascotas = []

    override method extraRol() = 150*mascotas.count({m => m.tieneCuernos()})
    override method esExtraordinario(criatura) = 
        criatura.poderMagico() >= 15 && mascotas.all({c => c.edad()>10})
    override method rolSiguiente() =
}

class Mascota{
    var property edad
    var property tieneCuernos
}