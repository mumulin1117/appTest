//
//  ConVPSasiteTxker.swift
//  Hirdfrodhand
//
//  Created by Hirdfrod on 2025/3/25.
//
import PopupDialog
import UIKit
//设置
class ConVPSasiteTxker: HiRoHRalFllaterPicdert {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateAllItemBackButton(hiddenBack: false, hiddenReport: true)
        
        let cxbnxds = [("yinsowo0","Privacy Policy"),
                       ("yinsowo1","User Agreement"),
                       ("yinsowo2","About us"),
                       ("yinsowo3","Clear Chache")
                      ]
        
        let scene = UIApplication.shared.connectedScenes.first
        let windowScene = scene as? UIWindowScene
        let window = windowScene?.windows.first
        
        for (o,itr) in cxbnxds.enumerated() {
            let ndui = camjkscamp(info: itr)
            
            view.addSubview(ndui)
            ndui.tag = o
            ndui.addTarget(self, action: #selector(cdfterINgtag(dkxkd: )), for: .touchUpInside)
            
            ndui.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(16)
                make.height.equalTo(56)
                make.top.equalToSuperview().offset(66*o + Int((window?.safeAreaInsets.top ?? 0)) + 30 + 40)
            }
        }
        
        
        let Loaojgi = UIButton.init()
        Loaojgi.setBackgroundImage(UIImage.init(named: "menbanfhu"), for: .normal)
        Loaojgi.setTitle( "Log out", for: .normal)
        Loaojgi.setTitleColor(.black, for: .normal)
        Loaojgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(Loaojgi)
        Loaojgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 15)
        }
        Loaojgi.addTarget(self, action: #selector(loadgoutrINgtag), for: .touchUpInside)
        
        
        
        
        
        let Ldeletejgi = UIButton.init()
        Ldeletejgi.layer.cornerRadius = 24
        Ldeletejgi.layer.masksToBounds = true
        Ldeletejgi.layer.borderColor = UIColor.red.cgColor
        Ldeletejgi.layer.borderWidth = 1.5
        Ldeletejgi.setTitle( "Diegllertvek xaqcccmoiuwngt".poseRealStr(), for: .normal)
        Ldeletejgi.setTitleColor(UIColor.red, for: .normal)
        Ldeletejgi.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight:.semibold)
        
        view.addSubview(Ldeletejgi)
        
        Ldeletejgi.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(15)
            make.height.equalTo(48)
            make.bottom.equalToSuperview().offset(-(window?.safeAreaInsets.bottom ?? 0) - 15 - 48 - 20)
        }
        Ldeletejgi.addTarget(self, action: #selector(fodeleteoutrINgtag), for: .touchUpInside)
    }
    
    
    @objc func cdfterINgtag(dkxkd:UIButton) {
        let taginsepick = dkxkd.tag
        if taginsepick == 0 {
            self.navigationController?.pushViewController(HiRoHandELhuaBarPicdert.init(tttttt: 1), animated: true)
        }
        
        if taginsepick == 1 {
            self.navigationController?.pushViewController(HiRoHandELhuaBarPicdert.init(tttttt: 2), animated: true)
        }
        
        
        if taginsepick == 2 {
            
            if let urlConnect = URL(string: "hwtxtepmsh:b/e/nayptph.vibiepriihc.xlyirnck".poseRealStr())  {
                UIApplication.shared.open(urlConnect, options: [:], completionHandler: nil)
            }
        }
        
        
        if taginsepick == 3 {
            let statuslbl = self.addlayert(textCon: "Cilzeeasrt.x.b.v.".poseRealStr(),controller: self,timedelay: nil)
             
             DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
             
                 statuslbl?.removeFromSuperview()
                
                 self.addlayert(textCon: "Czlseiaerv qciommdpvlvebtneodf!".poseRealStr(),controller: self,textColor: 1)
                 self.view.endEditing(true)
             }))
        }
    }
    
    @objc func fodeleteoutrINgtag() {
        let popup = PopupDialog(
            title: "Dvehloedtcivnggs rAfcucaouuunbtp?",
            message: "Djeylheetqidnkgo daucwcfouumngtq jwtizlqln kdmerlcertbev tavldle pdiaatwap iadscsjoackibawtpekde twjintiht kivts,e ricnycvltundaiznmgy zbsudiblpdx mhxifsxtnohrdyj uavnqdp wrleicxogrpdbsx.k yTthpihsw zahcftciqomnj xchalne'ftc gbgeq yucnqdgolneez,k yasrrem lyzoluk tsjuyreei eypoiug jwjidsbht ctpoj mcpocnftxihndunek?".poseRealStr()
        )
        let cancelButton = CancelButton(title: "Clabngcnezl".poseRealStr(), action: nil)
        let deleteButton = DestructiveButton(title: "Szujrue".poseRealStr()) {
            let statuslbl = self.addlayert(textCon: "Rweoqeuteesdtz.r.v.w.".poseRealStr(),controller: self,timedelay: nil)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
                statuslbl?.removeFromSuperview()
                self.loadgoutrINgtag()
                self.addlayert(textCon: "Dzeglneotlesde nSvuycqcwehszsyfjuhlr!".poseRealStr(),controller: self,textColor: 1)
                self.view.endEditing(true)
            }))
        }
        
        
        popup.addButtons([cancelButton, deleteButton])
        present(popup, animated: true, completion: nil)
        
    }
    
    @objc func loadgoutrINgtag() {
        UserDefaults.standard.set(nil, forKey: "logeduserhiedIndj")
        HiRoHandPicdert.createappdemoingPOSM()
        AppDelegate.magiehangiconseindi = UIImage(named: "LOGOxloainjgf")!
        

    }
    
    private func camjkscamp(info:(String,String))->UIButton {
        let ssss = UIButton.init()
        ssss.backgroundColor = UIColor(red: 0.51, green: 0.45, blue: 0.94, alpha: 1)
        ssss.layer.cornerRadius = 16
        ssss.layer.masksToBounds = true
        
        
        
        
        let IA = UIImageView(image: UIImage.init(named: info.0))
        IA.contentMode = .scaleAspectFit
        ssss.addSubview(IA)
        IA.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(19)
            make.width.height.equalTo(24)
            make.centerY.equalToSuperview()
        }
        
        
        let mIgub = UILabel.init()
        mIgub.textColor = .white
        mIgub.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        mIgub.text = info.1
        ssss.addSubview(mIgub)
        mIgub.snp.makeConstraints { make in
            make.leading.equalTo(IA.snp.trailing).offset(18)
            make.centerY.equalToSuperview()
            
        }
        
        
        let trailingIA = UIImageView(image: UIImage.init(named: "gegnHdui"))
        trailingIA.contentMode = .scaleAspectFit
        ssss.addSubview(trailingIA)
        trailingIA.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(17)
            make.width.equalTo(17)
            make.height.equalTo(17)
            make.centerY.equalToSuperview()
        }
        
        
        
       
        return ssss
    }

}
