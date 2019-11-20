//
//  VCPerfilAlumno.swift
//  Proy IOS
//
//  Created by P on 11/19/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCPerfilAlumno: UIViewController {
    @IBOutlet weak var imgPerfil: RoundImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgPerfil.cornerRadius=50
        imgPerfil.borderColor=UIColor.white
        imgPerfil.borderWidth=5
        
    }
}
