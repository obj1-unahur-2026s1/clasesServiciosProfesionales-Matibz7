import profesionales.*
class Empresa{
    const profesionalesContratados=[]
    var property honorarioDeReferencia
    method contratar(unProfesional)= profesionalesContratados.add(unProfesional)
    method desvincular(unProfesional)= profesionalesContratados.remove(unProfesional)
    method cuantosEstudiaronEn(unaUniversidad)=profesionalesContratados.count({p=>p.universidad()==unaUniversidad})
    method profesionalesMasCaro()= profesionalesContratados.filter({p=>p.horarioDeReferencia()>horarioDeReferencia}).asSet()
    method universidadesFormadoras()=profesionalesContratados.map({p=>p.universidad()}).asSet()
    method profesionalMasBarato(){
        if(profesionalesContratados.isEmpty()) self.error("no hay profesional en la empressa")
        return profesionalesContratados.min({p=>p.honorariosPorHora()})
    }
    method esDeGenteAcotada()=profesionalesContratados.all({p=>p.provinciasDondePuedeTrabajar().size()<=3})

}