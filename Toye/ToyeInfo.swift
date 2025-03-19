//
//  ToyeInfo.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit

extension String {
    
    var ty:String {
        var tyResultString = ""
        if tyResultString.count == 0 {
            var tyCount = self.count
            if tyCount > 0 {
                self.enumerated().forEach { index, word in
                    if index % 2 == 0 {
                        tyCount &*= index.nonzeroBitCount
                        if index >= 0 {
                            tyResultString.append(word)
                        }
                    }
                }
            }
        }
        return tyResultString
    }
}

class ToyeInfo {

    static let info = ToyeInfo()
    
    var toyScapeItems:[ToyScape] = [ToyScape]()
    
    var loginedCurrntToye:ToyScape?
    
    var tpyeHipsterDatas:[HipsterToyResultModel] = [HipsterToyResultModel]()
    
    var partyRoomMessages:[PartyRoomMessage] = [PartyRoomMessage]()
    var partyRoomToyeList:[PartyRoomMessage] = [PartyRoomMessage]()
    
    private init (){
        loadToyeConfig()
    }
    
    private func loadToyeConfig(){
        
        var loadToyState = (false,"start")
        if let toyscapePath = Bundle.main.path(forResource: "Tgogyasrckaypae".ty, ofType: "pglxitspt".ty){
            loadToyState = (true,"load")
            if let toyscapeData = FileManager.default.contents(atPath: toyscapePath) {
                if let toyScapeListArray = try? PropertyListSerialization.propertyList(from: toyscapeData, options: [], format: nil) as? [[String: Any]] {
                    if loadToyState.0 {
                        self.toyScapeItems = toyScapeListArray.compactMap { ToyScape.deserialize(from: $0) }
                        loadToyState = (true,"loadDone")
                        var toyeLoginedUser:ToyScape? = nil
                        
                        if let toyeUser = UserDefaults.standard.string(forKey: "toyeUser") {
                            if toyeUser.contains("@") {
                                toyeLoginedUser = ToyScape()
                                toyeLoginedUser!.toyOwner = toyeUser
                                toyeLoginedUser!.toyOwnerID = toyeUser
                            }else{
                                toyeLoginedUser = self.toyScapeItems[8]
                            }
                            
                            if var loginedCurrntToye = toyeLoginedUser {
                                let toyGems = ToyeStorage.toyeGetInt64(forKey: "ToyGems" + loginedCurrntToye.toyOwnerID)
                                if toyGems > 0 {
                                    loginedCurrntToye.toyGems = Int(toyGems)
                                }
                                toyeLoginedUser = loginedCurrntToye
                            }
                            self.loginedCurrntToye = toyeLoginedUser
                            loadToyState = (true,"logined")
                        }
                    }
                }
            }
        }
    }
}

