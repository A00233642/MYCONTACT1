//
//  ContactPersonDataSource.swift
//  MYCONTACT1
//
//  Created by PRO on 8/11/21.
//

import UIKit

class ContactPersonDataSource: NSObject {
    var contacts = NSMutableArray()
    
    let contactURL: URL = {
        
        let documentDirectoriess = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentDirectoriess.first!
        return
            documentDirectory.appendingPathComponent("ContactPerson.archive")
        
    }()
     
    
    override init() {
        do{
      let data = try Data(contentsOf: contactURL)
       contacts =   try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as! NSMutableArray        }catch{
    }
     
    }
    func loadContacts(){
        let sample1 = ContactPerson()
        contacts.add(sample1)
        let sample2 = ContactPerson(withFirstName: "Taiwo", lastName: "Akintunde", phoneNumber: "+7234589")
        addContact(contact: sample2)
    }
    func  addContact(contact c: ContactPerson){
        contacts.add(c)
        save()
    }
    func countOfContacts () -> Int {
        return contacts.count
    }
    func contactAtIndex(index i: Int) -> ContactPerson {
        return contacts.object(at: i) as! ContactPerson
    }
    
    func deleteContact(at index:Int){
        contacts.removeObject(at: index)
         save()
    }
    func moveContacts(from fromIndex:Int, to toIndex: Int){
        let fromContact = contactAtIndex(index: fromIndex)
        let toContact = contactAtIndex(index: toIndex)
        contacts.replaceObject(at: fromIndex, with: toContact)
        contacts.replaceObject(at: toIndex, with: fromContact)
         save()
    }
    
    func save() -> Bool{
        do {
        let data = try NSKeyedArchiver.archivedData(withRootObject: contacts, requiringSecureCoding: false)
          try  data.write(to: contactURL)
        }catch{
            return false
        
        }
        
        print("data saved")
        return true
    }
    
    }
    
    
    
    

