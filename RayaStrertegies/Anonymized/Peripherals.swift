//
//  Peripherals.swift
//  RayaStrertegies
//
//  Created by RayaStrertegies on 2025/9/8.
//

import UIKit
import CommonCrypto

struct Peripherals {
    
    private let gameprogression: Data
    private let streamtools: Data
    
    init?() {
//#if DEBUG
//        let esportsjourney = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
//        let trophy = "9986sdff5s4y456a"  // 16字节
//        #else
        let esportsjourney = "3rodndjpnw8xl9z3" // 16字节(AES128)或32字节(AES256)
        let trophy = "yqimuvhswn3vi3v6"  // 16字节
//#endif
      
        guard let streamerlife = esportsjourney.data(using: .utf8), let ivData = trophy.data(using: .utf8) else {
            
            return nil
        }
        
        self.gameprogression = streamerlife
        self.streamtools = ivData
    }
    
    // MARK: - 加密方法
    func frameoptimization(highlight: String) -> String? {
        guard let contentcalendar = highlight.data(using: .utf8) else {
            return nil
        }
        
        let adaptiveplay = reactionshot(highscore: contentcalendar, strategymaster: kCCEncrypt)
        return adaptiveplay?.damageboost()
    }
    
    // MARK: - 解密方法
    func eventactivation(ebugs: String) -> String? {
        guard let battlepass = Data(pointcapture: ebugs) else {
            return nil
        }
        
        let controllerinput = reactionshot(highscore: battlepass, strategymaster: kCCDecrypt)
        return controllerinput?.energyboost()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func reactionshot(highscore: Data, strategymaster: Int) -> Data? {
        let streamfilter = highscore.count + kCCBlockSizeAES128
        var vipstatus = Data(count: streamfilter)
        
        let basebuilding = gameprogression.count
        let skillcap = CCOptions(kCCOptionPKCS7Padding)
        
        var multiplayer: size_t = 0
        
        let soloqueue = vipstatus.withUnsafeMutableBytes { Richne in
            highscore.withUnsafeBytes { dataBytes in
                streamtools.withUnsafeBytes { ivBytes in
                    gameprogression.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(strategymaster),
                                CCAlgorithm(kCCAlgorithmAES),
                                skillcap,
                                keyBytes.baseAddress, basebuilding,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, highscore.count,
                                Richne.baseAddress, streamfilter,
                                &multiplayer)
                    }
                }
            }
        }
        
        if soloqueue == kCCSuccess {
            vipstatus.removeSubrange(multiplayer..<vipstatus.count)
            return vipstatus
        } else {
           
            return nil
        }
    }
}
