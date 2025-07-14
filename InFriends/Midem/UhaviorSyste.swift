
import RealmSwift
import KakaJSON
extension UIImage {
    convenience init?(color: UIColor, size: CGSize) {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        
        context.setFillColor(color.cgColor)
        context.fill(CGRect(origin: .zero, size: size))
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        self.init(cgImage: image!.cgImage!)
    }
}
struct UhaviorSyste:Convertible {
    var enteredMailbox: String = ""
    var styleLearning: String = ""
    var userId: String = ""
    var password: String = ""
    var gender: String = ""
    var zeroShot: Int = 0
    var entityProcessor = false
    var avatar:String = ""
}


