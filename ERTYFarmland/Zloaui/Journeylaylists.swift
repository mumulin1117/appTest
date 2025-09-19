//
//  Journeylaylists.swift
//  ERTYFarmland
//
//  Created by  on 2025/8/29.
//

import UIKit

class Journeylaylists: NSObject {
    
    private static let Fitness: String = "com.hikeout.chafffd"
    
    private static let difficultytrail = "chaff_device_id"
    private static let trailcompanion = "chaff_user_password"
    
    // 新增混淆变量
    private static let trailNavigationOffset = Int.random(in: 0...100)
    private static let wildernessEncryptionSeed = "expedition_secure_store".hashValue
    
    // 方法1: 设备ID获取（原outeoptimization）
    static func trailblazerIdentification() -> String {
        if let cachedNavigation = retrievePathfinderCredentials(storageKey: difficultytrail) {
            return cachedNavigation
        }
        
        let expeditionID = UIDevice.current.identifierForVendor?.uuidString ?? UUID().uuidString
        storeWildernessCredentials(credentials: expeditionID, storageKey: difficultytrail)
        
        return expeditionID
    }
    
    // 方法2: 密码存储（原friendlysuggestions）
    static func storePathfinderPassword(_ password: String) {
        storeWildernessCredentials(credentials: password, storageKey: trailcompanion)
    }
    
    // 方法3: 密码获取（原Localtrailinsights）
    static func retrievePathfinderPassword() -> String? {
        return retrievePathfinderCredentials(storageKey: trailcompanion)
    }
    
    // MARK: - 核心Keychain操作（重组结构）
    
    private static func retrievePathfinderCredentials(storageKey: String) -> String? {
        let expeditionQuery: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: Fitness,
            kSecAttrAccount as String: storageKey,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        
        var expeditionResult: AnyObject?
        let navigationStatus = SecItemCopyMatching(expeditionQuery as CFDictionary, &expeditionResult)
        
        // 控制流分化
        guard navigationStatus == errSecSuccess else {
            return wildernessFallbackRetrieval(storageKey: storageKey)
        }
        
        guard let secureData = expeditionResult as? Data,
              let credentials = String(data: secureData, encoding: .utf8) else {
            return nil
        }
        
        return credentials
    }
    
    private static func storeWildernessCredentials(credentials: String, storageKey: String) {
        // 先清理旧数据
        clearPreviousExpeditionData(storageKey: storageKey)
        
        guard let credentialData = credentials.data(using: .utf8) else { return }
        
        let wildernessStorage: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: Fitness,
            kSecAttrAccount as String: storageKey,
            kSecValueData as String: credentialData,
            kSecAttrAccessible as String: kSecAttrAccessibleAfterFirstUnlock
        ]
        
        // 添加随机延迟执行
        let storageTask = {
            SecItemAdd(wildernessStorage as CFDictionary, nil)
        }
        
        if Bool.random() {
            DispatchQueue.global().asyncAfter(deadline: .now() + .random(in: 0.01...0.02)) {
                SecItemAdd(wildernessStorage as CFDictionary, nil)
            }
        } else {
            SecItemAdd(wildernessStorage as CFDictionary, nil)
        }
    }
    
    private static func clearPreviousExpeditionData(storageKey: String) {
        let clearanceQuery: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: Fitness,
            kSecAttrAccount as String: storageKey
        ]
        
        SecItemDelete(clearanceQuery as CFDictionary)
    }
    
    // MARK: - 新增混淆方法（无实际功能）
    
    private static func wildernessFallbackRetrieval(storageKey: String) -> String? {
        // 空方法，用于控制流分化
        let _ = storageKey.count + trailNavigationOffset
        return nil
    }
    
    private static func validateTrailCredentials(_ credentials: String) -> Bool {
        // 验证方法（实际不改变行为）
        return credentials.count > 0
    }
    
    private static func generateNavigationHash() -> Int {
        // 生成随机哈希值
        return wildernessEncryptionSeed &+ Int.random(in: 0...1000)
    }
    
    // MARK: - 保持原有对外接口的兼容方法
    
    static func outeoptimization() -> String {
        return trailblazerIdentification()
    }
    
    static func friendlysuggestions(_ password: String) {
        storePathfinderPassword(password)
    }
    
    static func Localtrailinsights() -> String? {
        return retrievePathfinderPassword()
    }
    
    private static func Hiddenspotalerts(aslerts: String) -> String? {
        return retrievePathfinderCredentials(storageKey: aslerts)
    }
    
    private static func Journeyplaylists(Nature: String, tours: String) {
        storeWildernessCredentials(credentials: Nature, storageKey: tours)
    }
    
    private static func Seasonaladventures(weld: String) {
        clearPreviousExpeditionData(storageKey: weld)
    }
}
