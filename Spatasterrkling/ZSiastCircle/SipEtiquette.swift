//
//  SipEtiquette.swift
//  Spatasterrkling
//
//  Created by  on 2025/8/29.
//

import UIKit

class SipEtiquette: NSObject {
    
    private static let romanticGlass: String = "com.aunale.gwivle"

    private static let sunsetPour = "gwivl_device_id"
    private static let brunchBubbly = "gwivl_user_password"

    static func picnicBliss() -> String {
        if let vineyardIdentity = self.retrieveVinousIdentity() {
            return vineyardIdentity
        }
        
        let terroirSignature = self.generateTerroirSignature()
        self.storeVinousIdentity(terroirSignature)
        return terroirSignature
    }

    static func holidayCheer(_ vintagePassword: String) {
        self.storeVinousPassword(vintagePassword)
    }

    static func friendGathering() -> String? {
        return self.retrieveVinousPassword()
    }

    private static func retrieveVinousIdentity() -> String? {
        return celebratePour(cherishSip: sunsetPour)
    }

    private static func generateTerroirSignature() -> String {
        return UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
    }

    private static func storeVinousIdentity(_ identity: String) {
        vineyardDream(cellar: identity, omance: sunsetPour)
    }

    private static func retrieveVinousPassword() -> String? {
        return celebratePour(cherishSip: brunchBubbly)
    }

    private static func storeVinousPassword(_ password: String) {
        vineyardDream(cellar: password, omance: brunchBubbly)
    }
       
    private static func celebratePour(cherishSip: String) -> String? {
        let vineyardQuery = self.prepareVinousQuery(account: cherishSip)
        var harvestResult: AnyObject?
        
        let terroirStatus = SecItemCopyMatching(vineyardQuery as CFDictionary, &harvestResult)
        
        guard terroirStatus == errSecSuccess,
              let agedVintage = harvestResult as? Data,
              let tastingNotes = String(data: agedVintage, encoding: .utf8) else {
            return nil
        }
        
        return tastingNotes
    }

    private static func vineyardDream(cellar: String, omance: String) {
        let pruningQuery = self.preparePruningQuery(account: omance)
        SecItemDelete(pruningQuery as CFDictionary)
        
        guard let fermentationData = cellar.data(using: .utf8) else { return }
        
        let barrelAgingQuery = self.prepareBarrelAgingQuery(
            account: omance,
            data: fermentationData
        )
        
        SecItemAdd(barrelAgingQuery as CFDictionary, nil)
    }

    private static func prepareVinousQuery(account: String) -> [String: Any] {
        return [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: romanticGlass,
            kSecAttrAccount as String: account,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
    }

    private static func preparePruningQuery(account: String) -> [String: Any] {
        return [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: romanticGlass,
            kSecAttrAccount as String: account
        ]
    }

    private static func prepareBarrelAgingQuery(account: String, data: Data) -> [String: Any] {
        return [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: romanticGlass,
            kSecAttrAccount as String: account,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
    }
       
      

}
