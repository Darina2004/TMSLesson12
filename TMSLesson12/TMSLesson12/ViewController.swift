//
//  ViewController.swift
//  TMSLesson12
//
//  Created by Mac on 4.01.24.
//

import UIKit

class ViewController:  UIViewController {
    
    
    @IBOutlet weak var recieveLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        let secondVC: UIViewController = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondVC.modalPresentationStyle = .fullScreen
        
        (secondVC as! SecondViewController).delegate = self
        
        if let navigationController = navigationController {
            navigationController.pushViewController(secondVC, animated: true)
        } else {
            let navController = UINavigationController(rootViewController: secondVC)
            navController.navigationBar.prefersLargeTitles = true
            present(navController, animated: true, completion: nil)
        }
    }
}

extension ViewController: SecondViewControllerDelegate {
    func saveButtonTapped(text1: String, text2: String, text3: String){
        let result = "\(text1)\n\(text2)\n\(text3)"
        recieveLabel.text = result
        navigationController?.popViewController(animated: true)
    }
    
}
