//
//  VCPerfilChild1.swift
//  Proy IOS
//
//  Created by P on 11/19/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCPerfilChild1: UIViewController {
    @IBOutlet weak var viewcontainer: UIView!
    @IBOutlet weak var segMenu: UISegmentedControl!
    
    var viewDatos : UIView!
    var viewHistorial : UIView!
    var viewFavoritos : UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewDatos = VCPerfilAlumnoDatos().view
        viewHistorial = VCPerfilAlumnosHistorial().view
        viewFavoritos = VCPerfilAlumnoFavoritos().view
    }
    
    @IBAction func switchview(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewcontainer.bringSubviewToFront(viewDatos)
            break
        case 1:
            viewcontainer.bringSubviewToFront(viewHistorial)
            break
        case 2:
            viewcontainer.bringSubviewToFront(viewFavoritos)
            break
        default:
            break
        }
    }
    
    
}
