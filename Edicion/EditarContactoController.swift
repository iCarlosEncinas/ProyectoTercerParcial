//
//  EditarContactoController.swift
//  Edicion
//
//  Created by Alumno on 11/2/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarContactoController: UIViewController {
    
    var contacto : Contacto?
    var indice :Int?
    
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
    
    var callbackActualizarTVContactos : (() -> Void)?
    var callbackEliminarContacto : ((Int) -> Void)?
    
    
    override func viewDidLoad() {
        self.title = "Editar Dulce"
        
        txtCorreo.text = contacto!.correo
        txtNombre.text = contacto!.nombre
        txtCelular.text = contacto!.celular
        txtPrecio.text = contacto!.precio
        txtPeso.text = contacto!.peso
        txtSellos.text = contacto!.sellos
        txtContenidoNeto.text = contacto!.contenidoNeto
        txtMarca.text = contacto!.marca
        txtTienda.text = contacto!.tienda
        txtId.text = contacto!.id
        
        txtNombre.isEnabled = false
        txtCorreo.isEnabled = false
        txtCelular.isEnabled = false
        txtPrecio.isEnabled = false
        txtPeso.isEnabled = false
        txtSellos.isEnabled = false
        txtContenidoNeto.isEnabled = false
        txtMarca.isEnabled = false
        txtTienda.isEnabled = false
        txtId.isEnabled = false
        
        if (txtNombre.isEnabled == false) {
            btnGuardar.isHidden = true
        }
    }
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnEditar: UIButton!
    
    @IBAction func doTapEditar(_ sender: Any) {
        btnEditar.isHidden = true
        
        txtNombre.isEnabled = true
        txtCorreo.isEnabled = true
        txtCelular.isEnabled = true
        txtPrecio.isEnabled = true
        txtPeso.isEnabled = true
        txtSellos.isEnabled = true
        txtContenidoNeto.isEnabled = true
        txtMarca.isEnabled = true
        txtTienda.isEnabled = true
        txtId.isEnabled = true
        
        btnGuardar.isHidden = false
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        contacto!.nombre = txtNombre.text!
        contacto!.correo = txtCorreo.text!
        contacto!.celular = txtCelular.text!
        
        callbackActualizarTVContactos!()
        
        btnGuardar.isHidden = true
        
        txtNombre.isEnabled = false
        txtCorreo.isEnabled = false
        txtCelular.isEnabled = false
        txtPrecio.isEnabled = false
        txtPeso.isEnabled = false
        txtSellos.isEnabled = false
        txtContenidoNeto.isEnabled = false
        txtMarca.isEnabled = false
        txtTienda.isEnabled = false
        txtId.isEnabled = false
        btnEditar.isHidden = false
    }
    @IBAction func doTapEliminar(_ sender: Any) {
        callbackEliminarContacto!(indice!)
        self.navigationController!.popViewController(animated: true)
    }
    
}
