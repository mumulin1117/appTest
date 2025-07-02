//
//  LMeasgelistBarliDxiu.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/9.
//

import UIKit

struct MeasgtOGFOOCe {
    var usbder:APCEuserFlauy
    var dilogmesage:Array<String>?
}

class LMeasgelistBarliDxiu: APCENEvcer {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if  LMeasgelistBarliDxiu.mesakiuAll.filter { MeasgtOGFOOCe in
            MeasgtOGFOOCe.dilogmesage?.count ?? 0 > 0
        }.count == 0 {
            lisilingmeasg.isHidden = true
            measdiOnbaer.isHidden = false
            measditiaopaer.isHidden = false
        }else{
            lisilingmeasg.isHidden = false
            measdiOnbaer.isHidden = true
            measditiaopaer.isHidden = true
            
        }
        lisilingmeasg.reloadData()
    }
    
    static var mesakiuAll:Array<MeasgtOGFOOCe> = Array<MeasgtOGFOOCe>()

    
    @IBOutlet weak var foingFocce: UIButton!
    
    @IBOutlet weak var fancFooced: UIButton!
    
    @IBOutlet weak var measdiOnbaer: UIImageView!
    @IBOutlet weak var measditiaopaer: UILabel!
    
    @IBOutlet weak var lisilingmeasg: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AI_ComedyBlueprint()
        
        confSeintgFocceCollectionView()
        
        
    }

    
    private func AI_ComedyBlueprint()  {
        NotificationCenter.default.addObserver(self, selector: #selector(tradmjkhsg), name: NSNotification.Name.init("postbhaieblico"), object: nil)
    }
   
    
    @objc func tradmjkhsg()  {
        self.lisilingmeasg.reloadData()
        
    
    }
    private func confSeintgFocceCollectionView() {
        lisilingmeasg.register(UINib.init(nibName: "FollyFramework", bundle: nil), forCellWithReuseIdentifier: "FollyFramework")
        lisilingmeasg.isPagingEnabled = true
        lisilingmeasg.dataSource = self
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24, height: 95)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 16
        
        lisilingmeasg.collectionViewLayout = layout
        lisilingmeasg.showsVerticalScrollIndicator = false
    
        lisilingmeasg.delegate = self
        
    }
    
    
    @IBAction func strueingh(_ sender: UIButton) {
        if sender == foingFocce {
            self.navigationController?.pushViewController(EFolaoeiController.init(juduie: UILabel.init()), animated: true)
        }
        
        
        if sender == fancFooced {
            self.navigationController?.pushViewController(EFolaoeiController.init(juduie: nil), animated: true)
        }
        
    }
    
    
}


extension LMeasgelistBarliDxiu:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        LMeasgelistBarliDxiu.mesakiuAll.filter { MeasgtOGFOOCe in
            MeasgtOGFOOCe.dilogmesage?.count ?? 0 > 0
        }.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dagtu = LMeasgelistBarliDxiu.mesakiuAll.filter { MeasgtOGFOOCe in
            MeasgtOGFOOCe.dilogmesage?.count ?? 0 > 0
        }[indexPath.row]
        
        let measgevc = ClownCompute.init(itMeCenter: false, userNoafl: dagtu.usbder)
        measgevc.meaasgeAllrecord = dagtu.dilogmesage
        self.navigationController?.pushViewController(measgevc, animated: true)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let dagtu = LMeasgelistBarliDxiu.mesakiuAll.filter { MeasgtOGFOOCe in
            MeasgtOGFOOCe.dilogmesage?.count ?? 0 > 0
        }[indexPath.row]
        
        let qucell = collectionView.dequeueReusableCell(withReuseIdentifier: "FollyFramework", for: indexPath) as! FollyFramework
        qucell.xuelianname.text = dagtu.usbder.blindbox_name
        qucell.zhanXuelian.image = UIImage(named: dagtu.usbder.blindbox_avpter ?? "")
        
        qucell.xuelainFeiol.text = dagtu.dilogmesage?.last
        return qucell
        
    }
    
    
}
