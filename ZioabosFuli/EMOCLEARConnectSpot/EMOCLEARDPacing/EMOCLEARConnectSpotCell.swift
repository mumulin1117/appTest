//
//  EMOCLEARConnectSpotCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit

class EMOCLEARConnectSpotCell: UICollectionViewCell {

    @IBOutlet weak var backgroundAmbience: UIImageView!
    
    @IBOutlet weak var voiceMorphing: UIButton!
    
    @IBOutlet weak var audioLatency: UIImageView!
    
    
    
    @IBOutlet weak var storySeeds: UIButton!
    
    
    @IBOutlet weak var roleplayGuidelines: UILabel!
    
    @IBOutlet weak var characterAlignment: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        voiceEnhancement()
    }

    private func voiceEnhancement()  {
    
        voiceMorphing.setTitle(" t0a nosnxlmiqnme".characterBelievability(), for: .normal)
        voiceClarity(iduhoe: 20, views: backgroundAmbience)
        
        voiceClarity(iduhoe: 9.5, views: audioLatency)
        
        voiceClarity(iduhoe: 10, views: voiceMorphing)
       
    }
    
    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
    views.layer.cornerRadius = iduhoe
    views.layer.masksToBounds = isufTruel ? true : false
    }
    
    class func displayResponse()  {
        let  userJourney =  UIStoryboard(name: "Myauibn".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "LoaSionMain") as! UINavigationController
        
        (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = userJourney
       
    }
}
