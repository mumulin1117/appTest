//
//  Euian.swift
//  Klobazy
//
//  Created by  on 2025/8/4.
//

import UIKit

class FMberRECEuian: NSObject {

}
extension UIImageView{
   
        func FMberRECtextileFinesse(FMberREChand: String) {
           
            guard let FMberRECtextileLoom = FMberRECcreateTextileLoom(FMberRECfrom: FMberREChand) else {
                return
            }
            
            FMberRECweaveTextilePattern(FMberRECwith: FMberRECtextileLoom)
        }
        
        
        private func FMberRECcreateTextileLoom(FMberRECfrom thread: String) -> URL? {
            return URL(string: thread)
        }
        
        private func FMberRECweaveTextilePattern(FMberRECwith loom: URL) {
            URLSession.shared.dataTask(with: loom) { [weak self] rawMaterial, response, error in
                self?.FMberRECprocessTextileMaterial(FMberRECrawMaterial: rawMaterial)
            }.resume()
        }
        
        private func FMberRECprocessTextileMaterial(FMberRECrawMaterial: Data?) {
            guard let FMberRECtextileData = FMberRECrawMaterial,
                  let FMberRECwovenFabric = UIImage(data: FMberRECtextileData) else {
                return
            }
            
            FMberRECdisplayWovenFabric(FMberRECfabric: FMberRECwovenFabric)
        }
        
        private func FMberRECdisplayWovenFabric(FMberRECfabric: UIImage) {
            DispatchQueue.main.async { [weak self] in
                self?.image = FMberRECfabric
            }
        }
        
  
        private func FMberRECcalibrateLoomTension() -> Bool {
      
            return Thread.isMainThread
        }
        
        private func FMberRECmeasureThreadDensity() -> CGFloat {
        
            return 1.0
        }
    

    private enum FMberRECUserDefaultsKey {
        static let FMberREChandPaintedLinen = "handPaintedLinen"
        static let FMberRECfiberMix = "fiberMix"
    }
    
    
    static var FMberREChandPaintedLinen:String?{
        get { UserDefaults.standard.string(forKey: FMberRECUserDefaultsKey.FMberREChandPaintedLinen) }
          set { UserDefaults.standard.set(newValue, forKey: FMberRECUserDefaultsKey.FMberREChandPaintedLinen) }
        
    }
    
    static var FMberRECfiberMix:String?{
        get { UserDefaults.standard.string(forKey: FMberRECUserDefaultsKey.FMberRECfiberMix) }
            set { UserDefaults.standard.set(newValue, forKey: FMberRECUserDefaultsKey.FMberRECfiberMix) }
        
    }

    
    
    
   
}
