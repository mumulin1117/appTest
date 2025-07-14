
import Foundation
import RealmSwift
import KakaJSON
import Toast_Swift
struct MsituationalS:Convertible {
    var messageID = getCurrentTime()
    var direction = 0 // 0 左，1右
    var robotID = ""
    var messageContent = ""
    var timespam = getCurrentTime()
    var remoteType = 0 // 0 机器人  1 用户
}

class MsituationalSObject:Object {
    @Persisted(primaryKey: true) var messageID: String = ""
    @Persisted var direction: Int = 0
    @Persisted var robotID: String = ""
    @Persisted var messageContent: String = ""
    @Persisted var timespam: String = ""
    @Persisted var remoteType: Int = 0
    
    // 从结构体初始化 Realm 对象
    convenience init(model: MsituationalS) {
        self.init()
        self.messageID = model.messageID
        self.direction = model.direction
        self.robotID = model.robotID
        self.messageContent = model.messageContent
        self.timespam = model.timespam
        self.remoteType = model.remoteType
    }
    
    func toStruct() -> MsituationalS {
        return MsituationalS(messageID: messageID,direction: direction,robotID: robotID,messageContent: messageContent,timespam: timespam,remoteType: remoteType)
    }
}

struct CcontextSystem:Convertible {
    var robotID = ""
    var avatar = ""
    var messageContent = ""
    var timespam = getCurrentTimeDouble()
    var name = ""
    var local = ""
    var remoteType = 0
}

class CcontextSystemObject:Object {
    @Persisted(primaryKey: true) var robotID: String = ""
    @Persisted var avatar: String = ""
    @Persisted var messageContent: String = ""
    @Persisted var timespam: Double = 0.0
    @Persisted var name: String = ""
    @Persisted var local: String = ""
    @Persisted var remoteType: Int = 0
    
    // 从结构体初始化 Realm 对象
    convenience init(model: CcontextSystem) {
        self.init()
        self.robotID = model.robotID
        self.avatar = model.avatar
        self.messageContent = model.messageContent
        self.timespam = model.timespam
        self.name = model.name
        self.local = model.local
        self.remoteType = model.remoteType
    }
    
    func toStruct() -> CcontextSystem {
        return CcontextSystem(robotID: robotID,avatar: avatar,messageContent: messageContent,timespam: timespam,name: name,local: local,remoteType:remoteType)
    }
}

extension UIButton {
    
    class func realTimeGeneration(serth:String) {
        if let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
            keyWindow.makeToast(serth)
        }
    }
    
    class func fallbackHandler(){
        
        if let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
            keyWindow.makeToastActivity(.center)
        }
    }
    
    class func streamingInteraction(){
        DispatchQueue.main.async {
            if let keyWindow = UIApplication.shared.windows.filter({ $0.isKeyWindow }).first {
                keyWindow.hideToastActivity()
            }
        }
    }
    
    class func emotionalDepthREailm() {
        if let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first,
           let userId = UserDefaults.standard.string(forKey: "userId") {
            
            // Create a proper file URL by appending the filename
            let realmFileURL = documentsDirectory.appendingPathComponent("\(userId).realm")
            
            // Create parent directory if needed (Realm will create the file automatically)
            let directoryURL = realmFileURL.deletingLastPathComponent()
            if !FileManager.default.fileExists(atPath: directoryURL.path) {
                try? FileManager.default.createDirectory(at: directoryURL, withIntermediateDirectories: true)
            }
            
            let config = Realm.Configuration(
                fileURL: realmFileURL,  // Use the full file URL
                schemaVersion: 1,
                migrationBlock: { migration, oldSchemaVersion in
                    // Migration logic if needed
                }
            )
            
            do {
                let realm = try Realm(configuration: config)
                UserInfoInstance.shared.realmObj = realm
            } catch {
                print("Error opening Realm: \(error.localizedDescription)")
                // Handle error appropriately
            }
        }
   
    }
}




