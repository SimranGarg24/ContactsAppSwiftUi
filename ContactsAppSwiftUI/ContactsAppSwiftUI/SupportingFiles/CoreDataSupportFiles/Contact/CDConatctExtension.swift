//
//  CDConatctExtension.swift
//  ContactsAppSwiftUI
//
//  Created by Saheem Hussain on 27/04/23.
//

import Foundation

extension CDContact{
    
    
    /// to convert CDContact type to Contact type
    /// - Returns: Contact type
    func convertToContact() -> Contact{
        
        return Contact(id: self.id!, firstName: self.firstName!, lastName: self.lastName!, company: self.company!, profilePicture: self.profilePic!, phone: self.convertToPhone() ?? [] , url: self.convertToURL() ?? [], email: self.convertToEmail() ?? [], address: self.convertToAddress() ?? [], notes: self.notes!, socialProfile: self.convertToSocialProfile() ?? [], instantMssg: self.convertToInstant() ?? [])
    }
    
    
    
    ///  checks if the CDContact has phone numbers, if yes returns the array of phone numbers
    /// - Returns: Array of Phone type if it exists otherwise nil
    private func convertToPhone() -> [Phone]? {
        
        //toPhone is of type Set<CDPhone>
        guard self.toPhone != nil && self.toPhone?.count != 0 else {
            return nil
        }
        
        var phoneNumbers: [Phone] = []
        
        self.toPhone?.forEach({ (cdPhone) in
            //add phone numbers of type Phone to array
            phoneNumbers.append(cdPhone.convertToPhone())
        })
        
        return phoneNumbers
    }
    
    ///  checks if the CDContact has urls, if yes returns the array of url
    /// - Returns: Array of Url  type if it exists otherwise nil
    private func convertToURL() -> [Url]? {
        
        //toUrl is of type Set<CDUrl>
        guard self.toUrl != nil && self.toUrl?.count != 0 else {
            return nil
        }
        
        var urls: [Url] = []
        
        self.toUrl?.forEach({ (cdUrl) in
            urls.append(cdUrl.convertToUrl())
        })
        
        return urls
    }
    
    ///  checks if the CDContact has email, if yes returns the array of email
    /// - Returns: Array of Email  type if it exists otherwise nil
    private func convertToEmail() -> [Email]? {
        
        //toEmail is of type Set<CDEmail>
        guard self.toEmail != nil && self.toEmail?.count != 0 else {
            return nil
        }
        
        var emails: [Email] = []
        
        self.toEmail?.forEach({ (cdEmail) in
            emails.append(cdEmail.convertToEmail())
        })
        
        return emails
    }
    
    ///  checks if the CDContact has address, if yes returns the array of address
    /// - Returns: Array of Address type if it exists otherwise nil
    private func convertToAddress() -> [Address]? {
        
        //toAddress is of type Set<CDAddress>
        guard self.toAddress != nil && self.toAddress?.count != 0 else {
            return nil
        }
        
        var address: [Address] = []
        
        self.toAddress?.forEach({ (cdAddress) in
            address.append(cdAddress.convertToAddress())
        })
        
        return address
    }
    
    ///  checks if the CDContact has social profiles, if yes returns the array of social profiles
    /// - Returns: Array of SocialProfile type if it exists otherwise nil
    private func convertToSocialProfile() -> [SocialProfile]? {
        
        //toSocial is of type Set<CDSocialProfile>
        guard self.toSocial != nil && self.toSocial?.count != 0 else {
            return nil
        }
        
        var profiles: [SocialProfile] = []
        
        self.toSocial?.forEach({ (cdSocial) in
            profiles.append(cdSocial.convertToSocial())
        })
        
        return profiles
    }
    
    ///  checks if the CDContact has InstantMessage, if yes returns the array of InstantMessage
    /// - Returns: Array of InstantMessage type if it exists otherwise nil
    private func convertToInstant() -> [InstantMessage]? {
        
        //toMssg is of type Set<CDInstantMessage>
        guard self.toMssg != nil && self.toMssg?.count != 0 else {
            return nil
        }
        
        var messages: [InstantMessage] = []
        
        self.toMssg?.forEach({ (cdInstant) in
            messages.append(cdInstant.convertToInstant())
        })
        
        return messages
    }
}
