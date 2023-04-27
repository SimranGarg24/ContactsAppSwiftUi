//
//  PhoneModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class Phone: Identifiable{
    
    let id:UUID
    var type: String
    var phone: String
    
    init(id: UUID, type: String, phone: String) {
        self.id = id
        self.type = type
        self.phone = phone
    }
}
