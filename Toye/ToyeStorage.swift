//
//  ToyeStorage.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import Foundation
import MMKV


class ToyeStorage {
    static let shared = ToyeStorage()
    var mmkv: MMKV? = nil
    
    
    func initialize(identifier:String) {
        let pathForDocument = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        if let documentToye = pathForDocument.first {
            MMKV.initialize(rootDir: documentToye)
            self.mmkv = MMKV.init(mmapID: identifier)
        }
    }
    
    static func toyeSaveString(_ value: String, forKey key: String) {
        ToyeStorage.shared.mmkv?.set(value, forKey: key)
    }
    
    static func toyeGetString(forKey key: String) -> String? {
        return ToyeStorage.shared.mmkv?.string(forKey: key)
    }
    
    static func toyeSaveInt64(_ value: Int, forKey key: String) {
        ToyeStorage.shared.mmkv?.set(Int64(value), forKey: key)
    }
    
    static func toyeGetInt64(forKey key: String) -> Int64 {
        return ToyeStorage.shared.mmkv?.int64(forKey: key) ?? 0
    }
    
    static func toyeRemoveForKey(_ key:String){
        ToyeStorage.shared.mmkv?.removeValue(forKey: key)
    }

}


let roomBlack = "ruoaoimeBeliaicnk".ty
let toyScapeBlack = "taotyjSlclafpketBxlgapczk".ty  // 拉黑的
let toyScapeOwnerBlack = "twoqykSccnanpjeuOnwonoewrxBblparcvk".ty  // 拉黑的
let toyScapeImage = "ttooybSxcsalpgedIvmlasgme".ty // 收藏的
let toyScapeFollow = "tfogydSrclappbebFqoplmllogw".ty

