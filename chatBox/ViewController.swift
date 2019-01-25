//
//  ViewController.swift
//  chatBox
//
//  Created by Memo Figueredo on 1/25/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Conectores
    
    @IBOutlet weak var RespuestaRobot: UILabel!
    
    @IBOutlet weak var editarTexto: UITextField!
    
    @IBOutlet weak var preguntar: UIButton!
    
    let myQuestion = Respuesta()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editarTexto.becomeFirstResponder()
    }
    
    //funciones
    
    func respondToQiestion(_ question: String) {
        
        let repuesta = myQuestion.respondeme(question: question)
        
      displayRespuestaTextoScreen(repuesta)
        editarTexto.placeholder = "Haz otra pregunta"
        editarTexto.text = nil
    }
 //conexiones
    
    @IBAction func agregarPregunta(_ sender: UITextField) {
        
        guard let texto = editarTexto.text else {
            return
        }
        preguntar.isEnabled = !texto.isEmpty
    }
    
    @IBAction func pregunta(_ sender: Any) {
        
        guard editarTexto.text != nil else {
            return
        }
        editarTexto.resignFirstResponder()
    }
    
    func displayRespuestaTextoScreen(_ answer: String){
        RespuestaRobot.text = answer
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        editarTexto.resignFirstResponder()
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let texto = editarTexto.text else {
            return
        }
        
        respondToQiestion(texto)
    }
    
  
    
    
    
}
