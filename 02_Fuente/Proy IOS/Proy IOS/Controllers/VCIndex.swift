//
//  VCIndex.swift
//  Proy IOS
//
//  Created by P on 10/13/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class VCIndex: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //aqui debe comprobarse si el usuario ingreso por primera vez, si es asi que vea el onboarding
        verOnboarding()
        //sino que pase directo a la aplicacion
        //verAplicacion()
    }
    
    func verOnboarding(){
        let delay = DispatchTime.now()+3
        DispatchQueue.main.asyncAfter(deadline: delay){
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let onboarding = storyboard.instantiateViewController(withIdentifier: "vVCOnboarding") as! VCOnboarding
            self.present(onboarding,animated: true,completion: nil)
        }
    }
    
    func verAplicacion(){
        let delay = DispatchTime.now()+3
        DispatchQueue.main.asyncAfter(deadline: delay){
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let app = storyboard.instantiateViewController(withIdentifier: "vTBCPrincipal") as! TBCPrincipal
            self.present(app,animated: true,completion: nil)
        }
    }
}
