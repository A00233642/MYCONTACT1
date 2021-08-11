//
//  ContactDetailsTableViewController.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class ContactDetailsTableViewController: UITableViewController {
    
    @IBOutlet weak var lblFirstName: UILabel!
    
    @IBOutlet weak var lblLastName: UILabel!
    
    @IBOutlet weak var lblPhoneNumber: UILabel!
    
    var contact : ContactPerson!

    override func viewDidLoad() {
        super.viewDidLoad()
        lblFirstName.text = contact.firstName
        lblLastName.text = contact.lastName
        lblPhoneNumber.text = contact.phoneNumber

     
    }

  

}
