class Colonias{
    const criaturas = []
    var property lugarResidencia

    method criaturas() = criaturas

    method invasion(coloniaInvasora){
        if(coloniaInvasora.poderOfensivo() > self.poderDefensivo()){
            criaturas.removeAll()
            criaturas.addAll(coloniaInvasora.criaturas())
        }
        else{
            coloniaInvasora.criaturas().map({c => c.poderMagico(c.poderMagico()-c.poderMagico()*0.15)})
        }
    }


    method poderOfensivo() = criaturas.sum({c => c.poderOfensivo()})
    method poderDefensivo()
}

class Claros inherits Colonias{
    override method poderDefensivo() = 200*criaturas.count({c => c.esFormidable()})
}

class Castillos inherits Colonias{
    override method poderDefensivo() = self.poderOfensivo() + 100
}