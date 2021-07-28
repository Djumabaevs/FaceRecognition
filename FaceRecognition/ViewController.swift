//
//  ViewController.swift
//  FaceRecognition
//
//  Created by Bakyt Dzhumabaev on 29/7/21.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signedIn(_ sender: Any) {
        
        let authContext = LAContext()
        
        var error: NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "is it you?") { (success, error) in
                if success == true {
                    //successful auth
                } else {
                    myLabel.text = "error"
                }
            }
            
        }
        
    }
    
}

