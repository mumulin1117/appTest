//
//  EFolaoeiController.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/11.
//

import UIKit
//我的关注
class EFolaoeiController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var juduie:UILabel?
    init(juduie: UILabel? = nil) {
        self.juduie = juduie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    @IBOutlet weak var baberLaber: UILabel!//title
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if juduie != nil {
            return PhantomPrankontroller.allFolloweingDatu.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celsfsf = collectionView.dequeueReusableCell(withReuseIdentifier: "TomfooleryTech", for: indexPath) as! TomfooleryTech
        if let g = PhantomPrankontroller.allFolloweingDatu[indexPath.row].blindbox_avpter {
            celsfsf.fooceUserphoto.image = UIImage(named: g)
        }
        celsfsf.usernauioLbl.text = PhantomPrankontroller.allFolloweingDatu[indexPath.row].blindbox_name
        
        celsfsf.tochatuityin.tag = indexPath.row
        celsfsf.tochatuityin.addTarget(self, action: #selector(chaouierdfop(buig:)), for: .touchUpInside)
        return celsfsf
    }
    
   @objc func chaouierdfop(buig:UIButton)  {
       
       let tri =  PhantomPrankontroller.allFolloweingDatu [buig.tag]
        let mainu = ClownCompute.init(itMeCenter: false, userNoafl: tri)
        mainu.meaasgeAllrecord = LMeasgelistBarliDxiu.mesakiuAll.filter({ MeasgtOGFOOCe in
            MeasgtOGFOOCe.usbder.blindbox_IOPD == tri.blindbox_IOPD
        }).first?.dilogmesage
        self.navigationController?.pushViewController(mainu, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tri =  PhantomPrankontroller.allFolloweingDatu [indexPath.row]
        
        self.navigationController?.pushViewController(SparkleShenanigan.init(itMeCenter: false, userNoafl: tri), animated: true)
    }
    
    
    private func LaughterEchoTracker()  {
        ghostTypingIndicator = UILabel(frame: CGRect(x: 20, y: 0, width: view.frame.width-40, height: 30))
               ghostTypingIndicator?.textColor = .systemGray
               ghostTypingIndicator?.font = UIFont.italicSystemFont(ofSize: 14)
        if juduie == nil {
            self.baberLaber.text =  AppDelegate.processEducationalContent("Fcoplblbovwkewrfs")
            foooceISi.isHidden = true
            shleepImagc.isHidden = false
            shleepshoqwin.isHidden = false
        }else{
            self.baberLaber.text =  AppDelegate.processEducationalContent("Fiorljlaopwyiunxg")
            if PhantomPrankontroller.allFolloweingDatu.count <= 0{
                foooceISi.isHidden = true
                shleepImagc.isHidden = false
                shleepshoqwin.isHidden = false
            }else{
                foooceISi.isHidden = false
                shleepImagc.isHidden = true
                shleepshoqwin.isHidden = true
            }
        }
        
        
    }
    
    @IBOutlet weak var foooceISi: UICollectionView!
    

    @IBOutlet weak var shleepImagc: UIImageView!
    @IBOutlet weak var shleepshoqwin: UILabel!
    
    private var isJokeModeActive = UserDefaults.standard.bool(forKey: "isAprilFoolsMode")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LaughterEchoTracker()
        MatrixButon.addTarget(self, action: #selector(backJokeDomino), for: .touchUpInside)
        self.shleepshoqwin.text = AppDelegate.processEducationalContent("Tqhkeprleg'usf nnoortmhyicnegn qhveprve")
        confSeintgFocceCollectionView()
    }
    
    @IBOutlet weak var MatrixButon: UIButton!
   
    
    @objc func backJokeDomino() {
        self.navigationController?.popViewController(animated: true)
    }
    private var explodingMessageTimer: Timer?
    private var ghostTypingIndicator: UILabel?
    private let messageBubbleColors: [UIColor] = [.systemPurple, .systemTeal, .systemPink]
    
    private func confSeintgFocceCollectionView() {
        foooceISi.register( UINib.init(nibName: "TomfooleryTech", bundle: nil) , forCellWithReuseIdentifier: "TomfooleryTech")
        foooceISi.delegate = self
        foooceISi.dataSource = self
        let layout = UICollectionViewFlowLayout()
        let Sixhf = (UIScreen.main.bounds.width - 24 - 24)/3
        
        layout.minimumInteritemSpacing = 12
        layout.itemSize = CGSize.init(width: Sixhf, height: 167)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 12
        
       
        foooceISi.collectionViewLayout = layout
        foooceISi.showsVerticalScrollIndicator = false
    
      
        
    }
    private func applyRandomBubbleColors(_ cell: UITableViewCell) {
        guard isJokeModeActive else { return }
        
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
                animation.values = [0, 15, -15, 15, -5, 5, -5, 0 ]
                animation.duration = 0.6
                animation.isAdditive = true
                cell.layer.add(animation, forKey: "shake")
                
                UIView.animate(withDuration: 0.3) {
                    cell.contentView.backgroundColor = .systemYellow.withAlphaComponent(0.3)
                }
                
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 0.5) {
                cell.contentView.backgroundColor = .clear
            }
            
        }
        
    }
    
}
