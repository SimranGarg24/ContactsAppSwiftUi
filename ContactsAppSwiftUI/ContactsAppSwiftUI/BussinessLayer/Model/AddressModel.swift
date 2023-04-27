//
//  AddressModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class Address: Identifiable{
    
    let id: UUID
    var type: String
    var street1: String
    var street2: String
    var city: String
    var state: String
    var zip: String
    var country: String
    
    init(id: UUID, type: String, street1: String, street2: String, city: String, state: String, zip: String, country: String) {
        self.id = id
        self.type = type
        self.street1 = street1
        self.street2 = street2
        self.city = city
        self.state = state
        self.zip = zip
        self.country = country
    }
}
