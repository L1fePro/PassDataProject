//
//  ViewController.swift
//  PassDataProject
//
//  Created by L1fePro on 12.08.2019.
//  Copyright © 2019 L1fePro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var returnLabel: UILabel!


    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    
    
    
    @IBAction func unwindToMainScreen (segue: UIStoryboardSegue) {
        guard segue.identifier == "uwindSegue" else {return}
        
       guard let svc = segue.source as? SecondViewController else {return}
        self.returnLabel.text = svc.label.text
    }
    
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTextField.text
    }
    
}

