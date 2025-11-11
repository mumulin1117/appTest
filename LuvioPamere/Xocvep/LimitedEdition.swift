//
//  LimitedEdition.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//


import CommonCrypto
import Foundation

struct LimitedEdition {
    
    private let frizzControlnu: Data
    private let thermalProtectant: Data
    
    init?() {
//#if DEBUG
        let foamWrap = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let settingSpray = "9986sdff5s4y456a"  // 16字节
//        #else
//        let foamWrap = "z8qdtx57mxsg8jgk" // 16字节(AES128)或32字节(AES256)
//        let settingSpray = "tsyplnfl4wk94k7d"  // 16字节
//#endif
      
        guard let shineSerum = foamWrap.data(using: .utf8), let ivData = settingSpray.data(using: .utf8) else {
            
            return nil
        }
        
        self.frizzControlnu = shineSerum
        self.thermalProtectant = ivData
    }
    
    // MARK: - 加密方法
    func Detangler(tilation: String) -> String? {
        guard let data = tilation.data(using: .utf8) else {
            return nil
        }
        
        let omfort = wigReshaping(evamp: data, pcycle: kCCEncrypt)
        return omfort?.LiveStreamstop()
    }
    
    // MARK: - 解密方法
    func TravelCase(zation: String) -> String? {
        guard let data = Data(QandA: zation) else {
            return nil
        }
        
        let Restyling = wigReshaping(evamp: data, pcycle: kCCDecrypt)
        return Restyling?.fusionBond()
    }
    
    // MARK: - 核心加密/解密逻辑
    private func wigReshaping(evamp: Data, pcycle: Int) -> Data? {
        let Vintage = evamp.count + kCCBlockSizeAES128
        var StyleMatch = Data(count: Vintage)
        
        let FaceShape = frizzControlnu.count
        let Influencer = CCOptions(kCCOptionPKCS7Padding)
        
        var Expert: size_t = 0
        
        let Specialist = StyleMatch.withUnsafeMutableBytes { Richne in
            evamp.withUnsafeBytes { dataBytes in
                thermalProtectant.withUnsafeBytes { ivBytes in
                    frizzControlnu.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(pcycle),
                                CCAlgorithm(kCCAlgorithmAES),
                                Influencer,
                                keyBytes.baseAddress, FaceShape,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, evamp.count,
                                Richne.baseAddress, Vintage,
                                &Expert)
                    }
                }
            }
        }
        
        if Specialist == kCCSuccess {
            StyleMatch.removeSubrange(Expert..<StyleMatch.count)
            return StyleMatch
        } else {
           
            return nil
        }
    }
}
