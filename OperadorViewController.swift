//
//  OperadorViewController.swift
//  Examen2
//
//  Created by mac11 on 08/11/18.
//  Copyright © 2018 mac11. All rights reserved.
//

import UIKit

class OperadorViewController: UIViewController {
    
    @IBOutlet weak var lblNumAnt: UILabel!
    var Num = 0
    var Operador = 0
    var NumOperador = ""
    
    @IBAction func btnOperador(_ sender: UIButton) {
        if sender.tag == 1
        {
            NumOperador = "\(Num) *"
        }
        else if sender.tag == 2
        {
            NumOperador = "\(Num) /"
        }
        Operador = sender.tag
        performSegue(withIdentifier: "Operador", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblNumAnt.text = String(Num)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let NumOp = segue.destination as! TercerViewController
        NumOp.NumOperador = self.NumOperador
        NumOp.Num = self.Num
        NumOp.Operador = self.Operador
    }

}
