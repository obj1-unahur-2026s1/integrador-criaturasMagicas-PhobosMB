import criaturas.*

class Rol{
    method extraRol()
    method esExtraordinario(criatura)
}

class Guardian inherits Rol{
    override method extraRol() = 100
    override method esExtraordinario(criatura) = criatura.poderMagico() > 50
}

class Hechicero inherits Rol{
    override method extraRol() = 0
    override method esExtraordinario(criatura) = true
}

class Domador inherits Rol{
    const mascotas = []
    override method extraRol() = 150*mascotas.count({m => m.tieneCuernos()})
    override method esExtraordinario(criatura) = 
        criatura.poderMagico() >= 15 && mascotas.all({c => c.edad()>10})
}

class Mascota{
    var property edad
    var property tieneCuernos
}