//
//  ViewController.swift
//  informacion
//
//  Created by Alumno on 10/1/19.
//  Copyright © 2019 fer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tvContactos: UITableView!
    var contactos : [Contacto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactos.append(Contacto(nombre: "nombre1", telefono: "telefono1", direccion: "direccion1", correo: "correo1", foto: "foto1"))
        contactos.append(Contacto(nombre: "nombre2", telefono: "telefono2", direccion: "direccion2", correo: "correo2", foto: "foto2"))
        contactos.append(Contacto(nombre: "nombre3", telefono: "telefono3", direccion: "direccion3", correo: "correo3", foto: "foto3"))
        contactos.append(Contacto(nombre: "nombre4", telefono: "telefono4", direccion: "direccion4", correo: "correo4", foto: "foto4"))
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        
        celda?.imgFoto.image = UIImage(named: contactos[indexPath.row].foto!)
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        celda?.lblTelefono.text = contactos[indexPath.row].telefono
        
        return celda!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar"
        {
            let destino = segue.destination as? EditarContactoController
            destino?.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
            
        }
    }
}

