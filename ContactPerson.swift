//
//  ContactPerson.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class ContactPerson: NSObject {
    var firstName : String!
    var lastName : String!
    var  phoneNumber : String!
    
    override init() {
        firstName = "Taiwo"
        lastName = "Akintunde"
        phoneNumber = "+74567890"
        super.init()
    }
    
    init(withFirstName first:String, lastName last:String, phoneNumber number:String) {
        
        firstName = first
        lastName = last
        phoneNumber = number
        super.init()
    }
    
    
}
