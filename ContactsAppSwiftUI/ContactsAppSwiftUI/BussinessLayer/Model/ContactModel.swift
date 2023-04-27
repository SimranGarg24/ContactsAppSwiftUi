//
//  Contact Model.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 17/04/23.
//

import Foundation

//Data Model
class Contact: Identifiable{
    
    //MARK: Properties
    let id:UUID
    var firstName:String
    var lastName:String
    var company:String
    var profilePicture: Data
    var phone:[Phone]
    var url:[Url]
    var email: [Email]
    var address: [Address]
    var notes: String
    var socialProfile: [SocialProfile]
    var instantMssg: [InstantMessage]
    
    //MARK: Initializer
    init(id:UUID = UUID() , firstName: String, lastName: String, company: String, profilePicture: Data, phone: [Phone], url: [Url], email: [Email], address: [Address], notes: String, socialProfile: [SocialProfile], instantMssg: [InstantMessage]) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.company = company
        self.profilePicture = profilePicture
        self.phone = phone
        self.url = url
        self.email = email
        self.address = address
        self.notes = notes
        self.socialProfile = socialProfile
        self.instantMssg = instantMssg
    }
    
    //MARK: Method
    func getfullname() -> String {
        
        if !firstName.isEmpty && !lastName.isEmpty{
            return firstName.capitalized + " " + lastName.capitalized
        }
        else if !firstName.isEmpty {
            return firstName.capitalized
        }
        else if !lastName.isEmpty {
            return lastName.capitalized
        }
        else if !company.isEmpty {
            return company.capitalized
        }
        else if !email.isEmpty{
            return email[0].email
        }
        return ""
    }
}
