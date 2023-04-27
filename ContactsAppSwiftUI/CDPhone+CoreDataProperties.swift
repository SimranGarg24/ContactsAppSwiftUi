//
//  CDPhone+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData

extension CDPhone {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDPhone> {
        return NSFetchRequest<CDPhone>(entityName: "CDPhone")
    }

    @NSManaged public var type: String?
    @NSManaged public var id: UUID?
    @NSManaged public var phone: String?
    @NSManaged public var phnToContact: CDContact?

}

extension CDPhone : Identifiable {

}

extension CDPhone{
    
    /// to convert CDPhone type to Phone type
    /// - Returns: Phone type
    func convertToPhone() -> Phone{
        return Phone(id: self.id!, type: self.type!, phone: self.phone!)
    }
}
