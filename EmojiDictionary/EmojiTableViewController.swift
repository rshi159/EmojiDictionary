//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Robert Shi on 8/8/18.
//  Copyright © 2018 Robert Shi. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    var emoji = ["😇", "😀", "😅","😍"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emoji.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = emoji[indexPath.row]
        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segue1", sender: nil)
    }
    

}
