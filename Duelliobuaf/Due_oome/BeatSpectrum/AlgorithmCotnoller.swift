//
//  AlgorithmCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/2.
//

import UIKit
import Loaf

struct livediaologall {
    var userdiocm:Dictionary<String,String>
    var lisat:Array<(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?,ismesay:Bool?)>
}


struct DIOLogdiaologall {
    var userdiocm:Dictionary<String,String>
    var lisat:Array<String>
}

class AlgorithmCotnoller: LaterPageContirl, UITableViewDataSource, UITableViewDelegate, DUEIPGiftpeilCotnollerdelegae {
   //发送礼物
    func presnterintulp(steirnh: String, adgt: Int) {
        let fgiftcontetn:(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?,ismesay:Bool?) = (true,nil,steirnh,adgt,true)
        
        self.datagalll.lisat.append(fgiftcontetn)
        
        self.INusayingView.reloadData()
    }
    
    deinit {
        for (ddssx,itmr)  in AppDelegate.alldislaofijg.enumerated(){
            if itmr.userdiocm["Due_oID"] == datagalll.userdiocm["Due_oID"]{
                AppDelegate.alldislaofijg[ddssx] = datagalll
            }
            
        }
    }
    var coveriah:UIImage?
    private var datagalll:livediaologall
    init(datagalll: livediaologall,coveriahkkk:UIImage?) {
        self.datagalll = datagalll
        self.coveriah = coveriahkkk
        super.init(nibName: nil, bundle: nil)
        
        self.recordidDUE = datagalll.userdiocm["Due_oID"]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
  
    
    @IBOutlet weak var vningVieww: UIImageView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datagalll.lisat.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ren = datagalll.lisat[indexPath.row]
        
        if ren.isgifting {
            let dueGift = tableView.dequeueReusableCell(withIdentifier: "QuantumIPGiftCell", for: indexPath) as! QuantumIPGiftCell
            dueGift.countneLabel.text = "\(ren.gisfjtcount ?? 1)"
            dueGift.gifjrintImag.image = UIImage(named: ren.giftSti ?? "")
            dueGift.selectionStyle = .none
            return dueGift
        }else{
            let due = tableView.dequeueReusableCell(withIdentifier: "HeatIPChailiveCell", for: indexPath) as! HeatIPChailiveCell
            due.senoutneLabel.text = ren.saconten
            due.selectionStyle = .none
            
            if ren.ismesay == false{
                due.userImage.image = UIImage(named: datagalll.userdiocm["Due_avmter"] ?? "")
                due.meshaineLabel.text =  (datagalll.userdiocm["Due_Nopme"] ?? "") + "(Homeowner)"
            }
            return due
        }
        
       
        
    }
    //举报
    @IBAction func morequihIngh(_ sender: Any) {
        if let idsd = recordidDUE {
            StrobeGenerattnoller.showAlert(on: self, contentId: idsd)
            
        }
    }
    
    @IBAction func adquiteroorm(_ sender: Any) {
        if coveriah != nil {
            
            let persmifnalert = UIAlertController(
                title: LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Dnelsxtxrjozyh etuhdep kcyhoactm nrxoqorm"),
                message:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Agfutnegrs itohpev bcjrueuautaofrh lljegauvwebsx,z ctmhtef ocnhxaxtg rrlojosmv qwzialklq rbdej krceecxlkaqiimsehdf gbmyb mtshael gsxycsotyenm") ,
                preferredStyle: .alert
            )
            
            
            persmifnalert.addAction(UIAlertAction(title: LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "sculrae"), style: .default) { _ in
                self.navigationController?.popToRootViewController(animated: true)
            })
            persmifnalert.addAction(UIAlertAction(title: LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "czagntcuefl"), style: .cancel))
            present(persmifnalert, animated: true)
            
            return
       }
        self.navigationController?.popViewController(animated: true)
    }
    
    
