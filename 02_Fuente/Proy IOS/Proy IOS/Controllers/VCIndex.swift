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
        cambiarvista()
    }
    
    func cambiarvista(){
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+3){
            let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let onboarding = storyboard.instantiateViewController(withIdentifier: "vOnboarding") as! VCOnboarding
            self.present(onboarding,animated: true,completion: nil)
        }
    }
}
