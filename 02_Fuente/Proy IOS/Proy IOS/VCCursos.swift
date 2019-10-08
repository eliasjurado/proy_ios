//
//  VCCursos.swift
//  Proy IOS
//
//  Created by P on 10/7/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCCursos: UIViewController {

    var tab : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Cambiar el color del boton marcado*/
        self.tab = true
        let vTab = self.storyboard?.instantiateViewController(withIdentifier: "UIAsesoria") as! VCAsesoriaIntegral
        vTab.tab = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
