//
//  CDUrl+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDUrl {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDUrl> {
        return NSFetchRequest<CDUrl>(entityName: "CDUrl")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var type: String?
    @NSManaged public var url: String?
    @NSManaged public var urlToContact: CDContact?

}

extension CDUrl : Identifiable {

}

extension CDUrl{
    
    /// to convert CDUrl type to Url type
    /// - Returns: Url type
    func convertToUrl() -> Url{
        return Url(id: self.id!, type: self.type!, url: self.url!)
    }
}
