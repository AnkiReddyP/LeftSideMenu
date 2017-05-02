//
//  LeftMenuTableView.swift
//  LeftSlideOutMenu
//
//  Created by anki on 4/24/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

var leftMenuNamesArray: Array = [String]()
var leftIconImagesArray: Array = [String]()

class LeftMenuTableView: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        leftMenuNamesArray = ["Home","Messages","Notifications","Gallery","Map","Settings"]
        leftIconImagesArray = ["Home","Message","Notifications","Gallery","Map","Settings"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return leftMenuNamesArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LeftMenuTableViewCell

        cell.leftMenuLabel.text = leftMenuNamesArray[indexPath.row]
        cell.leftMenuImage.image = UIImage(named: leftIconImagesArray[indexPath.row] + ".png")
        cell.leftMenuImage.layer.borderColor = UIColor.red.cgColor
        cell.leftMenuImage.layer.borderWidth = 0.5
        cell.leftMenuImage.layer.cornerRadius = 25
        cell.leftMenuImage.layer.masksToBounds = false
        cell.leftMenuImage.clipsToBounds = true
        
        return cell
    }

}
