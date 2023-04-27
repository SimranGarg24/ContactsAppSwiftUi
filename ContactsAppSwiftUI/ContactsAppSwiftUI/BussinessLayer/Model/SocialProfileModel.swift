//
//  SocialProfileModel.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

class SocialProfile: Identifiable{
    
    let id:UUID
    var type: String
    var socialProfile: String
    
    init(id: UUID, type: String, socialProfile: String) {
        self.id = id
        self.type = type
        self.socialProfile = socialProfile
    }
}
