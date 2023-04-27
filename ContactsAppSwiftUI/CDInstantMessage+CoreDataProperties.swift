//
//  CDInstantMessage+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDInstantMessage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDInstantMessage> {
        return NSFetchRequest<CDInstantMessage>(entityName: "CDInstantMessage")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var type: String?
    @NSManaged public var instantMessage: String?
    @NSManaged public var mssgToContact: CDContact?

}

extension CDInstantMessage : Identifiable {

}

extension CDInstantMessage{
    
    
    /// to convert CDInstantMessage type to InstantMessage type
    /// - Returns: InstantMessage type
    func convertToInstant() -> InstantMessage{
        return InstantMessage(id: self.id!, type: self.type!, instantMssg: self.instantMessage!)
    }
}
