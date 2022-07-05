//
//  Landmark.swift
//  spam-blocker-v0
//
//  Created by Seonghyun  Park on 6/18/22.
//

import Foundation
import CoreLocation
import SwiftUI
import Contacts

struct PhoneData: Hashable, Codable, Identifiable {
    var id: String 
    var name: String
    var who: String
    var type: String
    var date: String
    var block: Bool
    /*
    public func promptUserForContactAccess() {
            
            let alert = UIAlertController(title: "Access to contacts.",
                                          message: "This app requires access to contacts",
                                          preferredStyle: UIAlertController.Style.alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            
            let settingsAction = UIAlertAction(title: "Go to Settings", style: .default) { (UIAlertAction) in
                UIApplication.shared.open(NSURL.init(string: UIApplication.openSettingsURLString)! as URL, options: [:], completionHandler: nil)
            }
            alert.addAction(settingsAction)
            
        }
    
    func updateBlockedContactsList(contacts: [String]) {
            let defaults = UserDefaults(suiteName: "group.com.incomingBlocker")
            defaults?.removeObject(forKey: "blockList")
            defaults?.set(contacts, forKey: "blockList")
            defaults?.synchronize()
        }
    
    public func loadContacts() {
            
            let status = CNContactStore.authorizationStatus(for: CNEntityType.contacts) as CNAuthorizationStatus
            if status == CNAuthorizationStatus.denied || status == CNAuthorizationStatus.restricted {
                self.promptUserForContactAccess()
                return
            }
            
            let contactStore = CNContactStore()
            contactStore.requestAccess(for: .contacts, completionHandler: { (granted, error) -> Void in
                if granted == false {
                    // request again
                    self.promptUserForContactAccess()
                }
                else {
                    let predicate = CNContact.predicateForContactsInContainer(withIdentifier: contactStore.defaultContainerIdentifier())
                    var contacts: [CNContact]! = []
                    do {
                        contacts = try contactStore.unifiedContacts(matching: predicate, keysToFetch: [CNContactPhoneNumbersKey as CNKeyDescriptor])
                        if contacts.count == 0 {
                            return
                        }
                        
                        var finalArrayForContacts: [String] = []
                        for contactTemp in contacts {
                            let contactNew = contactTemp
                            var tempArray: [String] = []
                            if (contactNew.phoneNumbers).count > 0 {
                                var numArray : [CNLabeledValue<CNPhoneNumber>] = []
                                numArray = contactNew.phoneNumbers
                                for cnLblValue in numArray {
                                    let cnPhNum = cnLblValue.value
                                    if cnPhNum.stringValue.hasPrefix("+") {
                                        let tempStr = cnPhNum.stringValue.removeFormat()
                                        tempArray.append(tempStr)
                                    }
                                }
                                
                                for i in 0  ..< tempArray.count {
                                    let phoneNumber : String = (tempArray[i])
                                    if phoneNumber.count > 0 {
                                        let resultString : String = (phoneNumber.components(separatedBy: NSCharacterSet.whitespaces) as NSArray).componentsJoined(by: "")
                                        finalArrayForContacts.append(resultString)
                                    }
                                }
                            }
                        }
                        finalArrayForContacts.sort()
                        DispatchQueue.main.async {
                            self.updateBlockedContactsList(contacts: finalArrayForContacts)
                        }
                    }catch {
                        print(error)
                    }
                }
            })
        }
     */
}
