//
//  ToyTalkRoom.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import Foundation
import HandyJSON

struct ToyTalkRoom: HandyJSON {
    var roomID = ""
    var talkRoomName = ""
    var talkRoomInitiatorID = ""
    var talkRoomInitiator = ""
    var talkRoomDescription = ""
    var talkRoomWelcome = ""
    var talkRoomChild = Int.random(in: 5..<7)
    
}


struct ToyScape: HandyJSON {
    var toyOwner = ""
    var toyOwnerID = ""
    var toyIntroduction = ""
    var toyImage = ""
    var toyCreateAt = ""
    var toyGems:Int = 0
    var toyFansNum = Int.random(in: 3...10)
    var toyFansNumF = Int.random(in: 3...10)
    
}
