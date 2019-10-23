//
//  TVCCursos.swift
//  Proy IOS
//
//  Created by P on 10/17/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class TVCCurso: UITableViewCell {
    @IBOutlet weak var lbTitulo: UILabel!
    @IBOutlet weak var lbTarget: UILabel!
    @IBOutlet weak var tvDescripcion: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    public func setCurso(_Curso : Curso){
        lbTitulo.text = _Curso.Titulo
        lbTarget.text = _Curso.Target
        tvDescripcion.text = _Curso.Descripcion
    }
}
