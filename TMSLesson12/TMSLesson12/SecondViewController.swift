//
//  SecondViewController.swift
//  DelegatesAndCompletionBlocks
//
//  Created by berdy on 26.12.23.
//

import Foundation
import UIKit

protocol SecondViewControllerDelegate: AnyObject {
    func saveButtonTapped(text1: String, text2: String, text3: String)
}

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
 
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        textField.delegate = self
        textField2.delegate = self
        textField3.delegate = self
    }
    
    @IBAction func SaveButton(_ sender: Any) {
        if let delegate = delegate {
            delegate.saveButtonTapped(text1: textField.text ?? "", text2: textField2.text ?? "", text3: textField3.text ?? "")
        }
    }
    
    
    
}


