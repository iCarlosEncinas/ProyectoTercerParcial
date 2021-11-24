//
//  ViewController.swift
//  Edicion
//
//  Created by Alumno on 10/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
        
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblCorreo.text = contactos[indexPath.row].correo
        celda.lblCelular.text = contactos[indexPath.row].celular
        celda.imgProducto.image = UIImage(named: contactos[indexPath.row].nombre)
        return celda
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToEditar" {
            
            let contactoSeleccionado = contactos[tvContactos.indexPathForSelectedRow!.row]
            let destino = segue.destination as! EditarContactoController
            destino.contacto = contactoSeleccionado
            destino.indice = tvContactos.indexPathForSelectedRow!.row
            destino.callbackActualizarTVContactos = actualizarTVContactos
            destino.callbackEliminarContacto = eliminarContacto
            
        }
        
        if segue.identifier == "goToAgregar" {
            
            let destino = segue.destination as! AgregarContactoController
            destino.callbackAgregarContacto = agregarContacto
            
        }
        
        
    }
    
  
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Dulces"
        
        contactos.append(Contacto(nombre: "Lucas Morado", celular: "16", correo: "En existencia", precio: "$20", peso: "60g", sellos: "Si", contenidoNeto: "55g", marca: "Lucas", tienda: "Centro Dulcero", id: "000", imagen: "Lucas"))
        contactos.append(Contacto(nombre: "Pelón Pelo Rico", celular: "4", correo: "En existencia",precio: "$20", peso: "35g", sellos: "Si", contenidoNeto: "30g", marca: "Lorena", tienda: "Centro Dulcero", id: "001", imagen: "Pelón Pelo Rico"))
        contactos.append(Contacto(nombre: "Obleas", celular: "4", correo: "En existencia",precio: "$30", peso: "20g", sellos: "Si", contenidoNeto: "15g", marca: "Coronado", tienda: "Centro Dulcero", id: "002", imagen: "Oblea"))
        
        contactos.append(Contacto(nombre: "Semillas de Girasol", celular: "8", correo: "En existencia",precio: "$30", peso: "57g", sellos: "Si", contenidoNeto: "52g", marca: "Bokados", tienda: "Centro Dulcero", id: "003", imagen: "Semillas de Girasol"))
        contactos.append(Contacto(nombre: "Vaso Karla", celular: "8", correo: "En existencia", precio: "$25", peso: "155g", sellos: "Si", contenidoNeto: "150g", marca: "Lucas", tienda: "Centro Dulcero", id: "004", imagen: "Vaso Karla"))
        contactos.append(Contacto(nombre: "Chaca Chaca", celular: "6", correo: "En existencia", precio: "$20", peso: "36g", sellos: "Si", contenidoNeto: "35g", marca: "Chaca Chaca", tienda: "Centro Dulcero", id: "005", imagen: "Chaca Chaca"))
        
        contactos.append(Contacto(nombre: "Pulparindo", celular: "4", correo: "En existencia", precio: "$15", peso: "15g", sellos: "Si", contenidoNeto: "14g", marca: "De la Rosa", tienda: "Centro Dulcero", id: "006", imagen: "Pulparindo"))
        contactos.append(Contacto(nombre: "Tridents", celular: "6", correo: "En existencia", precio: "$25", peso: "60g", sellos: "Si", contenidoNeto: "55g", marca: "Trident", tienda: "Centro Dulcero", id: "007", imagen: "Tridents"))
        contactos.append(Contacto(nombre: "Tutsi Pop", celular: "50", correo: "En existencia", precio: "$10", peso: "21g", sellos: "Si", contenidoNeto: "20g", marca: "Tutsi Pop", tienda: "Centro Dulcero", id: "008", imagen: "Tutsi Pop"))
        
        contactos.append(Contacto(nombre: "Best Pop", celular: "50", correo: "En existencia", precio: "$10", peso: "22g", sellos: "Si", contenidoNeto: "21g", marca: "Best Pop", tienda: "Centro Dulcero", id: "009", imagen: "Best Pop"))
        
    }
    
    func actualizarTVContactos() {
        tvContactos.reloadData()
    }
    
    func eliminarContacto(indice: Int) {
        contactos.remove(at: indice)
        actualizarTVContactos()
    }
    
    func agregarContacto(contacto: Contacto) {
        contactos.append(contacto)
        actualizarTVContactos()
    }
    
}

