
import Foundation
import RealmSwift

func getCurrentTime()->String{
    let currentDate = Date()
    let timestamp = currentDate.timeIntervalSince1970
    return "\(timestamp)"
}

func getCurrentTimeDouble()->Double{
    let currentDate = Date()
    return currentDate.timeIntervalSince1970
}

class UserInfoInstance {

    static let shared = UserInfoInstance()
    
    var realmObj:Realm?
    
    private init() {}
    var hotString:String = ""
    
    var haveRecovery:UhaviorSyste?
    var coolSing:String = ""
    var moonLalerist:[UhaviorSyste]?
    var windSing:String = ""
    var allRobot:[RCulturalSystem]?
    var firettring:String = ""
    var continuityLogic:[UhaviorSyste]?
    
    
    func multiTurn(){

        let loadOperations = [
                ("ac", { (json: [[String: Any]]) in self.moonLalerist = json.kj.modelArray(UhaviorSyste.self) }),
                ("robot", { (json: [[String: Any]]) in self.allRobot = json.kj.modelArray(RCulturalSystem.self) }),
                ("user", { (json: [[String: Any]]) in self.continuityLogic = json.kj.modelArray(UhaviorSyste.self) })
            ]
            
            loadOperations.forEach { filename, handler in
                if let data = retentionAnalysis(Oaname: filename) {
                    do {
                        if let jsonArray = try JSONSerialization.jsonObject(with: data) as? [[String: Any]] {
                            handler(jsonArray)
                        }
                    } catch {
                        print("Failed to parse JSON: \(error)")
                    }
                }
            }
        
        getuseringot() 
    }
    
    
    func getuseringot()  {
        if let userID = UserDefaults.standard.string(forKey: "userId") {
            let realm = try! Realm()
            let users = realm.objects(UslocalSystem.self).filter("userId == '\(userID)'")
            
            guard users.count > 0 else {return}
            let m = users.first?.toStruct()
            UserInfoInstance.shared.haveRecovery = m
        }
    }
   
    
    func getAllRobot(){
        let realm = try! Realm()
        if let arr = self.allRobot {
            for model in arr {
                let obj = RobotModelObject(robotModel: model)
                try! realm.write {
                    realm.add(obj,update: .modified)
                }
            }
        }
        
        if let arr = self.continuityLogic {
            for model in arr {
                let obj = UslocalSystem(modernShot: model)
                try! realm.write {
                    realm.add(obj,update: .modified)
                }
            }
        }
    }
}


extension UserInfoInstance{
    private func retentionAnalysis(Oaname: String) -> Data? {
        guard !Oaname.isEmpty else {
               
                return nil
            }
            
            let url = Bundle.main.url(forResource: Oaname, withExtension: "json")
            let data = url.flatMap { try? Data(contentsOf: $0) }
            
            if data == nil {
                
            }
        return data
    }
}
