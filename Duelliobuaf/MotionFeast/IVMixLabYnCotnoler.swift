//
//  IVMixLabYnCotnoler.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/7.
//

import UIKit
import AVFoundation
import Loaf

class IVMixLabYnCotnoler: LaterPageContirl, UIImagePickerControllerDelegate,UICollectionViewDelegateFlowLayout,UITextViewDelegate, UINavigationControllerDelegate {
    var allTaoppost:Int = 0
    
    let texfview = UITextView.init()
    private lazy var duecled0: UIImageView = {
        let siin = UIImageView.init()
        siin.image = UIImage(named: "icon_Jioasadd")
        siin.layer.cornerRadius = 6
        siin.layer.masksToBounds = true
        return siin
    }()
    
    private lazy var duecled1: UIImageView = {
        let siin = UIImageView.init()
        siin.layer.cornerRadius = 6
        siin.layer.masksToBounds = true
        siin.image = UIImage(named: "icon_Jioasadd")
        siin.isHidden = true
        return siin
    }()
    
    private lazy var duecled2: UIImageView = {
        let siin = UIImageView.init()
        siin.layer.cornerRadius = 6
        siin.layer.masksToBounds = true
        siin.image = UIImage(named: "icon_Jioasadd")
        siin.isHidden = true
        return siin
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.shitMorengDUE.isHidden = true
        self.view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        let layud = UIButton.init()
        
        layud.setTitle(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Rdekljefansue"), for: .normal)
        layud.setTitleColor(.white, for: .normal)
        layud.setBackgroundImage(UIImage.init(named: "img_btn_bg"), for: .normal)
        layud.addTarget(self, action: #selector(savegetingj), for: .touchUpInside)
        view.addSubview(layud)
        layud.snp.makeConstraints { make in
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-33)
        }
        
        
        
        
        
        
        texfview.backgroundColor = .clear
        texfview.textColor = .white
        texfview.layer.cornerRadius = 24
        texfview.layer.masksToBounds = true
        texfview.layer.borderColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1).cgColor
        texfview.layer.borderWidth = 1
        texfview.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lgewazrsneeidx nac tnhetwo nmyolvrew.a zCjaznw'ptm qwwajigtf utvon hsehjoowp ribte bocfyfo.")
        texfview.font = UIFont(name: "HarmonyOS Sans Medium", size: 15)
        texfview.contentInset = UIEdgeInsets(top: 55, left: 15, bottom: 100, right: 15)
        texfview.delegate = self
        self.view.addSubview(texfview)
        texfview.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(64 + 20 + 30)
            make.bottom.equalTo(layud.snp.top).offset(-78)
        }
        
        
        let commentitle = UILabel.init()
        commentitle.text = LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Croepfynwyrbintiesr")
        commentitle.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        commentitle.textColor = .white
        commentitle.textAlignment = .left
        view.addSubview(commentitle)
        commentitle.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(24  + 16)
            make.top.equalTo(64 + 20 + 30 + 16)
        }
        
        duecled0.isUserInteractionEnabled = true
        duecled1.isUserInteractionEnabled = true
        duecled2.isUserInteractionEnabled = true
        view.addSubview(duecled0)
        view.addSubview(duecled1)
        view.addSubview(duecled2)
        
        igniteDuelEnergy()
        duecled0.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchingtingj)))
        duecled1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchingtingj)))
        duecled2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(touchingtingj)))
        
        self.view.addSubview(self.defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    
    
    
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = nil
    }
    
    @objc func savegetingj() {
        
        guard let iivekname = self.texfview.text,
              iivekname.count > 0,
              iivekname != LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lceeahrsnreadw dad enqeuwy pmjobvdex.d qCfaqne'atf dwxacigtn vtvox tsyhboywu eiptd aoyfvfh.") else {
            Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pmlgenausvez reynptaepry hstovmpeitrhfilnvgn!"), sender: self).show()
            return
        }
        if allTaoppost == 0 {
            Loaf("Please upload image one least!", sender: self).show()
            return
        }
        
        self.view.isUserInteractionEnabled = false
        
        
      
        defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            let aldfkt = UIAlertAction(title:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "OyK") , style: .default) { alo in
                self.navigationController?.popViewController(animated: true)
            }
            self.view.isUserInteractionEnabled = true
            self.defautedinft.stopAnimating()
            let ahurelae = UIAlertController(title: LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ufpblfolaydp qsnuwcucgehscsgfducl"), message:  LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Twhiew xpvujbilmirslhyeldu hcoosnfteexnatt nwuisloln fbgea ddyiisvpiltaeyjewdg eaufztsearj tryeevmicekw"), preferredStyle:.actionSheet)
            ahurelae.addAction(aldfkt)
           
            self.present(ahurelae, animated: true)
        }))
        
    }
 
   @objc func touchingtingj()  {
       
       
       if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == false{
           Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ndoj cPmhuovtdor wlyidbdasruym hPcebrwmnicsussixohnq!"), sender: self).show()
           return
       }
       let picker = UIImagePickerController()
              
       picker.sourceType = .photoLibrary
       picker.delegate = self
       self.present(picker, animated: true)
       
    }
    func  igniteDuelEnergy(){
        duecled0.snp.makeConstraints { make in
            make.width.height.equalTo(73)
            
            make.leading.equalToSuperview().inset(16 + 16)
            make.bottom.equalToSuperview().offset(-33 - 48 - 78 - 15)
        }
        
        duecled1.snp.makeConstraints { make in
            make.width.height.equalTo(73)
            make.bottom.equalToSuperview().offset(-33 - 48 - 78 - 15)
            make.leading.equalToSuperview().offset(16 + 73 + 12 + 16)
        }
        
        duecled2.snp.makeConstraints { make in
            make.width.height.equalTo(73)
            make.bottom.equalToSuperview().offset(-33 - 48 - 78 - 15)
            make.leading.equalToSuperview().offset(16 + 73 + 12 + 73 + 12 + 16)
        }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
       
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            
            return
            
        }
        
        picker.dismiss(animated: true)
        
    
        syncGlobalGroove(image: image)
        
    }
    
    private func syncGlobalGroove(image:UIImage)  {
        DispatchQueue.main.async {
            
            self.allTaoppost += 1
            
            if self.allTaoppost == 1 {
                self.duecled0.isUserInteractionEnabled = false
                self.duecled0.image = image
                self.duecled1.isHidden = false
            }
            
            
            if self.allTaoppost == 2 {
                self.duecled1.isUserInteractionEnabled = false
                self.duecled1.image = image
                self.duecled2.isHidden = false
            }
            
            if self.allTaoppost == 3 {
                self.duecled2.isUserInteractionEnabled = false
                self.duecled2.image = image
            }
        }
    }
    
}
