//
//  AgregarContactoController.swift
//  Edicion
//
//  Created by Alumno on 11/9/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarContactoController : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    @IBOutlet weak var txtPrecio: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtSellos: UITextField!
    @IBOutlet weak var txtContenidoNeto: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtTienda: UITextField!
    @IBOutlet weak var txtId: UITextField!
    
    var callbackAgregarContacto : ((Contacto) -> Void)?
    
    override func viewDidLoad() {
        self.title = "Agregar Dulce"
        
        
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        let contacto = Contacto(nombre: txtNombre.text!, celular: txtCelular.text!, correo: txtCorreo.text!, precio: txtPrecio.text!, peso: txtPeso.text!, sellos: txtSellos.text!, contenidoNeto: txtContenidoNeto.text!, marca: txtMarca.text!, tienda: txtTienda.text!, id: txtId.text!, imagen: "")
        callbackAgregarContacto!(contacto)
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
}
