//
//  ViewController.swift
//  Examen2
//
//  Created by mac11 on 08/11/18.
//  Copyright © 2018 mac11. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var Num = 0
    
    @IBAction func btnNumeros(_ sender: UIButton)
    {
        Num = sender.tag
        performSegue(withIdentifier: "Numero", sender: self)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let number = segue.destination as! OperadorViewController
        number.Num = self.Num
    }


}

