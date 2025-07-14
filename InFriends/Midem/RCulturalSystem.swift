
import Foundation


import RealmSwift
import KakaJSON

struct RCulturalSystem:Convertible {
    var robotId: String = ""
    var pic: String = ""
    var nickname: String = ""
    var desc: String = ""
    var userHeader: String = ""
    var paraphracourse: String = ""
    var isCollect: Bool = false
    var robotAuther:String = ""
    var tag: String = ""
    var buy:Bool = false
    
    var connectorsNum = Int.random(in: 0...10)
}

class RobotModelObject: Object {
    @Persisted(primaryKey: true) var robotId: String = ""
    @Persisted var pic: String = ""
    @Persisted var nickname: String = ""
    @Persisted var desc: String = ""
    @Persisted var userHeader: String = ""
    @Persisted var paraphracourse: String = ""
    @Persisted var isCollect: Bool = false
    @Persisted var robotAuther: String = ""
    @Persisted var tag: String = ""
    @Persisted var buy: Bool = false


    // 从结构体初始化 Realm 对象
    convenience init(robotModel: RCulturalSystem) {
        self.init()
        self.robotId = robotModel.robotId
        self.pic = robotModel.pic
        self.nickname = robotModel.nickname
        self.desc = robotModel.desc
        self.userHeader = robotModel.userHeader
        self.paraphracourse = robotModel.paraphracourse
        self.isCollect = robotModel.isCollect
        self.robotAuther = robotModel.robotAuther
        self.tag = robotModel.tag
        self.buy = robotModel.buy
    }

    // 将 Realm 对象转换为结构体
    func toStruct() -> RCulturalSystem {
        return RCulturalSystem(robotId: robotId,pic: pic,nickname: nickname,desc: desc,userHeader: userHeader,paraphracourse: paraphracourse,isCollect: isCollect,robotAuther: robotAuther,tag: tag,buy: buy)
    }
}
