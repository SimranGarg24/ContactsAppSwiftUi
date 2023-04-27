//
//  CDAddress+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDAddress {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDAddress> {
        return NSFetchRequest<CDAddress>(entityName: "CDAddress")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var type: String?
    @NSManaged public var street1: String?
    @NSManaged public var street2: String?
    @NSManaged public var city: String?
    @NSManaged public var state: String?
    @NSManaged public var zip: String?
    @NSManaged public var country: String?
    @NSManaged public var addToContact: CDContact?

}

extension CDAddress : Identifiable {

}

extension CDAddress{
    
    /// to convert CDAddress type to Address type
    /// - Returns: Address type
    func convertToAddress() -> Address{
        return Address(id: self.id!, type: self.type!, street1: self.street1!, street2: self.street2!, city: self.city!, state: self.state!, zip: self.zip!, country: self.country!)
    }
}
