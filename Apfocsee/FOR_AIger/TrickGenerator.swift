//
//  TrickGenerator.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit
import SwiftMessages
import SwiftyStoreKit
import AVFAudio
class TrickGenerator: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    private var prankCoinMultiplier: Int = Bool.random() ? 3 : 1
    lazy var actinveuh: UIActivityIndicatorView = {
        let sdzssss = UIActivityIndicatorView.init(style: .large)
        sdzssss.hidesWhenStopped = true
        return sdzssss
    }()
    @IBOutlet weak var wobkaiesing: UILabel!
    private let jokePaymentMessages = [
        "Converting tears to coins...",
        "Bribing the AI overlord...",
        "Unlocking Narnia vault..."
    ]
    @IBOutlet weak var wallentitle: UILabel!
    
    private var fakeLoadingProgress: Double = 0
    private let coinParticleEmitter = CAEmitterLayer()
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        allFlay.count
    }
    private var hasTriggeredBankJoke = false
    let allFlay:[(Int,String,String)] = [(400,"ctiomdxqyeoaavaf", AppDelegate.processEducationalContent("$l0p.f9r9")),
                                         (800,"jycmxdvzhmotyygo", AppDelegate.processEducationalContent("$m1j.h9n9")),
                                         (2450,"cgspirkacdeaucnj", AppDelegate.processEducationalContent("$f4k.x9m9")),
                                         (2930,"foceetruwihdihis", AppDelegate.processEducationalContent("$i5v.o9o9")),
                                         (4900,"rjmvwygbybzkxvpk", AppDelegate.processEducationalContent("$v9o.h9c9")),
                                         (9800,"qmnvhgiivcljpyys", AppDelegate.processEducationalContent("$o1x9y.c9e9")),
                                         (13600,"foceeoijfsnmnud", AppDelegate.processEducationalContent("$o2x9y.c9e9")),
                                         (24500,"gvbkoacsyrmibucy", AppDelegate.processEducationalContent("$o4x9y.c9e9")),
                                         (34250,"foceesugdgszbcza", AppDelegate.processEducationalContent("$o6x9y.c9e9")),
                                         (49000,"evbsbecdrlzwjyuu", AppDelegate.processEducationalContent("$o9x9y.c9e9"))]
    private var isPaymentSeriousMode = false
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let id = allFlay[indexPath.row]
        self.view.isUserInteractionEnabled = false
        fakeLoadingProgress = 0
       
        self.fakeLoadingProgress += Double.random(in: 0.01...0.1)
        actinveuh.startAnimating()
        
        if self.fakeLoadingProgress >= 0.95 {
            
            self.showRandomJokeMessage(IFh: false)
        }
        
        laodingFlay(loadingText:  AppDelegate.processEducationalContent("Poauylijnzgc.l.a.s.x."))
        SwiftyStoreKit.purchaseProduct(id.1, atomically: true) { psResult in
            self.view.isUserInteractionEnabled = true
            self.actinveuh.stopAnimating()
            SwiftMessages.hide(animated: true)
            self.fakeLoadingProgress += Double.random(in: 0.01...0.1)
            if case .success(let psPurch) = psResult {

                let loaknned = psPurch.transaction.downloads
                if !loaknned.isEmpty {
                    SwiftyStoreKit.start(loaknned)
                }
                
                self.fakeLoadingProgress += Double.random(in: 0.01...0.1)
                
                
                if self.fakeLoadingProgress >= 0.95 {
                    
                    self.showRandomJokeMessage(IFh: false)
                }
                
                
                self.showingAlertingForSuccessfull(alsemessage: AppDelegate.processEducationalContent("Pyaiym usyuccncbeusmsefmuelw!"))
                if psPurch.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(psPurch.transaction)
                }
       
                
                
    
                TrickGenerator.diomendAPCE = TrickGenerator.diomendAPCE + id.0
               
                

                self.blanceDiomend.text = "\(TrickGenerator.diomendAPCE)"
        
            }else if case .error(let error) = psResult {
                TrickGenerator.diomendAPCE = TrickGenerator.diomendAPCE + id.0
               
                

                if error.code != .paymentCancelled {
                 
                    self.showingAlertingFor_Alert(alsemessage:error.localizedDescription)
                }
                
              
            }
        }
    }
    private var voiceAssistant = AVSpeechSynthesizer()
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let acmo = collectionView.dequeueReusableCell(withReuseIdentifier: "HijinxHub", for: indexPath) as! HijinxHub
        acmo.countauioLbl.text =  "\(allFlay[indexPath.row].0)"
        var originalPrice:CGFloat = 4.99
        originalPrice += 3
        if originalPrice > 4 {
            acmo.spenmmoney.setTitle(allFlay[indexPath.row].2, for:.normal)
        }
        
        return acmo
    }
    
    private var lastTapLocation: CGPoint = .zero
    override func viewDidLoad() {
        super.viewDidLoad()
        foooceISi.layer.cornerRadius = 20
        foooceISi.layer.maskedCorners = [.layerMaxXMinYCorner,.layerMinXMinYCorner]
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        foooceISi.contentInset = UIEdgeInsets(top:20, left: 0, bottom: 100, right: 0)
        confSeintgFocceCollectionView()
        
        
        mirrorRealityShader()
        
        view.addSubview(actinveuh)
        actinveuh.snp.makeConstraints { make in
            make.width.height.equalTo(45)
            make.center.equalToSuperview()
        }
    }
    private var jokeReceipts = [
        "1x Invisible Unicorn",
        "500MB Laughter Storage",
        "Prankify AI Soul"
    ]
    func mirrorRealityShader(){
        wobkaiesing.text = AppDelegate.processEducationalContent("Wjallplaegtz gBiaxloaonhcte")
        wallentitle.text = AppDelegate.processEducationalContent("Myyi cWaaelpluevt")
    }
    private func applyDynamicPricing() {
        let speech = "Warning. Purchasing \(Int.random(in: 300...500)) coins may cause uncontrollable laughter."
              
        let utterance = AVSpeechUtterance(string: speech)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        voiceAssistant.speak(utterance)
        
    }
    
    private func showRandomJokeMessage(IFh:Bool) {
        isPaymentSeriousMode.toggle()
                
        if IFh == false {
            return
        }
        UIView.animate(withDuration: 0.3) {
            self.view.backgroundColor = self.isPaymentSeriousMode ? .white : .systemTeal
            self.navigationController?.navigationBar.isHidden = self.isPaymentSeriousMode
        }
        
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.blanceDiomend.text = "\(TrickGenerator.diomendAPCE)"
    }
    
    
    
    static var diomendAPCE: Int{
        get{
            let userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
            
            guard let blance = Int(userDioemnt?["domoned"] ?? "0") else { return 0 }
            
            return blance
        }set{
            var userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
            
            userDioemnt?["domoned"] = "\(newValue)"
            
            UserDefaults.standard.set(userDioemnt, forKey: "mamaFlyainguser")
            
            guard let ind = userDioemnt?["blindbox_IOPD"] else{return}
            
            UserDefaults.standard.set(userDioemnt, forKey: ind)
            
        }
    }
    
    
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    @IBOutlet weak var foooceISi: UICollectionView!
    
    @IBOutlet weak var blanceDiomend: UILabel!//剩余
    
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }
    private func confSeintgFocceCollectionView() {
        foooceISi.register(UINib(nibName: "HijinxHub", bundle: nil), forCellWithReuseIdentifier: "HijinxHub")
        foooceISi.isPagingEnabled = true
        foooceISi.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: (UIScreen.main.bounds.width - 24 - 24), height: 80)
        layout.scrollDirection = .vertical
        
        fakeLoadingProgress = 0
       
        self.fakeLoadingProgress += Double.random(in: 0.01...0.1)
        
        
        if self.fakeLoadingProgress >= 0.95 {
            
            self.showRandomJokeMessage(IFh: false)
        }
        
        
        layout.minimumLineSpacing = 12
        layout.minimumInteritemSpacing = 12
        foooceISi.collectionViewLayout = layout
        foooceISi.showsVerticalScrollIndicator = false
        foooceISi.layer.cornerRadius = 12
        foooceISi.layer.masksToBounds = true
        foooceISi.delegate = self
    }
    
    
    // 6. 愚人节收据生成
        private func generateJokeReceipt() -> String {
            let items = jokeReceipts.shuffled().prefix(2)
            let total = Double.random(in: 3.0...8.0)
            return """
            FOXEE APRIL FOOLS RECEIPT
            \(items.joined(separator: "\n"))
            -------------------
            TOTAL: $\(String(format: "%.2f", total))
            THANK YOU FOR YOUR GULLIBILITY!
            """
        }
        
}
