//
//  RightMenuTableViewTableViewController.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/24/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

var rightMenuNamesArray: Array = [String]()
var rightIconImagesArray: Array = [String]()

class RightMenuTableViewTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var menuImgProfile: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animatedImage()
        
        rightMenuNamesArray = ["Home","Messages","Notifications","Gallery","Map","Payments","Help","Share","InviteFriends","Settings"]
        rightIconImagesArray = ["Home","Message","Notifications","Gallery","Map","Payments","Help","Share","InviteFriends","Settings"]
        
    }
    
    func animatedImage() {
        menuImgProfile.layer.borderColor = UIColor.red.cgColor
        menuImgProfile.layer.borderWidth = 2
        menuImgProfile.layer.cornerRadius = 60
        menuImgProfile.layer.masksToBounds = false
        menuImgProfile.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rightMenuNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RightMenuTableViewCell
        
        cell.rightMenuLabel.text = rightMenuNamesArray[indexPath.row]
        cell.rightMenuImageView.image = UIImage(named: rightIconImagesArray[indexPath.row] + ".png")
        cell.rightMenuImageView.layer.borderColor = UIColor.red.cgColor
        cell.rightMenuImageView.layer.borderWidth = 2
        cell.rightMenuImageView.layer.cornerRadius = 25
        cell.rightMenuImageView.layer.masksToBounds = false
        cell.rightMenuImageView.clipsToBounds = true
        
        if indexPath.row % 2 == 0
        {
            cell.backgroundColor = UIColor.cyan
        }
        else
        {
            cell.backgroundColor = UIColor.white
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let revealViewController: SWRevealViewController = self.revealViewController()
        let cell: RightMenuTableViewCell = tableView.cellForRow(at: indexPath) as! RightMenuTableViewCell
        
        if cell.rightMenuLabel.text! == "Home" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Messages" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "MessagesViewController") as! MessagesViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Notifications" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Gallery" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "GalleryViewController") as! GalleryViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Map" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Payments" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! PaymentsViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "InviteFriends" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Help" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! HelpViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Settings" {
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.rightMenuLabel.text! == "Share" {
            
            let shareVC = UIActivityViewController(activityItems: ["www.google.com"], applicationActivities: nil)
            shareVC.popoverPresentationController?.sourceView = self.view
            self.present(shareVC, animated: true, completion: nil)
            
            /*
            let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let destController = mainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! ShareViewController
            let newFrontViewController = UINavigationController.init(rootViewController: destController)
            revealViewController.pushFrontViewController(newFrontViewController, animated: true)
            */
            
        }
        
    }
    
}
