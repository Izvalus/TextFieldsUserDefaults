//
//  ViewController.swift
//  TextFieldsUserDefaults
//
//  Created by Роман Мироненко on 25.10.2020.
//  Copyright © 2020 Роман Мироненко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var lastnameTextField: UITextField!
    @IBOutlet var saveButtonOutlet: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.text = Storage.example.name
        lastnameTextField.text = Storage.example.lastName
        
        corner(view: saveButtonOutlet, corner: 15)
    }

    @IBAction func saveButton(_ sender: UIButton) {
        Storage.example.name = nameTextField.text ?? ""
        Storage.example.lastName = lastnameTextField.text ?? ""
        nameTextField.text = ""
        lastnameTextField.text = ""
    }
    
    func corner(view: UIView, corner: CGFloat) {
        view.layer.cornerRadius = corner
    }
}

