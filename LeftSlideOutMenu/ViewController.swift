//
//  ViewController.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/24/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataSentDelegate, UISearchBarDelegate {

    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!
    
    @IBOutlet weak var recevingLabel: UILabel!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activeIndicater: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // calling function
        webViewMethod()
        slideMenus()
    }

    func userDidEnterData(data: String) {
        recevingLabel.text = data
    }
    
    func webViewMethod() {
        
        let url = NSURL(string: "http://www.geekylemon.com")
        let request = URLRequest(url: url! as URL)
        webView.loadRequest(request)
        searchBar.text = "http://"
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        let text = searchBar.text
        let url = NSURL(string: text!)
        let request = URLRequest(url: url! as URL)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView){
        
        activeIndicater.startAnimating()
    }
    
    func webViewDidFinished(webView: UIWebView) {
        activeIndicater.stopAnimating()
    }
    
    func slideMenus() {
        // left side bar menu
        btnMenuButton.target = revealViewController()
        btnMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        revealViewController().rearViewRevealWidth = 275
        revealViewController().rightViewRevealWidth = 160
        
        // Right side bar menu
        alertButton.target = revealViewController()
        alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            
            let delegateVC: DelegateViewController = segue.destination as! DelegateViewController
            delegateVC.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

