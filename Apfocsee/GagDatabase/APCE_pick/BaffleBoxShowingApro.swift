//
//  BaffleBoxShowingApro.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
//showing盲盒
class BaffleBoxShowingApro: FooceeSenConrer {
//    var box:APCEuserFlauy
//    init(box: APCEuserFlauy) {
//        self.box = box
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("phantomEmojiRegistry")
//    }
    
    
    
    
    @IBOutlet weak var thinkTrue: UIButton!
    
    @IBOutlet weak var thinkFalse: UIButton!
    @IBOutlet weak var thinkimg: UIImageView!
    
    @IBOutlet weak var thinkuserPhoto: UIImageView!
    

    @IBOutlet weak var thinkuserBanme: UILabel!
    
    
    @IBOutlet weak var thinkingcontent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thinkimg.layer.cornerRadius  = 20
       
        deploySneakyPrankBot()
        
        thinkimg.layer.masksToBounds = true
        self.thinkimg.image = UIImage(named: self.userNoafl?.MH_PICt ?? "")
        thinkuserPhoto.image = UIImage(named: self.userNoafl?.blindbox_avpter ?? "")
        
        NotificationCenter.default.addObserver(self, selector: #selector(tradmjkhsg), name: NSNotification.Name.init("postbhaieblico"), object: nil)
        thinkuserBanme.text = self.userNoafl?.blindbox_name
        thinkingcontent.text = self.userNoafl?.MH_Sayuing
    }
    
    private func deploySneakyPrankBot() {
        
        focceRepo.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        thinkTrue.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.cornerRadius = 14
        thinkFalse.addTarget(self, action: #selector(thinkIsTure(ert:)), for: .touchUpInside)
        thinkuserPhoto.layer.masksToBounds = true
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
    
  
   
    
    @objc func backJokeDomino(ert:UIButton) {
        if ert ==  MatrixButon {
            self.navigationController?.popViewController(animated: true)
        }
        
        if ert ==  focceRepo {
            self.reporitEchoBoost()
        }
    }
    @IBOutlet weak var MatrixButon: UIButton!
    
    @IBOutlet weak var focceRepo: UIButton!
    
    
    
    
    @objc func thinkIsTure(ert:UIButton) {
       
        var rerusl:Bool = false
        
        if ert ==  thinkTrue {
            rerusl = true
        }
        
        if ert ==  thinkFalse {
            rerusl = false
            
        }
        
        if (self.userNoafl?.MH_result == "TRUE" && rerusl == true) ||  (self.userNoafl?.MH_result == "FALSE" && rerusl == false){
            let moadllresult = BamboozleByte.init(resultAPCA: true)
            moadllresult.modalPresentationStyle = .fullScreen
            self.present(moadllresult, animated: true)
            return
        }
        
        let moadllresult = BamboozleByte.init(resultAPCA: false)
        moadllresult.modalPresentationStyle = .fullScreen
        self.present(moadllresult, animated: true)
        
        
       
    }
    
}
