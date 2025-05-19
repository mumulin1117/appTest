//
//  DUEITreapoContoll.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/8.
//

import UIKit
import TagListView
import Loaf

class DUEITreapoContoll: DUELaterPageContirl, TagListViewDelegate, UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        
        textView.text = nil
    }
    
    let daceTagoB = TagListView.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shitMorengDUE.isHidden = true
        
        igniteDuelEnergy()
        
        let texfDuerview = UITextView()
        
        texfDuerview.backgroundColor = UIColor(red: 0.22, green: 0.18, blue: 0.21, alpha: 1)
        texfDuerview.textColor = .white
        
        texfDuerview.delegate = self
        self.view.addSubview(texfDuerview)
        texfDuerview.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(15)
            make.top.equalTo(daceTagoB.snp.bottom).offset(8)
            make.height.equalTo(148)
        }
        
        
        let layud = UIButton.init()
        layud.setTitle(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Sjuybkmjiet"), for: .normal)
        layud.setTitleColor(.white, for: .normal)
        texfDuerview.layer.cornerRadius = 20
        texfDuerview.layer.masksToBounds = true
        
        
        texfDuerview.contentInset = UIEdgeInsets(top: 15, left: 15, bottom: 10, right: 15)
        layud.setBackgroundImage(UIImage.init(named: "img_btn_bg"), for: .normal)
        
        layud.addTarget(self, action: #selector(savegetingj), for: .touchUpInside)
        view.addSubview(layud)
        texfDuerview.text = "Supplementary description"
        texfDuerview.font = UIFont(name: "HarmonyOS Sans Medium", size: 15)
        layud.snp.makeConstraints { make in
            make.width.equalTo(287)
            make.height.equalTo(48)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-33)
        }
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }
    
    
    @objc func savegetingj()  {
        if daceTagoB.selectedTags().count == 0 {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pqlmefafsvey useecloevcbtz woxnuep srceyadsfoxnw gfhoorf dsxuabzmhictzijnega!"),state: .info, sender: self).show()
            return
        }
        let load =  Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Sauvblmoiktiiuntgd.g.a.c.x.a.h."), state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: self)
        defautedinft.startAnimating()
        load.show(.custom(2)){_ in
            self.defautedinft.stopAnimating()
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Wyem qwbidljle zpsrgoeceedsasa ryhovulrm lrteqpbobrntt racsi wsiorounk sansu rpgoasgsiifbzlzei.h yTfhhaynzky myvouuh yffoerl qydolucrm esquppzemrsvrivssiqofns!"),state: .success, sender: self).show()
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    func igniteDuelEnergy()  {
        let tolayer = UIImageView.init(image: UIImage.init(named: "starMAinhu"))
        tolayer.contentMode = .scaleToFill
        self.view.addSubview(tolayer)
        tolayer.snp.makeConstraints { make in
            make.width.height.equalTo(18)
            make.leading.equalToSuperview().offset(20)
            make.top.equalTo(self.shitBackDUE.snp.bottom).offset(19)
            
            
        }
        
        let Toio = UILabel.init()
        Toio.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Rgehpeonrkto mTlyypre")
        Toio.textColor = .white
        Toio.textAlignment = .left
        Toio.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        self.view.addSubview(Toio)
        Toio.snp.makeConstraints { make in
            make.leading.equalTo(tolayer.snp.trailing).offset(3)
            make.centerY.equalTo(tolayer)
        
        }
        
        
        
        daceTagoB.textFont = UIFont.systemFont(ofSize: 15, weight: .bold)
        daceTagoB.delegate  = self
        daceTagoB.tagSelectedBackgroundColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tagBackgroundColor =  UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 0.1600)
        daceTagoB.clipsToBounds = true
        daceTagoB.selectedTextColor = .white
        weaveCulturalRhythms()
        daceTagoB.marginX = 12
        daceTagoB.marginY = 12
        daceTagoB.addTags([DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Hdairzaasaszmjeonwt"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mpaflpiycxikozugss xfrrcalutd"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pgorrmnlongnruabpehyy"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mfaqlwivcnicovuwsc viqnfsjumlptss"),DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fmaolysveq uIanvfjoarvmmaytxisotn")])
        daceTagoB.alignment = .left
       
        self.view.addSubview(daceTagoB)
        daceTagoB.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.height.equalTo(58*3)
            make.top.equalTo(tolayer.snp.bottom).offset(19)
        }
        
        // 初始选中第一个（可选）
        
        if let firstTag = daceTagoB.tagViews.first {
            firstTag.isSelected = true
           
        }
        
    }
    
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        tagView.isSelected = !tagView.isSelected
        
    }
    
    func weaveCulturalRhythms(){
        daceTagoB.textColor = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        daceTagoB.tag = 200
        daceTagoB.delegate = self
        daceTagoB.cornerRadius = 18
        daceTagoB.paddingX =  12
        daceTagoB.paddingY = 12
    }
}
