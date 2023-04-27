//
//  CDContact+CoreDataProperties.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//
//

import Foundation
import CoreData


extension CDContact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDContact> {
        return NSFetchRequest<CDContact>(entityName: "CDContact")
    }

    @NSManaged public var company: String?
    @NSManaged public var firstName: String?
    @NSManaged public var id: UUID?
    @NSManaged public var lastName: String?
    @NSManaged public var notes: String?
    @NSManaged public var profilePic: Data?
    @NSManaged public var toPhone: Set<CDPhone>?
    @NSManaged public var toEmail: Set<CDEmail>?
    @NSManaged public var toUrl: Set<CDUrl>?
    @NSManaged public var toAddress: Set<CDAddress>?
    @NSManaged public var toSocial: Set<CDSocialProfile>?
    @NSManaged public var toMssg: Set<CDInstantMessage>?

}

// MARK: Generated accessors for toPhone
extension CDContact {

    @objc(addToPhoneObject:)
    @NSManaged public func addToToPhone(_ value: CDPhone)

    @objc(removeToPhoneObject:)
    @NSManaged public func removeFromToPhone(_ value: CDPhone)

    @objc(addToPhone:)
    @NSManaged public func addToToPhone(_ values: Set<CDPhone>)

    @objc(removeToPhone:)
    @NSManaged public func removeFromToPhone(_ values: Set<CDPhone>)

}

// MARK: Generated accessors for toEmail
extension CDContact {

    @objc(addToEmailObject:)
    @NSManaged public func addToToEmail(_ value: CDEmail)

    @objc(removeToEmailObject:)
    @NSManaged public func removeFromToEmail(_ value: CDEmail)

    @objc(addToEmail:)
    @NSManaged public func addToToEmail(_ values: Set<CDEmail>)

    @objc(removeToEmail:)
    @NSManaged public func removeFromToEmail(_ values: Set<CDEmail>)

}

// MARK: Generated accessors for toUrl
extension CDContact {

    @objc(addToUrlObject:)
    @NSManaged public func addToToUrl(_ value: CDUrl)

    @objc(removeToUrlObject:)
    @NSManaged public func removeFromToUrl(_ value: CDUrl)

    @objc(addToUrl:)
    @NSManaged public func addToToUrl(_ values: Set<CDUrl>)

    @objc(removeToUrl:)
    @NSManaged public func removeFromToUrl(_ values: Set<CDUrl>)

}

// MARK: Generated accessors for toAddress
extension CDContact {

    @objc(addToAddressObject:)
    @NSManaged public func addToToAddress(_ value: CDAddress)

    @objc(removeToAddressObject:)
    @NSManaged public func removeFromToAddress(_ value: CDAddress)

    @objc(addToAddress:)
    @NSManaged public func addToToAddress(_ values: Set<CDAddress>)

    @objc(removeToAddress:)
    @NSManaged public func removeFromToAddress(_ values: Set<CDAddress>)

}

// MARK: Generated accessors for toSocial
extension CDContact {

    @objc(addToSocialObject:)
    @NSManaged public func addToToSocial(_ value: CDSocialProfile)

    @objc(removeToSocialObject:)
    @NSManaged public func removeFromToSocial(_ value: CDSocialProfile)

    @objc(addToSocial:)
    @NSManaged public func addToToSocial(_ values: Set<CDSocialProfile>)

    @objc(removeToSocial:)
    @NSManaged public func removeFromToSocial(_ values: Set<CDSocialProfile>)

}

// MARK: Generated accessors for toMssg
extension CDContact {

    @objc(addToMssgObject:)
    @NSManaged public func addToToMssg(_ value: CDInstantMessage)

    @objc(removeToMssgObject:)
    @NSManaged public func removeFromToMssg(_ value: CDInstantMessage)

    @objc(addToMssg:)
    @NSManaged public func addToToMssg(_ values: Set<CDInstantMessage>)

    @objc(removeToMssg:)
    @NSManaged public func removeFromToMssg(_ values: Set<CDInstantMessage>)

}

extension CDContact : Identifiable {

}
