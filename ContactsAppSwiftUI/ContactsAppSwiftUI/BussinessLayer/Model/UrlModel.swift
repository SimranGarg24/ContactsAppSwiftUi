//
//  UrlModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class Url: Identifiable{
    
    let id:UUID
    var type: String
    var url: String
    
    init(id: UUID, type: String, url: String) {
        self.id = id
        self.type = type
        self.url = url
    }
}
