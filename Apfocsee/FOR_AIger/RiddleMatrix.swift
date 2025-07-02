//
//  RiddleMatrix.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class RiddleMatrix: UIViewController,UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    private var titileForTYPE:String?
    private var titileForAudience:String?
    
    //type
    @IBAction func prankLight(_ sender: UIButton) {
        
        let send10 = view.viewWithTag(10) as? UIButton
        let send11 = view.viewWithTag(11) as? UIButton
        let send12 = view.viewWithTag(12) as? UIButton
        let send13 = view.viewWithTag(13) as? UIButton
        let send14 = view.viewWithTag(14) as? UIButton
        
        send10?.isSelected = false
        send11?.isSelected = false
        send12?.isSelected = false
        send13?.isSelected = false
        send14?.isSelected = false
        
        sender.isSelected = true
        titileForTYPE = sender.titleLabel?.text
    }
    
    
    
    //audience
    @IBAction func prankAudience(_ sender: UIButton) {
        
        let send10 = view.viewWithTag(20) as? UIButton
        let send11 = view.viewWithTag(21) as? UIButton
        let send12 = view.viewWithTag(22) as? UIButton
        let send13 = view.viewWithTag(23) as? UIButton
        
        send10?.isSelected = false
        send11?.isSelected = false
        send12?.isSelected = false
        send13?.isSelected = false
        
        
        sender.isSelected = true
        titileForAudience = sender.titleLabel?.text
        
    }
    
    
    @IBOutlet weak var texfielvioew: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        texfielvioew.delegate = self
        triggerLaughterEchoBoost()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }


//post
    @IBAction func swapFacesInVideoChaos(_ sender: UIButton) {
        guard let maind = texfielvioew.text,maind.count > 0,maind != "Prank theme ideas? (e.g., food swap, tech glitch, fake messages)" else {
            showingAlertingFor_Alert(alsemessage:"Please enter your prank theme ideas!")
            return
        }
        if TrickGenerator.diomendAPCE < 300 {
            
            let influce = PuzzleMasterMUi.init()
            influce.modalPresentationStyle = .overCurrentContext
            influce.onRechargeTapped = {
                self.navigationController?.pushViewController(TrickGenerator.init(), animated: true)
            }
            self.present(influce, animated: true)
            return
        }
         TrickGenerator.diomendAPCE = TrickGenerator.diomendAPCE - 300
        let post = JokeAlgorithm.init(titileForTYPE: titileForTYPE,titileForAudience: titileForAudience,themeForTYPE: maind)
        self.navigationController?.pushViewController(post, animated: true)
    }
    
   
    private func triggerLaughterEchoBoost()  {
        texfielvioew.layer.cornerRadius = 20
        texfielvioew.layer.masksToBounds = true
        texfielvioew.contentInset = UIEdgeInsets(top: 20, left: 18, bottom: 18, right: 18)
        texfielvioew.delegate = self
    }
}



