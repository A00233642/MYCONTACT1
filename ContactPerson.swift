//
//  ContactPerson.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class ContactPerson: NSObject, NSCoding {
    func encode(with coder: NSCoder) {
        coder.encode(firstName, forKey: "firstName")
        coder.encode(lastName, forKey: "lastName")
        coder.encode(phoneNumber, forKey: "phoneNumber")
    }
    
    required init?(coder: NSCoder) {
        firstName = coder.decodeObject(forKey: "firstName") as! String
        lastName = coder.decodeObject(forKey: "lastName") as! String
        phoneNumber = coder.decodeObject(forKey: "phoneNumber") as! String
        
        
    }
    
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
