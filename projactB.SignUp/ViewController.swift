//
//  ViewController.swift
//  projactB.SignUp
//
//  Created by 박호현 on 2022/05/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func tapView2(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nameTextField.text = UserInformation.shared.name
        self.passwordTextField.text = UserInformation.shared.passward
    }

}

