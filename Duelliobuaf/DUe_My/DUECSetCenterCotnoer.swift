//
//  DUECSetCenterCotnoer.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/1.
//
import Loaf
import UIKit
import AVFoundation
class DUECSetCenterCotnoer: DUELaterPageContirl, UICollectionViewDelegate, UICollectionViewDataSource ,UINavigationControllerDelegate, UIImagePickerControllerDelegate,UICollectionViewDelegateFlowLayout,UITextFieldDelegate, DUECSetEditInfoCellDelegate{
    func suregouba() {
        
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
           
            self.OAXxbDUiDance()
        case .notDetermined:
           
            AVCaptureDevice.requestAccess(for: .video) { ifHasgranted in
                
                DispatchQueue.main.async {
                    if ifHasgranted {
                        self.OAXxbDUiDance()
                    }else{
                        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ntoz bClazmsecrmax xPaecrpmtimsisciaosnv!"), sender: self).show()
                        
                       
                    }
                }
               
            }
            
        case .denied,.restricted:
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ntoz bClazmsecrmax xPaecrpmtimsisciaosnv!"), sender: self).show()
            
           
        
         default:
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ntoz bClazmsecrmax xPaecrpmtimsisciaosnv!"), sender: self).show()
            
           
        }
        
        
        
     }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text?.isEmpty == false, (textField.text?.count ?? 0) > 0{
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Chhwasnrgaeb vsoujczcaepsgszfbuglv!"), state: .success, sender: self).show()
            
           
            
        }else{
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "neaemmex zimst neqmopxtlyf!"), state: .info, sender: self).show()
        }
        
        
        var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        use?["Due_Nopme"] = textField.text
        if let id = use?["Due_oID"] {
            UserDefaults.standard.set(use, forKey: id)
        }
        UserDefaults.standard.set(use, forKey: "dueUserNowing")
        
        return true
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        }else{
            return UIEdgeInsets(top: 36, left: 0, bottom: 0, right: 0)
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 0 {
            return CGSize(width: 0, height: 200 + 13)
        }
        return CGSize.zero
    }
