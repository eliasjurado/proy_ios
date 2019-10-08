//
//  ViewControllerListaEncuesta.swift
//  Proy IOS
//
//  Created by P on 9/26/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCAsesoriaIntegral: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tab : Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaEncuesta.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ocelda = tableView.dequeueReusableCell(withIdentifier: "celda",for: indexPath) as! TVCCeldaEncuesta
        
        let oEncuesta1 = listaEncuesta[indexPath.row]
        
        ocelda.setEncuesta(pEncuesta: oEncuesta1)
        //ocelda.textLabel?.text = listaEncuesta [indexPath.row].Titulo
        return ocelda
    }

    @IBOutlet weak var tblListaEncuesta: UITableView!
    var listaEncuesta : [Encuesta] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tblListaEncuesta.dataSource = self
        self.tblListaEncuesta.delegate = self
        tblListaEncuesta.rowHeight = 95
        
        self.tab = true
        let vTab = self.storyboard?.instantiateViewController(withIdentifier: "UICursos") as! VCCursos
        vTab.tab = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "pasarLista"{
            let lista = segue.destination as! VCRegistraEncuesta
            lista.listaParaLlenar = listaEncuesta
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.listaEncuesta.remove(at: indexPath.row)
            self.tblListaEncuesta.deleteRows(at: [indexPath], with: .automatic)
        }
    }

  

}
