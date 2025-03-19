//
//  ToyUserPlayGroundViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit
import SnapKit

class ToyUserPlayGroundViewController: ToyeViewController {

    var tyIndicator: UIView!
    @IBOutlet weak var tyFansButton: UIButton!
    @IBOutlet weak var tyFollowButton: UIButton!
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            
            tyIndicator = UIView().then{
                $0.backgroundColor = UIColor.init(hex: "#E854F8")
            }
            
            view.addSubview(tyIndicator)
            userPlayGroundAvtion(tyFansButton)
            
        }
        
        toyeRequestState = 200
    }
    
    
    @IBAction func userPlayGroundAvtion(_ sender: UIButton) {
        self.tyIndicator.snp.removeConstraints()
        
        if toyeInfoWonders.contains(2001) {
            self.tyIndicator.snp.makeConstraints { make in
                make.centerX.equalTo(sender.snp.centerX)
                make.width.equalTo(20)
                make.height.equalTo(6)
                make.bottom.equalTo(sender.snp.bottom).offset(-5)
            }
        }
        
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
        
    }
    
    @IBAction func userPlayGroundBack(_ sender: Any) {
        toyeBackItemAction()
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
