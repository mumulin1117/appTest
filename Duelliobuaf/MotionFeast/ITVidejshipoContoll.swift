//
//  ITVidejshipoContoll.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/8.
//

import UIKit
import Loaf
import AVFoundation

class ITVidejshipoContoll: LaterPageContirl {
    var appdelegateFei :DIOLogdiaologall
    init(appdelegateFei: DIOLogdiaologall) {
        self.appdelegateFei = appdelegateFei
        super.init(nibName: nil, bundle: nil)
        self.recordidDUE = appdelegateFei.userdiocm["Due_oID"]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private let userImage = UIImageView()
    
    private let mineImage = UIImageView(image: AppDelegate.HuiwchaerQuil)
   
    private lazy var meshaineLabel: UILabel = {
        let laj = UILabel.init()
        laj.textAlignment = .center
        laj.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        laj.textColor =  UIColor.white
        return laj
    }()
    
    lazy var caklllbutton: UIButton = {
        let ao = UIButton.init()
        ao.setImage(UIImage.init(named: "strideMatrix"), for: .normal)
        ao.addTarget(self, action: #selector(TovalkjFlux), for: .touchUpInside)
        return ao
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        userImage.contentMode = .scaleAspectFill
        userImage.layer.masksToBounds = true
        mineImage.contentMode = .scaleAspectFill
        self.view.insertSubview(userImage, at: 0)//.addSubview()
        self.view.addSubview(meshaineLabel)
       
        meshaineLabel.text = appdelegateFei.userdiocm["Due_Nopme"]
        userImage.image = UIImage(named: appdelegateFei.userdiocm["Due_avmter"] ?? "")
        
        userImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        meshaineLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.shitMorengDUE)
        }
        
        lemonerfood()
        
        
      let load =  Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cmoqnmnaerchtrirnigv.o.q.j.m.g.t."), state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: self)
        load.show(.custom(6)){_ in
            Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tnhheb aursaerrn tiasd mneov llhopnegcekrq golnolkijnveo,b cpslveeapskeq vtrrzyt tadgaalikne kloabteevr"), sender: self).show()
        }
        view.addSubview(mineImage)
        mineImage.snp.makeConstraints { make in
            make.width.equalTo(120)
            make.height.equalTo(177)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-150)
        }
        NotificationCenter.default.addObserver(self, selector: #selector(refreshinggindication), name: .contentBlocked, object: nil)
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }


    @objc func refreshinggindication()  {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func TovalkjFlux(chi:UIButton)  {
        if chi.tag == 345 {
            self.navigationController?.popViewController(animated: true)
            return
        }
        
        Loaf(LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pqhhodnqea zlmidnska,m cplloetausbez vchoxnpnteccitm xafnedj ytjruyf haaguazian"), sender: self).show()
        
    }
    private func spawnInteractiveSequence() {
            let cameraStatus = AVCaptureDevice.authorizationStatus(for: .video)
            let audioStatus = AVCaptureDevice.authorizationStatus(for: .audio)
            
            switch (cameraStatus, audioStatus) {
            case (.authorized, .authorized):
               break
            case (.notDetermined, _), (_, .notDetermined):
                requestPermissions()
            default:
                SureSjoaPerDUEionAlert()
            }
       
    }
    private func SureSjoaPerDUEionAlert() {
            
        let persmifnalert = UIAlertController(
            title: LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pcelrgmziususiijopnw srtexqpuwibrveod"),
            message:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pdlweoawsrev dgaob atloe nSzeetftciqnpgqsl atfoh rexnpahbblqeq rcvaqmrewrzam rawnfdr mmyiycarsoaplhaosnmec tpmedrdmoiwsksnisopnzs") ,
            preferredStyle: .alert
        )
        
        
        persmifnalert.addAction(UIAlertAction(title:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Gpow usyelt"), style: .default) { _ in
            guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
            UIApplication.shared.open(url)
        })
        persmifnalert.addAction(UIAlertAction(title:LaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cmaknncmehl") , style: .cancel))
        present(persmifnalert, animated: true)
       
    }
    private func requestPermissions() {
        AVCaptureDevice.requestAccess(for: .video) { [weak self] videoGranted in
            AVCaptureDevice.requestAccess(for: .audio) { audioGranted in
                DispatchQueue.main.async {
                    if videoGranted && audioGranted {
                       
                    }
                }
            }
        }
    }

    @objc  func lemonerfood()  {
        
        
        let aoswitch = UIButton.init()
        aoswitch.setImage(UIImage.init(named: "sdueSwitchxz"), for: .normal)
        aoswitch.addTarget(self, action: #selector(TovalkjFlux), for: .touchUpInside)
        
        let aosmacp = UIButton.init()
        aosmacp.setImage(UIImage.init(named: "DUEVoice"), for: .normal)
        aosmacp.addTarget(self, action: #selector(TovalkjFlux), for: .touchUpInside)
        
        let closephonemacp = UIButton.init()
        closephonemacp.setImage(UIImage.init(named: "duehOmeh_kj"), for: .normal)
        closephonemacp.tag = 345
        closephonemacp.addTarget(self, action: #selector(TovalkjFlux(chi: )), for: .touchUpInside)
        
        let stack = UIStackView(arrangedSubviews: [aoswitch,aosmacp,caklllbutton,closephonemacp])
        stack.axis = .horizontal
        stack.alignment = .fill
        stack.spacing = 24
        view.addSubview(stack)
        stack.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-60)
            make.left.right.equalToSuperview().inset(30)
            make.height.equalTo(60)
        }
        
    }
}
