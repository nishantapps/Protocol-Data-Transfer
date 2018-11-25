//
//  ViewController.swift
//  Protocol Data Passing Demo
//
//  Created by Nishant Rai on 25/11/18.
//  Copyright © 2018 Nishant Rai. All rights reserved.
//

import UIKit

protocol Data {
    func dataOfLabel(data:String)
}

class ViewController: UIViewController,DataPassing {
   
    

    @IBOutlet weak var nameTextFielfd: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
  
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    var data:Data!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func goToForm(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.delegate = self
        data.dataOfLabel(data: nameTextFielfd.text!)
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    func data(object: [String : String]) {
        nameLabel.text = object["name"]
        addressLabel.text = object["address"]
        moneyLabel.text = object["money"]
    }
    

}

