import universidades.*

class profesionalVinculado{
    var property universidad
    method honorariosPorHora()=universidad.honorariosRecomendados()
    method provinciasDondePuedeTrabajar()=[universidad.provincia()]

    }
class profesionalAsociado{
    var property universidad
    method honorariosPorHora()=  3000
    method provinciasDondePuedeTrabajar()=["Entre Rios","Santa Fe","Corrientes"]
}
class profesionalLibre{
    var property universidad
    var property honorariosPorHora
    const property provinciasDondePuedeTrabajar =[] 
}