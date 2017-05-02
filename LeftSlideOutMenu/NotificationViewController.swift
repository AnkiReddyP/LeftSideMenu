//
//  NotificationViewController.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/24/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit
import UserNotifications

class NotificationViewController: UIViewController, UNUserNotificationCenterDelegate {

    @IBAction func BackButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)

    }
    
    @IBAction func NotificationButton(_ sender: Any) {
        
        let anser1 = UNNotificationAction(identifier: "answer1", title: "365", options: UNNotificationActionOptions.foreground)
         let anser2 = UNNotificationAction(identifier: "answer2", title: "340", options: UNNotificationActionOptions.foreground)
        let category = UNNotificationCategory(identifier: "myCategory", actions: [anser1, anser2], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
        // Created notifications
        let content = UNMutableNotificationContent()
        content.title = "How many days are there in one year"
        content.subtitle = "Do you Know?"
        content.body = "Do you really know"
        content.categoryIdentifier = "myCategory"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        if response.actionIdentifier == "answer1"
        {
            print("CORRECT")
        } else {
            print("FALSE")
        }
        completionHandler()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: { didAllow, error in })
        UNUserNotificationCenter.current().delegate = self
        // Do any additional setup after loading the view.
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
