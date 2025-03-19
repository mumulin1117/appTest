//
//  ToyAboutViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit


class ToyAboutViewController: ToyeViewController {
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    @IBOutlet weak var toyeDisplayName: UILabel!
    @IBOutlet weak var toyeDisplayVersion: UILabel!
    
    var toyeRequestState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
            
            if let toyeDisplayName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String {
                self.toyeDisplayName.text = toyeDisplayName
            }
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            if let toyeDisplayVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
                self.toyeDisplayVersion.text = "Vpewrmszifodn".ty + " " + toyeDisplayVersion
            }
        }
        
        toyeRequestState = 200
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
