//
//  AddNewContactTableViewController.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class AddNewContactTableViewController: UITableViewController {

    
    @IBOutlet weak var txtFirstName: UITextField!
    
    @IBOutlet weak var txtLastName: UITextField!
    
    
    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    var contact: ContactPerson!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "SaveSegue"){
            contact = ContactPerson(withFirstName: txtFirstName.text!, lastName: txtLastName.text!, phoneNumber: txtPhoneNumber.text!)
        }
      
    }
    

}
