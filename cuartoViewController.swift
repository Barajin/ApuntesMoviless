//
//  cuartoViewController.swift
//  Examen2
//
//  Created by mac11 on 09/11/18.
//  Copyright © 2018 mac11. All rights reserved.
//

import UIKit


class cuartoViewController: UIViewController
{
   
     var R = 0

    @IBOutlet weak var lblResultado: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        lblResultado.text = String(R)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
