//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by L1fePro on 12.08.2019.
//  Copyright © 2019 L1fePro. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var login: String!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed (button: UIButton) {
        performSegue(withIdentifier: "uwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else {return}
     label.text = "Hello, \(login)"
    }
    
}
