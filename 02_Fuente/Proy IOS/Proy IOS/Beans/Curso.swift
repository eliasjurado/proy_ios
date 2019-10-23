//
//  Curso.swift
//  Proy IOS
//
//  Created by P on 10/17/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class Curso: NSObject {
    var ID : Int = 0
    var FecReg : String = ""
    var FecUpd : String = ""
    //Registro Inicial
    var Titulo : String = ""
    var Target : String = ""
    var Descripcion : String = "" //maximo 140 caracteres
    
    init(_ID : Int, _FecReg:String, _FecUpd:String, _Titulo:String,_Target:String,_Descripcion:String) {
        self.ID = _ID
        self.FecReg = _FecReg
        self.FecUpd = _FecUpd
        self.Titulo = _Titulo
        self.Target = _Target
        self.Descripcion = _Descripcion
    }
}
