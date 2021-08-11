//
//  ContactPersonDataSource.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class ContactPersonDataSource: NSObject {
    let contacts = NSMutableArray()
    
    override init() {
        super.init()
        loadContacts()
    }
     
    
    func loadContacts(){
        let sample1 = ContactPerson()
        contacts.add(sample1)
        let sample2 = ContactPerson(withFirstName: "Taiwo", lastName: "Akintunde", phoneNumber: "+7234589")
        addContact(contact: sample2)
    }
    func  addContact(contact c: ContactPerson){
        contacts.add(c)
    }
    func countOfContacts () -> Int {
        return contacts.count
    }
    func contactAtIndex(index i: Int) -> ContactPerson {
        return contacts.object(at: i) as! ContactPerson
    }
    
    
    }
    
    

