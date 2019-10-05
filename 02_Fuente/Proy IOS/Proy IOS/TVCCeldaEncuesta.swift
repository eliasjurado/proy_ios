//
//  TableViewCellCeldaEncuesta.swift
//  Proy IOS
//
//  Created by P on 9/27/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class TVCCeldaEncuesta: UITableViewCell {
    @IBOutlet weak var lbTitulo: UILabel!
    @IBOutlet weak var tvTarget: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tvTarget.textAlignment = NSTextAlignment.justified
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func setEncuesta(pEncuesta : Encuesta){
        lbTitulo.text = pEncuesta.Titulo
        tvTarget.text = pEncuesta.Target
    }

}
