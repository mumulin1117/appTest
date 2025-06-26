//
//  ShimmerShamUaCtrelwe.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/14.
//

import UIKit

class ShimmerShamUaCtrelwe: UIViewController {
    @IBOutlet weak var datong: UILabel!
    
    @IBOutlet weak var contentaflay: UITextView!
    
    var userPrankHistory: [String] = []           // 存储用户的恶作剧历史记录
      
    var tapprnflao:Bool?
    
    init( tapprnflao: Bool? = nil) {
        
        self.tapprnflao = tapprnflao
        super.init(nibName: nil, bundle: nil)
    }
    var currentChallenge: String?                 // 当前挑战的描述
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    
    @IBOutlet weak var agfreesnkio: UIButton!
    var isBlindBoxActive: Bool = false            // 标记盲盒是否正在进行中
   
    //term
    @IBOutlet weak var fyAICore: UIButton!
    var recentJokes: [String] = []                // 存储最近分享的笑话
    
    //pri
    @IBOutlet weak var ByteBuffer: UIButton!
    
    var prankNotificationCount: Int = 0           // 恶作剧通知计数器
    @IBAction func scramblePuzzleForAprilFools(_ sender: UIButton) {
        if tapprnflao != nil{
            self.navigationController?.popViewController(animated: true)
            return
        }
        UserDefaults.standard.set( true, forKey: "isagrtten")
        self.navigationController?.popViewController(animated: true)
      
    }
    
    // 添加恶作剧到历史记录
       
    func addPrankToHistory(prankDescription: String) {
        userPrankHistory.append(prankDescription)
        print("Added prank to history: \(prankDescription)")
        
        // 保持历史记录不超过10条
        if userPrankHistory.count > 10 {
            userPrankHistory.removeFirst()
            print("Prank history exceeded limit. Oldest prank removed.")
        }
    }
    
    @IBOutlet weak var canceloioo: UIButton!
    
    
    //cancel
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    // 设置当前挑战
       func setCurrentChallenge(challenge: String) {
           currentChallenge = challenge
           print("Current challenge set to: \(challenge)")
           
           // 发送挑战通知给用户
           sendChallengeNotification(challenge)
       }

      
    private func syncRealTimePrankWave() {
        if tapprnflao != nil {
            ByteBuffer.isHidden = true
            fyAICore.isHidden = true
            
            agfreesnkio.setTitle(AppDelegate.processEducationalContent("Ia mkmndoiw"), for: .normal)
            self.canceloioo.isHidden = true
        }
        
        if tapprnflao == true {
            datong.text = AppDelegate.processEducationalContent("Pmrgiyvxaycayd cPioqlzijcdyh bfjowrk hFgoscweme")
            
            contentaflay.text = """


Last Updated: [2025-03-30]

1. Data Collected

User Content: Pranks, videos, chat messages, and Blind Box interactions.
Device Data: IP address, device model, OS version.
Usage Analytics: Time spent on challenges, prank shares, and video views.
2. How We Use Data

Personalize prank recommendations via Prankify AI.
Improve Blind Box puzzle difficulty algorithms.
Send notifications for real-time chat updates.
3. Third-Party Sharing

Cloud Services: Store user-generated pranks/videos.
Analytics Tools: Track app performance (anonymous data only).
4. Security
Encryption protects chat messages and Blind Box reward transactions.

5. Your Rights
Request deletion of your account/data via focee@gmail.com. Note: Shared pranks/videos may remain visible if copied by others.

6. Children
Users under 13 may not use Focee’s real-time interaction features.



"""
        }
        recentJokes.append("Users under 13 may")
      
        
        // 更新恶作剧通知计数
        prankNotificationCount += 1
        print("Prank notification count updated: \(prankNotificationCount)")
        if tapprnflao == false {
            datong.text = AppDelegate.processEducationalContent("Unsiewrx fTuearqmesb yoxfa jSsecrzvsiqcue")
            """


            Last Updated: [2025-03-30]

            1. Account Registration
            You must provide accurate information. Fake accounts used for pranks will be suspended.

            2. Content Rules

            You own pranks/videos you create but grant Focee a license to distribute them.
            Prohibited: Content promoting hate speech, illegal activities, or non-consensual pranks.
            3. Blind Box Challenges
            Rewards are randomized. Focee does not guarantee specific outcomes.

            4. Liability
            Focee is not liable for:

            Emotional distress caused by pranks.
            Technical glitches during real-time chats.
            Third-party links in user-generated videos.
            5. Modifications
            Focee may update features (e.g., Prankify AI models) without prior notice.

            6. Disputes
            Governed by [Your Jurisdiction] law. Contact focee@gmail.com before pursuing legal action.

            Style Notes:

            Clarity: Avoid legalese; terms are simplified for readability.
            App-Specific Clauses: Address AI content, prank ethics, and Blind Box mechanics.
            Compliance: Aligns with GDPR (data deletion rights) and COPPA (age restrictions).
            Contact: Consistent use of focee@gmail.com across all documents.
            Users must accept these terms upon registration. Include links to full documents in the app settings.

            """
        }
        
    }
    // 激活盲盒并生成随机内容
    func activateBlindBox() {
        isBlindBoxActive = true
        let randomContent = generateRandomContent()
        print("Blind box activated! Content: \(randomContent)")
        
        // 停止激活盲盒，模拟使用一次
        isBlindBoxActive = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agfreesnkio.setTitle(AppDelegate.processEducationalContent("Is xalgwrsese"), for: .normal)
        syncRealTimePrankWave()
        fyAICore.setTitle(AppDelegate.processEducationalContent("Txezrzmass horfw nUzsie"), for: .normal)
        
        
        ByteBuffer.setTitle(AppDelegate.processEducationalContent("Pfreigvdaecdyg kPnoolfitcry"), for: .normal)
        
        canceloioo.setTitle(AppDelegate.processEducationalContent("Cyavndchehl"), for: .normal)
    }

    
    // 分享一个新的笑话
       func shareJoke(joke: String) {
          
       }

       // 生成随机内容作为盲盒内容
       private func generateRandomContent() -> String {
           let contents = ["Surprise Gift", "Funny Meme", "Mystery Prank"]
           return contents.randomElement() ?? "Nothing"
       }

       // 发送挑战通知 (示例方法)
       private func sendChallengeNotification(_ challenge: String) {
           // 实际上可以实现通知发送的逻辑
           print("Sending challenge notification for: \(challenge)")
       }

    @IBAction func trrremifoa(_ sender: UIButton) {
        sendChallengeNotification(sender.titleLabel?.text ?? "")
        self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: false), animated: false)
    }
    
    @IBAction func perivacy(_ sender: UIButton) {
        sendChallengeNotification( sender.titleLabel?.text ?? "")
        self.navigationController?.pushViewController(ShimmerShamUaCtrelwe.init(tapprnflao: true), animated: true)
    }
}