//name
    @IBOutlet weak var HeimingDue: UILabel!
    
    //seecoun
    @IBOutlet weak var seecountlabki: UIButton!
    
    @IBOutlet weak var dueiDisssDUE: UIButton!
    
    @IBOutlet weak var quedFeiospio: UIButton!
    
    
    @IBOutlet weak var givenHeadert: UIButton!
    
    @IBOutlet weak var ebginPresnt: UIButton!
    
    @IBOutlet weak var saycontenrt: UITextField!
    
    
    @IBOutlet weak var toinsenrt: UIButton!
    @IBOutlet weak var INusayingView: UITableView!
    
    @IBAction func inserbuttone(_ sender: UIButton) {
        
        
        let alertvf = CChieCenterCotnoer.init(dfoloower: datagalll.userdiocm)
        
        self.navigationController?.pushViewController(alertvf, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Doai = datagalll.userdiocm["Due_seecount"] ?? ""
        seecountlabki.setTitle(" "  + Doai, for: .normal)
        HeimingDue.text = datagalll.userdiocm["Due_Nopme"]
        
        INusayingView.separatorStyle = .none
        INusayingView.delegate = self
        INusayingView.dataSource = self
        INusayingView.rowHeight = UITableView.automaticDimension
        INusayingView.register(HeatIPChailiveCell.self, forCellReuseIdentifier: "HeatIPChailiveCell")
        INusayingView.register(QuantumIPGiftCell.self, forCellReuseIdentifier: "QuantumIPGiftCell")
        self.shitMorengDUE.isHidden = true
        
        
        self.shitBackDUE.isHidden = true
        INusayingView.estimatedRowHeight = 80
        INusayingView.showsVerticalScrollIndicator = false
        
        igniteDuelEnergy()
        
       
        
        INusayingView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(saycontenrt.snp.top).offset(-5)
            make.top.equalTo(dueiDisssDUE.snp.bottom).offset(30)
        }
        if coveriah != nil {
            vningVieww.image = coveriah
            
            seecountlabki.setTitle("0", for: .normal)
            self.toinsenrt.isHidden = true
            self.quedFeiospio.isHidden = true
        }else{
            vningVieww.image = UIImage(named: datagalll.userdiocm["Due_Cover"] ?? "")
        }
        
    
        uianhdi.image = UIImage(named: datagalll.userdiocm["Due_avmter"] ?? "")
        
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.defautedinft.stopAnimating()
            self.INusayingView.isHidden = false
        }))
    }


    @objc func refreshinggindication()  {
        self.navigationController?.popViewController(animated: true)
    }

  
    @IBOutlet weak var uianhdi: UIImageView!
    
    private func igniteDuelEnergy(){
        
        
        ebginPresnt.addTarget(self, action: #selector(showingpresentingSSnake), for: .touchUpInside)
        saycontenrt.delegate = self
        saycontenrt.leftView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        saycontenrt.leftViewMode = .always
        saycontenrt.attributedPlaceholder = NSAttributedString.init(string:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Skacyt xspojmmehtuhqienlgs.p.o.d.")  , attributes: [.foregroundColor:UIColor.white])
        saycontenrt.returnKeyType = .done
        givenHeadert.addTarget(self, action: #selector(Apoinkido), for: .touchUpInside)
        
    }
    
    
    @objc func showingpresentingSSnake() {
        
        let roroter = IPGiftpeilCotnoller.init()
        
        let asjuio =   UINavigationController.init(rootViewController: roroter)
        asjuio.navigationBar.isHidden = true
        
        roroter.deflay = self
        asjuio.modalPresentationStyle = .overCurrentContext
        self.present(asjuio, animated: true)
    }
}


extension AlgorithmCotnoller:UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let result = textField.text ?? ""
        if result == "" {
            Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tchaeu omneqsoswaigtec isdeunztv xcoarnwnhoztf zbxen qefmhpktcyo!"), sender: self).show()
           
            return true
        }
        
       
        
        let fgiftcontetn:(isgifting:Bool,saconten:String?,giftSti:String?,gisfjtcount:Int?,ismesay:Bool?) = (false,result,nil,nil,true)
        
        self.datagalll.lisat.append(fgiftcontetn)
        textField.text = nil
        textField.resignFirstResponder()
        
        self.INusayingView.reloadData()
        return true
    }
    
    
    @objc func Apoinkido()  {
        
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            self.defautedinft.stopAnimating()
            self.INusayingView.isHidden = false
            
            self.givenHeadert.isSelected = !self.givenHeadert.isSelected
            
            self.datagalll.userdiocm["isLiveAllLike"] = self.givenHeadert.isSelected ? "love" : "dislove"
            
            for (hus,insj) in AppDelegate.dueAllPapa.enumerated() {
                if insj["Due_oID"] == insj["Due_oID"] {
                    AppDelegate.dueAllPapa[hus] = self.datagalll.userdiocm
                }
            }
        }))
        
        
        
        
        
    }
    
    
    
    
  
}
