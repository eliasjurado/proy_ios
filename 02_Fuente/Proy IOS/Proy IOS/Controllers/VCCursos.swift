//
//  VCCursos.swift
//  Proy IOS
//
//  Created by P on 10/7/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCCursos: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCurso.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ocelda = tableView.dequeueReusableCell(withIdentifier: "cellCurso",for: indexPath) as! TVCCurso
        let oCurso = listaCurso[indexPath.row]
        ocelda.setCurso(_Curso: oCurso)
        return ocelda
    }
    
    @IBOutlet weak var tbCursos: UITableView!
    var listaCurso : [Curso] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tbCursos.rowHeight = 110
        
        let oCurso1 = Curso(_ID: 1, _FecReg: "2019-09-08", _FecUpd: "2019-09-08", _Titulo: "Asesoría Integral", _Target: "Primaria", _Descripcion: "Todos los cursos. Seguimiento de tareas y preparación para evaluaciones.")
        let oCurso2 = Curso(_ID: 1, _FecReg: "2019-09-08", _FecUpd: "2019-09-08", _Titulo: "Asesoría Integral", _Target: "Secundaria", _Descripcion: "Guía en proyectos, monografías y exposiciones. Orientación vocacional.")
        let oCurso3 = Curso(_ID: 1, _FecReg: "2019-09-08", _FecUpd: "2019-09-08", _Titulo: "Matemática", _Target: "Primaria", _Descripcion: "Adquiere destreza en resolución de problemas y aplicación de conceptos básicos.")
        let oCurso4 = Curso(_ID: 1, _FecReg: "2019-09-08", _FecUpd: "2019-09-08", _Titulo: "Lenguaje y Literatura", _Target: "Secundaria", _Descripcion: "Elaboración de textos y dominio de estructura semántica del lenguaje Castellano.")
        
        listaCurso.append(oCurso1)
        listaCurso.append(oCurso2)
        listaCurso.append(oCurso3)
        listaCurso.append(oCurso4)

        self.tbCursos.dataSource = self
        self.tbCursos.delegate = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    //Metodo que elimina la fila
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == UITableViewCell.EditingStyle.delete {
//            self.listaCurso.remove(at: indexPath.row)
//            self.tbCursos.deleteRows(at: [indexPath], with: .automatic)
//        }
//    }



}
