//
//  LisstingPlazyAvtoCell.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit
import WebKit

class LisstingPlazyAvtoCell: UICollectionViewCell {
    let gsddAvotp = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        gsddAvotp.contentMode = .scaleAspectFill
        gsddAvotp.layer.cornerRadius = 34
        gsddAvotp.layer.masksToBounds = true
        gsddAvotp.layer.borderWidth = 1
        gsddAvotp.layer.borderColor =  UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1).cgColor
        
        contentView.addSubview(gsddAvotp)
        gsddAvotp.snp.makeConstraints { make in
            make.width.height.equalTo(67)
            make.center.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("")
    }
}
extension DWeahingAllComin{
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
       
        socialFeed.append("loginiONfGSDD")
        challengeSubmissions.append("challengeSubmissions")
        var reacount = challengeSubmissions.count + socialFeed.count
        completionHandler(nil)
    }
    
}
