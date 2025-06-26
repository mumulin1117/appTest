//
//  AionsultViodeCell.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SnapKit

import AVFoundation
class AionsultViodeCell: UICollectionViewCell {

    
    @IBOutlet weak var kifyHlike: UIButton!//like
    
    
    @IBOutlet weak var kifyCommentr: UIButton!//comment
    
    
    @IBOutlet weak var kifyRepo: UIButton!//report
    
    

    
    @IBOutlet weak var eninnerUser: UIButton!//进入主页
    
    @IBOutlet weak var videoCioverFooce: UIImageView!//video icon
    
    
    @IBOutlet weak var useNakerl: UILabel!//user name
    
    @IBOutlet weak var imhWo: UIImageView!// user icon
    
    
    @IBOutlet weak var civepostcntetn: UILabel!//video post content
    
    
    var player: AVPlayer?
        
    var playerLayer: AVPlayerLayer?
   
    // 配置播放器
        
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer?.frame = videoCioverFooce.bounds
    }
    func configure(with url: URL) {
        // 清理旧播放器
        player?.pause()
        playerLayer?.removeFromSuperlayer()
        
        // 创建新播放器
        player = AVPlayer(url: url)
        playerLayer = AVPlayerLayer(player: player)
        playerLayer?.videoGravity = .resizeAspectFill
        
        videoCioverFooce.layer.addSublayer(playerLayer!)
        // 添加播放完成监听
               NotificationCenter.default.addObserver(
                   self,
                   selector: #selector(playerDidFinishPlaying),
                   name: .AVPlayerItemDidPlayToEndTime,
                   object: player?.currentItem
               )
    }
    @objc private func playerDidFinishPlaying() {
        player?.seek(to: .zero)
        player?.play()
        
    }
    // 准备复用
    override func prepareForReuse() {
        super.prepareForReuse()
        player?.pause()
        playerLayer?.removeFromSuperlayer()
        player = nil
        playerLayer = nil

    }
  

    func allodj(doe:APCEuserFlauy)  {
        if let videor = doe.blindbox_video  {
            videoCioverFooce.image = UIImage(named: videor + "_photo")
        }
        useNakerl.text = doe.blindbox_name
        
        if let videor = doe.blindbox_avpter  {
            imhWo.image = UIImage(named: videor )
        }
       
        civepostcntetn.text = doe.blindbox_text
        
        if doe.video_loke != "lovert" {
            kifyHlike.isSelected = false
        }else{
            kifyHlike.isSelected = true
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        deploySneakyPrankBot()
        
//        self.layer.cornerRadius = 22
//        self.layer.masksToBounds = true
        spreadVirtualTicklishVirus()
        videoCioverFooce.layer.cornerRadius = 22
        videoCioverFooce.layer.masksToBounds = true
 
    }

    
    private func deploySneakyPrankBot() {
        imhWo.layer.cornerRadius = 26
    }
    
    private func spreadVirtualTicklishVirus() {
        imhWo.layer.masksToBounds = true
        
    }
    
  
       
       
}

