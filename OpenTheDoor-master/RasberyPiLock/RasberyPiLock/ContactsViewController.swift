//
//  ContactsViewController.swift
//  RasberyPiLock
//
//  Created by chalapati rao avadhanula venkata on 11/29/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import Foundation
import UIKit

class ContactsViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var contactstable: UITableView!
    var visitorlist = ["User1", "User2", "User3", "User4"]
    var imagelist:NSArray = ["User1", "User2", "User3", "User4"]
    var newcontact = String("")
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return visitorlist.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell") as! customtableview
       cell.contactsview.layer.cornerRadius = cell.contactsview.frame.height/3
       cell.contactsname.text = visitorlist[indexPath.row]
       cell.contactsimage.image = UIImage(named: visitorlist[indexPath.row])
       cell.contactsimage.layer.cornerRadius = cell.contactsview.frame.height/4
       return cell
    }
    
    override func viewDidLoad() {
        contactstable.delegate = self
        contactstable.dataSource = self
        super.viewDidLoad()
        visitorlist.append(newcontact)
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
