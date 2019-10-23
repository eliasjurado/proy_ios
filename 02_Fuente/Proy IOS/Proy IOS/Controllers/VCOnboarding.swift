//
//  ViewController.swift
//  PageScrollView
//
//  Created by Michael Miles on 5/2/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

import UIKit

class VCOnboarding : UIViewController {
    
    var pages : [View] {
        get {
            let page1: View = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! View
            page1.view.image = UIImage.init(named: "lapiz")
            page1.titulo.text = "Elige el curso que necesitas"
            page1.descripcion.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
            page1.btSaltar.setTitle("", for: UIControl.State.normal)
            
            let page2: View = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! View
            page2.view.image = UIImage.init(named: "gente")
            page2.titulo.text = "Selecciona al profesor y al alumno"
            page2.descripcion.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
            page2.btSaltar.setTitle("", for: UIControl.State.normal)
            
            let page3: View = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! View
            page3.view.image = UIImage.init(named: "casa")
            page3.titulo.text = "Reserva tu clase y espera en casa"
            page3.descripcion.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
            page3.btSaltar.setTitle("SALTAR", for: UIControl.State.normal)
            page3.btSaltar.addTarget(self, action: #selector(self.SaltarApp(sender:)), for: .touchUpInside)
            
            return [page1, page2, page3]
        }
    }
   
    @objc func SaltarApp (sender : UIButton) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let app = storyboard.instantiateViewController(withIdentifier: "vTBCPrincipal") as! TBCPrincipal
        self.present(app,animated: true,completion: nil)
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
//    @IBAction func btSaltar_Click(_ sender: Any) {

//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.bringSubviewToFront(pageControl)
        
        setupScrollView(pages: pages)
        
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
    }

    func setupScrollView(pages: [View]) {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(pages.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< pages.count {
            pages[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(pages[i])
            
            //Para pasar a la siguiente vista
            //            if i == 2{
            //                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+6){
            //                let storyboard : UIStoryboard = UIStoryboard(name: "Profesores", bundle: nil)
            //                let profesores = storyboard.instantiateViewController(withIdentifier: "vProfesores") as! VCProfesores
            //                    self.present(profesores,animated: true,completion: nil)
            //                }
            //            }
        }
        
        
    }

}

extension VCOnboarding: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        pageControl.currentPage = Int(pageIndex)
    }
}
