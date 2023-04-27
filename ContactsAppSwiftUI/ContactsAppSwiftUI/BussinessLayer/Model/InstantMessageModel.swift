//
//  InstantMessageModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class InstantMessage: Identifiable{
    
    let id:UUID
    var type: String
    var instantMssg: String
    
    init(id: UUID, type: String, instantMssg: String) {
        self.id = id
        self.type = type
        self.instantMssg = instantMssg
    }
}
