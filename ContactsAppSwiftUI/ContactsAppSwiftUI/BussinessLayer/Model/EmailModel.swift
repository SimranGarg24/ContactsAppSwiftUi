//
//  EmailModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class Email: Identifiable{
    
    let id:UUID
    var type: String
    var email: String
    
    init(id: UUID, type: String, email: String) {
        self.id = id
        self.type = type
        self.email = email
    }
}
