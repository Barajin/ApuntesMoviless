//
//  ViewController.swift
//  calculadora
//
//  Created by CCDM16 on 11/10/18.
//  Copyright © 2018 CCDM16. All rights reserved.

//PROYECTO ACTUAL
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Resultado: UILabel!
    var NumPantalla: Double = 0
    var NumPrevio: Double = 0
    var Math = false
    var operacion = 0
    var historial = [String]()
    var result = ""
    
    @IBAction func Numeros(_ sender: UIButton) {
        if Math == true
        {
            Resultado.text = String(sender.tag-1)
            NumPantalla = Double(Resultado.text!)!
            Math = false
        }
        else{
            if Resultado.text == "0"
            {
                Resultado.text = ""
            }
            Resultado.text = Resultado.text! + String(sender.tag-1)
            NumPantalla = Double(Resultado.text!)!
        }
    }
    
    @IBAction func Operaciones(_ sender: UIButton) {
        
        if Resultado.text! != " " && sender.tag != 11
        {
            NumPrevio = Double(Resultado.text!)!
            if sender.tag == 12
            {
                Resultado.text = "+"
            }
            else if sender.tag == 13
            {
                Resultado.text = "-"
            }
            else if sender.tag == 14
            {
                Resultado.text = "*"
            }
            else if sender.tag == 15
            {
                Resultado.text = "/"
            }
            operacion = sender.tag
            Math = true
        }
        else if sender.tag == 11 //resultado
        {
            if operacion == 12
            {
                Resultado.text = String(NumPrevio + NumPantalla)
                result = "\(NumPrevio) + \(NumPantalla) = \(Resultado.text!)"
            }
            if operacion == 13
            {
                Resultado.text = String(NumPrevio - NumPantalla)
                result = "\(NumPrevio) - \(NumPantalla) = \(Resultado.text!)"
            }
            if operacion == 14
            {
                Resultado.text = String(NumPrevio * NumPantalla)
                result = "\(NumPrevio) * \(NumPantalla) = \(Resultado.text!)"
                
            }
            if operacion == 15
            {
                Resultado.text = String(NumPrevio / NumPantalla)
                result = "\(NumPrevio) / \(NumPantalla) = \(Resultado.text!)"
                
            }
            historial.append(result)
        }
        else if sender.tag == 11
        {
            doubleTapped()
        }
    }
    
    @IBAction func Historial(_ sender: UIBarButtonItem) {
       
        performSegue(withIdentifier: "segueHistorial", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.numberOfTapsRequired = 2
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    @objc func doubleTapped() {
        Resultado.text = "0"
        NumPantalla = 0
        NumPrevio = 0
        operacion = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let his = segue.destination as! HistorialCell
        his.historial = self.historial
        
    }

}
