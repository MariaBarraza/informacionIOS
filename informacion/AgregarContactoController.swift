//
//  AgregarContactoController.swift
//  informacion
//
//  Created by Alumno on 10/4/19.
//  Copyright © 2019 fer. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController{
    
    var contacto : Contacto?
    var callbackAgregarTabla : (() -> Void)?
    var callbackActualizarTabla : (() -> Void)?
    
    @IBOutlet weak var lblNombre: UITextField!
    @IBOutlet weak var lblTelefono: UITextField!
    
    override func viewDidLoad() {
        lblTelefono.text = "Nuevo"
        lblNombre.text = "(644) 0 00 00 00"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        contacto?.nombre = lblNombre.text
        contacto?.telefono = lblTelefono.text
        callbackActualizarTabla!()
        
        self.navigationController?.popViewController(animated: true)
    }
    
}
