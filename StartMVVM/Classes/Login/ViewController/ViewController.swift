//
//  ViewController.swift
//  StartMVVM
//
//  Created by Nisit Sirimarnkit on 8/12/2562 BE.
//  Copyright © 2562 Nisit Sirimarnkit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.delegate = self
    }

    
    @IBAction func clickLoginButton(_ sender: Any) {
        viewModel.sendValue(from: emailTextField.text, passwordTextField: passwordTextField.text)
    }
    
}

extension ViewController: ViewControllerDelegate {
    func getInformationBack(handleString: String?) {
        guard let handleString = handleString else {return}
        print("The string get from viewmodel : \(handleString)")
    }
    
    
}

