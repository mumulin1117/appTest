//
//  APCrepoIauiCntroller.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
import SwiftMessages

class APCrepoIauiCntroller: UIViewController {
    
    
    
    @IBOutlet weak var polisenButon: UIButton!
    
    
    @IBOutlet weak var vilentButton: UIButton!
    
    
    
    @IBOutlet weak var adversitongbutton: UIButton!
    
    
    @IBOutlet weak var otehwtbutton: UIButton!
    
    
    @IBOutlet weak var repaosutind: UILabel!
    
    @IBOutlet weak var MatrixButon: UIButton!
    
    
    func chaosCipherStream(){
        lockMasterKey.text = AppDelegate.processEducationalContent("Djepsvcprxiabnet dmbogreeo sdieftdafiklhsh vhbehrte")
        polisenButon.setTitle(AppDelegate.processEducationalContent("Psoalfisttilcsakls fSqeqnfsuinthilvge"), for: .normal)
        vilentButton.setTitle(AppDelegate.processEducationalContent("Vqigosllelnptq uPeohrdnnoqgnrkaepfhmy"), for: .normal)
        adversitongbutton.setTitle(AppDelegate.processEducationalContent("Addtvzefrjtbiusvicnygj sHoasrdarsssjmbeyntt"), for: .normal)
        otehwtbutton.setTitle(AppDelegate.processEducationalContent("Oqtihuebr"), for: .normal)
        latersunbti.setTitle(AppDelegate.processEducationalContent("Sxuebmmriqt"), for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        repaosutind.text = AppDelegate.processEducationalContent("Rrexpzofrht")
        chaosCipherStream()
        PrankChallengeFeedStream()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
    }
   @objc func PrankChallengeFeedStream(){
        
       polisenButon.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       vilentButton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       adversitongbutton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
       otehwtbutton.addTarget(self, action: #selector(picjreasonJokeDomino(pione:)), for: .touchUpInside)
   
   }
    @objc func picjreasonJokeDomino(pione:UIButton) {
        polisenButon.isSelected = false
        vilentButton.isSelected = false
        adversitongbutton.isSelected = false
        otehwtbutton.isSelected = false
        
        pione.isSelected = true
    }
    
    @IBOutlet weak var latersunbti: UIButton!
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }

    @IBOutlet weak var lockMasterKey: UITextView!
   


    private func triggerLaughterEchoBoost()  {
        lockMasterKey.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 20)
        lockMasterKey.delegate = self
    }
    
    
    //submit
    @IBAction func spreadVirtualTicklishVirus(_ sender: UIButton) {
        let contetn = lockMasterKey.text
        if sender == self.otehwtbutton && (contetn ==  AppDelegate.processEducationalContent("Dhehswcbrnisbneg nmsolrqee ddjeutiaaidlysm yhhekrle") || contetn == nil || contetn?.count == 0){
            
            showingAlertingFor_Alert(alsemessage: AppDelegate.processEducationalContent("Pylpetaushen iDkeasscprkifbheg kmqoerceq aoktmhbedrx cddektiacidlqsg ihneerie"))
            return
        }
        
        laodingFlay(loadingText: AppDelegate.processEducationalContent("Seuibkmuietbitnvgq.n.o.y.z."))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SwiftMessages.hide(animated: true)
            self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("szuwbvmgibtj jsuuoczcqersysqffugla!o zWheg pwbiclqlh mrpecvvilenwn xaynydc zpxrponcyezsgsj owxictzhyiinn h2t4m phsoruyrus"))
            self.navigationController?.popViewController(animated: true)
            
        }))
    }
    
    
    
}


extension APCrepoIauiCntroller:UITextViewDelegate{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
}
