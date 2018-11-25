//
//  SecondViewController.swift
//  Protocol Data Passing Demo
//
//  Created by Nishant Rai on 25/11/18.
//  Copyright © 2018 Nishant Rai. All rights reserved.
//

import UIKit

protocol DataPassing {
    func data(object: [String:String])
}

class SecondViewController: UIViewController,Data {
  
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var txField2: UITextField!
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var textField1: UITextField!
       var delegate:DataPassing!
        
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SaveButtonTapped(_ sender: UIButton) {
     delegate.data(object: ["name" : textField1.text!, "address":txtField.text!, "money":txField2.text!])
        self.navigationController?.popViewController(animated: true)
    }
    
    func dataOfLabel(data: String) {
        nameLabel.text = data
    }



}
