//
//  WhimsyWare.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//评论
class WhimsyWare: UIViewController {
    var ouser:APCEuserFlauy
    var sharedLinks: [String] = []
    
    
    var likesCount: Int = 0
    init(ouser: APCEuserFlauy){
        self.ouser = ouser
        super.init(nibName: nil, bundle: nil)
    }
    var userTags: [String] = []
    required  init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
 
    @IBOutlet weak var RealTimeJokerHub: UILabel!
    var isEditingComment: Bool = false
    //texfield
    @IBOutlet weak var ByteBuffer: UITextField!
    
    
    deinit {
        
        for (i,modal) in PhantomPrankontroller.allFlayDatu.enumerated(){
            if modal.blindbox_IOPD == ouser.blindbox_IOPD {
                PhantomPrankontroller.allFlayDatu[i] = ouser
            }
        }
        
    }
    
    @IBOutlet weak var dismianComment: UIButton!
    //aready show
    
    @IBOutlet weak var meavatorbackgiug1: UIImageView!
    
    @IBOutlet weak var meinname1: UILabel!
    
    @IBOutlet weak var sapnchuin1: UILabel!
    
    private func AprilFoolsBlindBoxVault(){
        meavatorbackgiug1.layer.cornerRadius = 24
        meavatorbackgiug1.layer.masksToBounds = true
        meavatorbackgiug1.image = UIImage(named: "user_MH_\(Int.random(in: 0...6))")
        meinname1.text = ["Lila","Jax Marlowe","Calder","Esme","Kai Stormborne","Everleigh"].randomElement()
        sapnchuin1.text = self.ouser.blindbox_video_comment
    }
    
    // 设置评论文本
    private var commentText: String = ""
    private func setCommentText(text: String) {
        commentText = text
        print("Comment text set to: \(commentText)")
        
        // 检查评论长度
        if commentText.count > 200 {
            commentText = String(commentText.prefix(200))
            print("Comment exceeded 200 characters. Truncated to: \(commentText)")
        }
    }
    //----send contetnt
    
    @IBOutlet weak var sendbackgiug: UIImageView!
    
    @IBOutlet weak var meavatorbackgiug: UIImageView!
    
    @IBOutlet weak var meinname: UILabel!
    
    @IBOutlet weak var sapnchuin: UILabel!
   
    private func AprilMEtiFoolsBlindBoxVault(){
        if !userTags.contains(sapnchuin.text ?? "") {
                    userTags.append(sapnchuin.text ?? "")
                   
        }
        if self.ouser.blindbox_me_comment != nil {
            sendbackgiug.isHidden = false
            meavatorbackgiug.isHidden = false
            meinname.isHidden = false
            sapnchuin.isHidden = false
            meavatorbackgiug.layer.cornerRadius = 24
            meavatorbackgiug.layer.masksToBounds = true
            meavatorbackgiug.image = PhantomPrankontroller.appChacheimg
            
            sapnchuin.text = self.ouser.blindbox_me_comment
            RealTimeJokerHub.text = AppDelegate.processEducationalContent("2h n wceoxmlmnewnwtes")
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ByteBuffer.placeholder = AppDelegate.processEducationalContent("Siayyo jspommhehtmhuimntgj.r.z.u.")
        RealTimeJokerHub.text = AppDelegate.processEducationalContent("1h n wceoxmlmnewnwtes")
        swapFacesInVideoChaos()
        dismianComment.addTarget(self, action: #selector(DalFlau), for: .touchUpInside)
        igniteComedyChainReaction()
        
        AprilFoolsBlindBoxVault()
        AprilMEtiFoolsBlindBoxVault()
    }

    
    
    
    @objc func DalFlau()  {
        self.dismiss(animated: true)
    }
//send
    @IBAction func generatePrankMeteorShower(_ sender: UIButton) {
        if self.ouser.blindbox_me_comment != nil {
            self.ByteBuffer.resignFirstResponder()
            self.ByteBuffer.text = nil
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Ptlneqazskes kdtoi xncouts npeovsztw acpoamfmqepnstoso xfhrdesqeuaeznctclzy"))
            return
        }
        likesCount += 1
        if self.ByteBuffer.text == nil || self.ByteBuffer.text?.count ?? 0 < 1 {
            showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Phloerapsoee xepnotkebrp xytocucrn lcnormymkemnntl ffficresrtx!"))
            return
        }
        sharedLinks.append("ffficresrtx")
        self.ouser.blindbox_me_comment = self.ByteBuffer.text
        self.ByteBuffer.resignFirstResponder()
        self.ByteBuffer.text = nil
       
        
        AprilMEtiFoolsBlindBoxVault()
    }
   
    
    func swapFacesInVideoChaos()  {
        ByteBuffer.leftView = UIView(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
    }
    
    func igniteComedyChainReaction() {
        ByteBuffer.leftViewMode = .always
    }

}
