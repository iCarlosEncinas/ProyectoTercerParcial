//
//  Contacto.swift
//  Edicion
//
//  Created by Alumno on 10/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Contacto {
    
    var nombre : String
    var celular : String
    var correo : String
    var precio : String
    var peso : String
    var sellos : String
    var contenidoNeto : String
    var marca : String
    var tienda : String
    var id : String
    var imagen: String
    
    init(nombre: String, celular: String, correo: String, precio: String, peso: String, sellos: String, contenidoNeto: String, marca: String, tienda: String, id: String, imagen: String) {
        self.nombre = nombre
        self.celular = celular
        self.correo = correo
        self.precio = precio
        self.peso = peso
        self.sellos = sellos
        self.contenidoNeto = contenidoNeto
        self.marca = marca
        self.tienda = tienda
        self.id = id
        self.imagen = imagen
    }
}
