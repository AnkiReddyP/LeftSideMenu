//
//  FaceBookIntegration.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/25/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class FaceBookIntegration: UIViewController, FBSDKLoginButtonDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        faceBookLoginButton()
        
        // Do any additional setup after loading the view.
    }
    
    func faceBookLoginButton() {
        
        let facebookButton = FBSDKLoginButton()
        view.addSubview(facebookButton)
        //facebookButton.setTitle("Login With FaceBook", for: .normal)
        facebookButton.frame = CGRect(x: 15, y: 100, width: view.frame.width - 35, height: 50)
        facebookButton.delegate = self
    }
    
    public func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!){
        
        if error != nil {
            print(error)
            return
        }
        print("Successfully login with FaceBook")
    }
    
    /**
     Sent to the delegate when the button was used to logout.
     - Parameter loginButton: The button that was clicked.
     */
    public func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        
        print("Did log out of FaceBook")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
