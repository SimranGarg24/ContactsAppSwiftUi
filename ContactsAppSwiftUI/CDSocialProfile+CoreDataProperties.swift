//
//  CDSocialProfile+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDSocialProfile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDSocialProfile> {
        return NSFetchRequest<CDSocialProfile>(entityName: "CDSocialProfile")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var type: String?
    @NSManaged public var socialProfile: String?
    @NSManaged public var socialToContact: CDContact?

}

extension CDSocialProfile : Identifiable {

}

extension CDSocialProfile{
    
    /// to convert CDSocialProfile type to SocialProfile type
    /// - Returns: SocialProfile type
    func convertToSocial() -> SocialProfile{
        return SocialProfile(id: self.id!, type: self.type!, socialProfile: self.socialProfile!)
    }
}
