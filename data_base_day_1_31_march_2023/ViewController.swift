//
//  ViewController.swift
//  data_base_day_1_31_march_2023
//
//  Created by R&W on 31/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfiled1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Sqlite.creatFile()
    }

    @IBAction func loginButtonAction(_ sender: Any) {
        if let x = textfiled1.text,let y = Int(x){
            Sqlite.addData(id: y, name: textfield2.text!)
        }
        
    }
    
}

