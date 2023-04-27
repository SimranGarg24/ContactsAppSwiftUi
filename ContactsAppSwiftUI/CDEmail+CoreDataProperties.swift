//
//  CDEmail+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDEmail {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDEmail> {
        return NSFetchRequest<CDEmail>(entityName: "CDEmail")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var type: String?
    @NSManaged public var email: String?
    @NSManaged public var emailToContact: CDContact?

}

extension CDEmail : Identifiable {

}

extension CDEmail{
    
    /// to convert CDEmail type to Email type
    /// - Returns: Email type
    func convertToEmail() -> Email{
        return Email(id: self.id!, type: self.type!, email: self.email!)
    }
}

