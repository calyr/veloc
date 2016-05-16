//
//  main.swift
//  CuartaSemana
//
//  Created by calyr on 5/15/16.
//  Copyright © 2016 calyr. All rights reserved.
//

import Foundation

enum Velocidades : Int  {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
}


class Auto{
    var velocidades : Velocidades
    
    init(velocidad: Velocidades){
        self.velocidades = velocidad
    }
    
    func cambioDeVelocidad() -> (velocidad:Int, texto:String){
        var texto = "";
        var temporal = Velocidades(velocidadInicial: Velocidades.Apagado )
        switch velocidades{
        case .Apagado :
            texto = "Apagado"
            temporal = self.velocidades
            self.velocidades = .VelocidadBaja;
            
        case .VelocidadBaja:
            texto = "Velocidad Baja"
            temporal = self.velocidades
            self.velocidades = .VelocidadMedia
            
        case .VelocidadMedia:
            texto = "Velocidad Media"
            temporal = self.velocidades
            self.velocidades = .VelocidadAlta
            
        case .VelocidadAlta:
            texto = "Velocidad Alta"
            temporal = self.velocidades
            self.velocidades = .VelocidadMedia
            
        }
        return (temporal.rawValue, texto)
    }
}


var miauto = Auto(velocidad: .Apagado)
for( var i = 0; i < 20; i++){
    print( miauto.cambioDeVelocidad() )
}

