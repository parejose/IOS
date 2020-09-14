//
//  FormularioViewController.swift
//  Asistencia
//
//  Created by Jose Paredes on 9/13/20.
//  Copyright © 2020 Jose Paredes. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {
    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var apellidoTextField: UITextField!
    @IBOutlet weak var cursoTextField: UITextField!
    @IBOutlet weak var direccionTextField: UITextField!
    @IBOutlet weak var nacimientoTextField: UITextField!
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardarButtonTapt(_ sender: Any) {
        if(nombreTextField.text==nil || nombreTextField.text==""){
              MostrarAlerta(titulo: "Alerta", mensaje: "Ingrese un Nombre")
            
        }else
            if (apellidoTextField.text==nil || apellidoTextField.text==""){
                 MostrarAlerta(titulo: "Alerta", mensaje: "Ingrese sus Apellidos")
                
        }else
            if (cursoTextField.text==nil || cursoTextField.text==""){
                 MostrarAlerta(titulo: "Alerta", mensaje: "Ingrese su curso")
                
        }else
            if (direccionTextField.text==nil || direccionTextField.text==""){
                 MostrarAlerta(titulo: "Alerta", mensaje: "Ingrese su direcciòn")
                
        }else
            if (nacimientoTextField.text==nil || nacimientoTextField.text==""){
                 MostrarAlerta(titulo: "Alerta", mensaje: "Ingrese su Fecha de Nacimiento")
                
            }else{
        MostrarAlerta(titulo: "Alerta", mensaje: "Se Guardo el formulario Correctamente")
                LimpiarFormulario()
        }
      
        
       }
    
    @IBAction func cancelarButtonTapt(_ sender: Any) {
        
        MostrarAlerta(titulo: "Alerta", mensaje: "Usted a cancelado el formulario")
        LimpiarFormulario()
    }
    
    func LimpiarFormulario(){
        nombreTextField.text=""
        apellidoTextField.text=""
        cursoTextField.text=""
        direccionTextField.text=""
        nacimientoTextField.text=""
    }
    
    func MostrarAlerta(titulo:String,mensaje:String){
        
        let AlertVC=UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertController.Style.alert)
        let okButton=UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil)
        AlertVC.addAction(okButton)
        self.present(AlertVC, animated: true, completion: nil)

        
        
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
