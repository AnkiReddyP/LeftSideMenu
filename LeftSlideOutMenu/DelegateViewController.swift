//
//  DelegateViewController.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/25/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    
    func userDidEnterData(data: String)
}

class DelegateViewController: UIViewController {

    var delegate: DataSentDelegate? = nil
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButton(_ sender: Any) {
        
        if delegate != nil {
            if dataEntryTextField.text != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                //dismiss(animated: true, completion: nil)
                navigationController?.popViewController(animated: true)
            }
        }
        
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
