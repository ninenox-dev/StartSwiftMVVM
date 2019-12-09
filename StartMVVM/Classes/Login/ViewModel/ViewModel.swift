//
//  ViewModel.swift
//  StartMVVM
//
//  Created by Nisit Sirimarnkit on 8/12/2562 BE.
//  Copyright © 2562 Nisit Sirimarnkit. All rights reserved.
//

import Foundation
import UIKit

protocol ViewModelDelegate {
    func sendValue(from emailTextField: String?, passwordTextField: String?)

}

protocol ViewControllerDelegate: class {
    func getInformationBack(handleString: String?)
}

class ViewModel:ViewModelDelegate {
    
    weak var delegate: ViewControllerDelegate?
    var user: Profile
    
    init() {
        self.user = Profile()
    }
    
    func sendValue(from emailTextField: String?, passwordTextField: String?) {
        
        guard let email = emailTextField else {return}
        guard let password = passwordTextField else {return}
        print("email : \(email)")
        print("password : \(password)")
        var result = ""
        if email == "nisit" && password == "12345" {
            result = "login success."
        } else {
            result = "login fail."
        }
        delegate?.getInformationBack(handleString: result)
    }
    
    
}
