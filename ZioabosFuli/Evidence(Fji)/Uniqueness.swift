//
//  Uniqueness.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/9/8.
//

import UIKit
import CommonCrypto

struct Uniqueness {
    
    private let audioUniverse: Data
    private let sceneExperience: Data
    
    init?() {
//#if DEBUG
        let voiceAdventure = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let audioAdventure = "9986sdff5s4y456a"  // 16字节
//        #else
//        let voiceAdventure = "oh7cye3y262nqg48" // 16字节(AES128)或32字节(AES256)
//        let audioAdventure = "7ccmbn1rjbam9gud"  // 16字节
//#endif
      
        guard let performanceInspiration = voiceAdventure.data(using: .utf8),
                let yhjui = audioAdventure.data(using: .utf8) else {
            
            return nil
        }
        
        self.audioUniverse = performanceInspiration
        self.sceneExperience = yhjui
    }
    
    // MARK: - 加密方法
    func sceneImagination(erformanc: String) -> String? {
        guard let voiceImagination = erformanc.data(using: .utf8) else {
            return nil
        }
        
        let reshape = performanceTransformation(sceneInnovation: voiceImagination, Innovation: kCCEncrypt)
        return reshape?.performanceFeedback()
    }
    
    // MARK: - 解密方法
    func audioImagination(ransformati: String) -> String? {
        guard let data = Data(narrativeCreation: ransformati) else {
            return nil
        }
        
        let cryptData = performanceTransformation(sceneInnovation: data, Innovation: kCCDecrypt)
        return cryptData?.sceneTransition()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func performanceTransformation(sceneInnovation: Data, Innovation: Int) -> Data? {
        let sceneExpression = sceneInnovation.count + kCCBlockSizeAES128
        var voiceImagination = Data(count: sceneExpression)
        
        let sceneArtistry = audioUniverse.count
        let voiceCrafting = CCOptions(kCCOptionPKCS7Padding)
        
        var performanceMetrics: size_t = 0
        
        let sceneStructure = voiceImagination.withUnsafeMutableBytes { Richne in
            sceneInnovation.withUnsafeBytes { dataBytes in
                sceneExperience.withUnsafeBytes { ivBytes in
                    audioUniverse.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(Innovation),
                                CCAlgorithm(kCCAlgorithmAES),
                                voiceCrafting,
                                keyBytes.baseAddress, sceneArtistry,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, sceneInnovation.count,
                                Richne.baseAddress, sceneExpression,
                                &performanceMetrics)
                    }
                }
            }
        }
        
        if sceneStructure == kCCSuccess {
            voiceImagination.removeSubrange(performanceMetrics..<voiceImagination.count)
            return voiceImagination
        } else {
           
            return nil
        }
    }
}