//    private var editheaderViewDUE:DUECSetEditInfoCell?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        }
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let zdfdf = [DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pmrhipvrajcvy"), DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Utseehri qApgurkelenmbeangt") ,DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Aebfoqujtn ques") ,DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cglhefahrr cccaacwhie")]
            
            let KDg = collectionView.dequeueReusableCell(withReuseIdentifier: "DUECSetNrtCell", for: indexPath) as! DUECSetNrtCell
            KDg.DuerCuoaojmView.text = zdfdf[indexPath.row]
            return KDg
        }else{
            
            let KDg = collectionView.dequeueReusableCell(withReuseIdentifier: "DUEBotttomtNrtCell", for: indexPath) as! DUEBotttomtNrtCell
            let zdfdf = [DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lsobgv ooyuwt"), DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Dfellsextteb oAvcachokujnbt") ]
            KDg.DuerCuoaojmView.text = zdfdf[indexPath.row]
            return KDg
        }
      
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader{
            let protalHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "DUECSetEditInfoCell", for: indexPath) as! DUECSetEditInfoCell
            
            
            let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
            
            protalHeader.inputingName.text = use?["Due_Nopme"]
            protalHeader.inputingName.delegate = self
            protalHeader.headerViewDUe.isUserInteractionEnabled = true
            protalHeader.headerViewDUe.setBackgroundImage(AppDelegate.HuiwchaerQuil, for: .normal)
            protalHeader.delelg = self
                
               
            return protalHeader
        }
        return UICollectionReusableView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.editheaderViewDUE?.headerViewDUe.addTarget(self, action: #selector(shkenOulaui), for: .touchUpOutside)
        
    }
    private func OAXxbDUiDance()  {
        let NJshd = UIImagePickerController()
        NJshd.sourceType = .camera
        
        NJshd.delegate = self
        NJshd.allowsEditing = true
        self.present(NJshd, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {//["Privacy", "User Agreement" ,"About us" ,"Clear cache"]
            if indexPath.row == 0 || indexPath.row == 1{
                let pop = DUEITermPriiCotnoller.init()
                pop.modalPresentationStyle = .fullScreen
               
                self.present(pop, animated: true)
                
            }
            
            if indexPath.row == 2{
                
                guard let link = URL.init(string: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "hntitkpzsc:c/n/qawpmpq.mkbdhjcllvjsy.jlvimndk")) else {
                    return
                }
                UIApplication.shared.open(link)
                
            }
            
            if indexPath.row == 3{
                
                
              
                let load =  Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cglzepadrw.u.z.n.p.o.x."), state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: self)
                
                load.show(.custom(2)){_ in
                    Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cyleebafrf dswurcjcxejsssjfgudln!"), sender: self).show()
                }
                
            }
           
        }
        
        if indexPath.section == 1 {
            if indexPath.row == 0 {
                UserDefaults.standard.set(nil, forKey: "dueUserNowing")
                
                AppDelegate.createappdemoingPOSM()
                
                
                igniteDuelEnergy()
            }
            
            if indexPath.row == 1 {
                let alertDUE = UIAlertController(
                        title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Dkeclueetheq faecncyohuynzt"),
                        message: "This will immediately: \n• Erase all profile data \n• Remove active subscriptions \n• Delete chat history",
                        preferredStyle: .alert
                    )
                alertDUE.addAction(UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "clamnqcqesl"), style: .default))
                
                alertDUE.addAction(UIAlertAction(title:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "squdrhe") , style: .default, handler: { UIAlertAction in
                    self.defautedinft.startAnimating()
                    let load =  Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Dseklbeotjiontgd.n.j.e.z.y.s."), state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: self)
                    
                    load.show(.custom(2)){_ in
                        self.defautedinft.stopAnimating()
                        AppDelegate.createappdemoingPOSM()
                        Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "dteblceptgeo asauycpcgezsqsifdudlj!"), sender: self).show()
                    }
                    
                  
                    if let nowingers = UserDefaults.standard.object(forKey: "dueUserNowing") as? [String:String] {
                        
                        if let id = nowingers["Due_oID"] {
                            UserDefaults.standard.set(nil, forKey: id)
                        }
                        
                    }
                   
                    UserDefaults.standard.set(nil, forKey: "dueUserNowing")
                    
                    
                    self.igniteDuelEnergy()
                    
                   
                }))
                
                self.present(alertDUE, animated: true)
                
            }
        }
    }
    
 
    
   
    
    var dafenibu:UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let IOsh = UICollectionViewFlowLayout.init()
        IOsh.itemSize = CGSize.init(width: UIScreen.main.bounds.width - 24 , height: 58)
        IOsh.minimumLineSpacing = 12
        IOsh.minimumInteritemSpacing = 12
        IOsh.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width - 24, height: 200 + 13)
        IOsh.scrollDirection = .vertical
       
        self.dafenibu = UICollectionView.init(frame: .zero, collectionViewLayout: IOsh)
        
        dafenibu?.register(DUECSetNrtCell.self, forCellWithReuseIdentifier: "DUECSetNrtCell")
        dafenibu?.register(DUEBotttomtNrtCell.self, forCellWithReuseIdentifier: "DUEBotttomtNrtCell")
        dafenibu?.register(DUECSetEditInfoCell.self, forSupplementaryViewOfKind:UICollectionView.elementKindSectionHeader, withReuseIdentifier: "DUECSetEditInfoCell")
        dafenibu?.backgroundColor = .clear
       
       
        dafenibu?.contentInsetAdjustmentBehavior = .never
        dafenibu?.showsVerticalScrollIndicator = false
        dafenibu?.delegate = self
        dafenibu?.dataSource = self
        dafenibu?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        
       
        shitMorengDUE.isHidden = true
        
        let DuerCuoaojmView = UILabel.init()
        DuerCuoaojmView.textColor = UIColor.white
        DuerCuoaojmView.textAlignment = .center
        DuerCuoaojmView.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Szettytbienig")
        DuerCuoaojmView.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(shitMorengDUE)
        }
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        
        view.addSubview(dafenibu!)
        dafenibu?.snp.makeConstraints({ make in
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo(DuerCuoaojmView.snp.bottom).offset(26)
        })
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    private func igniteDuelEnergy() {
        AppDelegate.HuiwchaerQuil = UIImage(named: "Normalyujmrtx")!
        
        AppDelegate.follorrPAPA.removeAll()
        
        AppDelegate.allMeasgfijg.removeAll()
        
        AppDelegate.alldislaofijg.removeAll()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
    
        DispatchQueue.main.async {
            AppDelegate.HuiwchaerQuil = image
            
            picker.dismiss(animated: true)
            
            self.dafenibu?.reloadData()
        }
        
    }
    
    
    
    
}


