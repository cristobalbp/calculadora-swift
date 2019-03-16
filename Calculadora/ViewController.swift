//
//  ViewController.swift
//  Calculadora
//
//  Created by Cristobal  Bustamante on 15-10-17.
//  Copyright © 2017 Cristobal  Bustamante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelMostrar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var NuevaAccion = true
    func InsertarNumero(number:String){
        var textNumber = String(labelMostrar.text!)
        //este if es que si esta limpio, se borra el que viene por defecto para que se agregen los nuevos
        if NuevaAccion {
            textNumber = ""
            NuevaAccion = false
        }
        textNumber = textNumber + number
        labelMostrar.text = textNumber
    }

    @IBAction func btn0(_ sender: Any) {
        InsertarNumero(number: "0")
    }
    
    @IBAction func btnPunto(_ sender: Any) {
        InsertarNumero(number: ".")
    }
    @IBAction func btn1(_ sender: Any) {
        InsertarNumero(number: "1")
    }
    @IBAction func btn2(_ sender: Any) {
        InsertarNumero(number: "2")
    }
    @IBAction func btn3(_ sender: Any) {
        InsertarNumero(number: "3")
    }
    @IBAction func btn4(_ sender: Any) {
        InsertarNumero(number: "4")
    }
    @IBAction func btn5(_ sender: Any) {
        InsertarNumero(number: "5")
    }
    @IBAction func btn6(_ sender: Any) {
        InsertarNumero(number: "6")
    }
    @IBAction func btn7(_ sender: Any) {
        InsertarNumero(number: "7")
    }
    @IBAction func btn8(_ sender: Any) {
        InsertarNumero(number: "8")
    }
    @IBAction func btn9(_ sender: Any) {
        InsertarNumero(number: "9")
    }
    
    var operacion = "+"
    var number1:Double?
    @IBAction func btnMult(_ sender: Any) {
    operacion = "*"
    number1 = Double(labelMostrar.text!)
    NuevaAccion = true
        
    }
    
    @IBAction func btnDivision(_ sender: Any) {
        operacion = "/"
        number1 = Double(labelMostrar.text!)
        NuevaAccion = true
    }
    
    @IBAction func btnSustraccion(_ sender: Any) {
        operacion = "-"
        number1 = Double(labelMostrar.text!)
        NuevaAccion = true
    }
    
    @IBAction func btnSuma(_ sender: Any) {
        operacion = "+"
        number1 = Double(labelMostrar.text!)
        NuevaAccion = true
    }
    
    @IBAction func btnAC(_ sender: Any) {
        labelMostrar.text = "0"
        NuevaAccion = true
    }
    
    @IBAction func btnSignos(_ sender: Any) {
       
        var textNumber =
            String(labelMostrar.text!)
        textNumber = "-" + textNumber
        labelMostrar.text = textNumber
    //reparar la cantidad maxima de signos
    }
    
    @IBAction func btnPorcentaje(_ sender: Any) {
        var number1 = Double(labelMostrar.text!)
        number1 = number1!/100.0
        labelMostrar.text = String(number1!)
        NuevaAccion = true
    }
    
    
    
    @IBAction func btnIgual(_ sender: Any) {
        let number2 = Double(labelMostrar.text!)
        var resultado:Double?
        switch operacion {
        case "*":
            resultado = number1! * number2!
        case "/":
            resultado = number1! / number2!
        case "-":
            resultado = number1! - number2!
        case "+":
            resultado = number1! + number2!
            
        default:
            resultado = 0.0
        }
        labelMostrar.text = String(resultado!)
        NuevaAccion = true
    }
    
}

