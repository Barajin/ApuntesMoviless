//
//  TercerViewController.swift
//  Examen2
//
//  Created by mac11 on 08/11/18.
//  Copyright © 2018 mac11. All rights reserved.
//

import UIKit

class TercerViewController: UIViewController {
    
    var Num = 0
    var Operador = 0
    var NumOperador = ""
    var resultado: Double = 0
    var Num2 = 0
    
    @IBOutlet weak var lblNumOperador: UILabel!
    @IBOutlet weak var TFNumero: UITextField!
    
    @IBOutlet weak var resultadooo: UILabel!
    @IBAction func btnIgual(_ sender: UIButton)
    {
       // Num2 = Double(TFNumero)!
        resultadooo.text = String(resultado)

        if Operador == 1
        {
                resultado = Double(Num * Num2)
            
        }
        else if Operador == 2
        {
            resultado = Double(Num / Num2)
        }
        resultadooo.text = String(resultado)
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        lblNumOperador.text = NumOperador
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //esto es para validar si es numero
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let aSet = NSCharacterSet(charactersIn:"0123456789").inverted
        let compSepByCharInSet = string.components(separatedBy: aSet)
        let numberFiltenetworking = compSepByCharInSet.joined(separator: "")
        return string == numberFiltenetworking
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
         let x = segue.destination as! cuartoViewController
        x.R = Int(self.resultado)
            
        
        
    }
            
}