protocol DUECSetEditInfoCellDelegate {
    func suregouba()
}
class DUECSetEditInfoCell:UICollectionReusableView {
    var delelg:DUECSetEditInfoCellDelegate?
    
    lazy var headerViewDUe: UIButton = {
        let Odkfes = UIButton.init()
        Odkfes.setBackgroundImage(AppDelegate.HuiwchaerQuil, for: .normal)
        Odkfes.setImage(UIImage.init(named: "Tuijvatar"), for: .normal)
        Odkfes.layer.cornerRadius = 50
        Odkfes.layer.masksToBounds = true
        return Odkfes
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        self.addSubview(headerViewDUe)
        headerViewDUe.isUserInteractionEnabled = true
        headerViewDUe.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        self.addSubview(inputingName)
        inputingName.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(19)
            make.height.equalTo(58)
            make.top.equalTo(headerViewDUe.snp.bottom).offset(20)
        }
        headerViewDUe.addTarget(self, action: #selector(dfojgdrgrg), for: .touchUpInside)
    }
    
   @objc func dfojgdrgrg()  {
       if self.delelg != nil {
           self.delelg?.suregouba()
       }
    }
    lazy var inputingName: UITextField = {
        let Tesntit = UITextField.init()
        Tesntit.textAlignment = .center
        Tesntit.textColor = .white
        Tesntit.backgroundColor = .black
        Tesntit.layer.cornerRadius = 29
        Tesntit.layer.masksToBounds = true
        Tesntit.placeholder = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pblietatsdew xeknytferru knkadmie")
        let use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String>
        
        Tesntit.text = use?["Due_Nopme"]
        return Tesntit
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DUECSetNrtCell: UICollectionViewCell {
    
    lazy var DuerCuoaojmView: UILabel = {
        let DuerCuoaojmView = UILabel.init()
        DuerCuoaojmView.textColor = UIColor.white
        DuerCuoaojmView.textAlignment = .left
        
        DuerCuoaojmView.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        return DuerCuoaojmView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
        self.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        
        
        contentView.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
        
        let smk = UIImageView(image: .init(named: "Gahofoik"))
        contentView.addSubview(smk)
        smk.snp.makeConstraints { make in
            make.width.height.equalTo(16)
            make.trailing.equalToSuperview().inset(16)
            make.centerY.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class DUEBotttomtNrtCell: UICollectionViewCell {
    
    lazy var DuerCuoaojmView: UILabel = {
        let DuerCuoaojmView = UILabel.init()
        DuerCuoaojmView.textColor = .white//(.white, for: .normal)
        DuerCuoaojmView.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        DuerCuoaojmView.layer.borderColor = UIColor.white.cgColor
        DuerCuoaojmView.layer.borderWidth = 1
        DuerCuoaojmView.layer.cornerRadius = 24
        DuerCuoaojmView.layer.masksToBounds = true
        DuerCuoaojmView.textAlignment = .center
        return DuerCuoaojmView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
       
        self.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        
        
        contentView.addSubview(DuerCuoaojmView)
        DuerCuoaojmView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(29)
            make.centerY.equalToSuperview()
            make.height.equalTo(48)
            
        }
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
