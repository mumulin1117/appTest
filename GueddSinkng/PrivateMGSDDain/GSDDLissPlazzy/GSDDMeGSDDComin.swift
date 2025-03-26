//
//  GSDDMeGSDDComin.swift
//  GueddSinkng
//
//  Created by User on 2025/2/21.
//

import UIKit
import PhotosUI

class GSDDMeGSDDComin: UIViewController {
    
    let avifOkaStatus = AVCaptureDevice.authorizationStatus(for: .video)
    
    lazy var editBootomVIew = GSDDEfitInfoComin.init(frame: CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 483))
    
    private let gsdd_loadActiveViw = GSDDloadingComin.init(frame: CGRect.init(x: 0, y: 0, width: 280, height: 180))
    let ckaobeiinonext = UILabel.init()//name
    
    let qiaminnext = UILabel.init()//brie
    
    let fancnCounttnext = UILabel.init()//fanc
    
    let follreCounttnext = UILabel.init()
    
    let usersefimgInager = UIImageView(image: UIImage.init(named: "noshingDataGSDD"))
  
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ckaobeiinonext.text = GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddNjmet
        qiaminnext.text = GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddVBrief
        usersefimgInager.image =  GSDDEmaillogadComin.logUserImageIcon
        
        
        fancnCounttnext.text = "\(GSDDEmaillogadComin.fancertListGSDD.count)"
        follreCounttnext.text = "\(GSDDEmaillogadComin.follwercertListGSDD.count)"
        
    }
    
    @objc func tougegleToWallent(ijbnm:UIButton)  {
        
        self.navigationController?.pushViewController(GSDDWallentipminein.init(), animated: true)
    }
    
    //set
    @objc func tougegleToSetup(ijbnm:UIButton)  {
        
        self.navigationController?.pushViewController(GSDDsetrtrtuipminein.init(), animated: true)
    }
    

    @objc  func bagerinOkayot() {
        self.navigationController?.popViewController(animated: true)
    }

    
    @objc  func relationTokayot(vmi:UIButton) {
        
        let relaiony = GSDDRealtiongpminein.init()
        if vmi.tag == 45 {
            relaiony.relaitonStrFS = "Fans"
            relaiony.ModelgGSDD = GSDDEmaillogadComin.fancertListGSDD
        }
        
        if vmi.tag == 46 {
            relaiony.relaitonStrFS = "Follow"
            relaiony.ModelgGSDD = GSDDEmaillogadComin.follwercertListGSDD
        }
        self.navigationController?.pushViewController(relaiony, animated: true)
    }
    
}


extension GSDDMeGSDDComin{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        //背景
        let nameringGSDD = UIImageView(image: UIImage.init(named: "mengbanGSDD"))
        nameringGSDD.frame = self.view.bounds
        nameringGSDD.contentMode = .scaleAspectFill
        view.addSubview(nameringGSDD)
        
        
        //backutton
        let bagcloGSDD = UIButton.init(frame: CGRect.init(x:18, y: framtipStartinset, width: 30, height: 30))
        bagcloGSDD.setBackgroundImage(UIImage.init(named: "backDSGG"), for: .normal)
       
        bagcloGSDD.addTarget(self, action: #selector(bagerinOkayot), for: .touchUpInside)
    
        view.addSubview(bagcloGSDD)
        
        
        
        let emionext = UILabel.init()
        emionext.text = "Profile"
        emionext.textColor = .white
        emionext.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        view.addSubview(emionext)
        emionext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(bagcloGSDD)
        }
        usersefimgInager.layer.cornerRadius = 90.x_GSDD
        usersefimgInager.layer.masksToBounds = true
        
        usersefimgInager.contentMode = .scaleAspectFill
        view.addSubview(usersefimgInager)
        usersefimgInager.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(180.x_GSDD)
            make.top.equalTo(bagcloGSDD.snp.bottom).offset(29.y_GSDD)
            
        }
        
        
        
        
        addGSDDUIin()
        
        gsdd_loadActiveViw.center = self.view.center
        gsdd_loadActiveViw.isHidden = true
        view.addSubview(gsdd_loadActiveViw)
    }
    
    
    
   

    
    private  func addGSDDUIin()  {
        let editFileg = UIButton.init()
        
        view.addSubview(editFileg)
        editFileg.setImage(UIImage.init(named: "tougleEdit"), for: .normal)
        editFileg.addTarget(self, action: #selector(sureelGSDD), for: .touchUpInside)
        editFileg.snp.makeConstraints { make in
            make.width.height.equalTo(30)
            make.bottom.equalTo(usersefimgInager)
            make.right.equalTo(usersefimgInager.snp.right).inset(10)
        }

        //name
        let bullftext = AppDelegate.descBABAString(upcaseGS: "NbUhLbL")
        
        gsdd_loadActiveViw.setActiveindicatore_GSDDMessage(bullftext)
        ckaobeiinonext.text = bullftext
        ckaobeiinonext.textColor = .white
        ckaobeiinonext.textAlignment = .center
        ckaobeiinonext.font = UIFont.systemFont(ofSize: 32.x_GSDD, weight: .medium)
        view.addSubview(ckaobeiinonext)
        ckaobeiinonext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.top.equalTo(usersefimgInager.snp.bottom).offset(29.x_GSDD)
        }
        //签名
       
        qiaminnext.text = bullftext
        qiaminnext.textColor = .white
        qiaminnext.textAlignment = .center
        qiaminnext.font = UIFont.systemFont(ofSize: 14.x_GSDD, weight: .medium)
        qiaminnext.numberOfLines = 0
        view.addSubview(qiaminnext)
        qiaminnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.top.equalTo(ckaobeiinonext.snp.bottom).offset(8.x_GSDD)
        }
        
        
        //
        //walent
        let wallentFileg = UIButton.init()
        wallentFileg.backgroundColor = UIColor(red: 0.24, green: 0.18, blue: 0.41, alpha: 1
           )
        wallentFileg.layer.cornerRadius = 10
        wallentFileg.layer.masksToBounds = true
                                               
                                               
        view.addSubview(wallentFileg)
       
        wallentFileg.addTarget(self, action: #selector(tougegleToWallent), for: .touchUpInside)
        let itemmant = ( UIScreen.main.bounds.width - 280.x_GSDD)/5
        
        wallentFileg.snp.makeConstraints { make in
            make.width.height.equalTo(70.x_GSDD)
            make.top.equalTo(qiaminnext.snp.bottom).offset(40.y_GSDD)
            make.left.equalToSuperview().offset(itemmant)
        }
        
        let sniamdio = UIImageView(image: UIImage.init(named: "diopmendGSDD"))
        wallentFileg.addSubview(sniamdio)
        sniamdio.snp.makeConstraints { make in
            make.width.height.equalTo(32.x_GSDD)
            make.top.equalToSuperview().offset(10.x_GSDD)
            make.centerX.equalToSuperview()
        }
        let wallentnext = UILabel.init()
        wallentnext.text = "Wallent"
        wallentnext.textColor = .white
        wallentnext.textAlignment = .center
        wallentnext.font = UIFont.systemFont(ofSize: 14.x_GSDD, weight: .medium)
    
        wallentFileg.addSubview(wallentnext)
        wallentnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(sniamdio.snp.bottom).offset(10.x_GSDD)
        }
        
        //seit
       
        let sertntFileg = UIButton.init()
        sertntFileg.backgroundColor = UIColor(red: 0.24, green: 0.18, blue: 0.41, alpha: 1
           )
        sertntFileg.layer.cornerRadius = 10
        sertntFileg.layer.masksToBounds = true
       
        view.addSubview(sertntFileg)
        
        sertntFileg.addTarget(self, action: #selector(tougegleToSetup), for: .touchUpInside)
       
        sertntFileg.snp.makeConstraints { make in
            make.width.height.equalTo(70.x_GSDD)
            make.top.equalTo(qiaminnext.snp.bottom).offset(40.y_GSDD)
            make.left.equalTo(wallentFileg.snp.right).offset(itemmant)
        }
        
        let seiiconmdio = UIImageView(image: UIImage.init(named: "dioSitendGSDD"))
        sertntFileg.addSubview(seiiconmdio)
        seiiconmdio.snp.makeConstraints { make in
            make.width.height.equalTo(32.x_GSDD)
            make.top.equalToSuperview().offset(10.x_GSDD)
            make.centerX.equalToSuperview()
        }
        let settextntnext = UILabel.init()
        settextntnext.text = "Setup"
        settextntnext.textColor = .white
        settextntnext.textAlignment = .center
        settextntnext.font = UIFont.systemFont(ofSize: 14.x_GSDD, weight: .medium)
    
        sertntFileg.addSubview(settextntnext)
        settextntnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(seiiconmdio.snp.bottom).offset(10.x_GSDD)
        }
        
        
        //fanc
       
        let fanctFileg = UIButton.init()
        fanctFileg.backgroundColor = UIColor(red: 0.24, green: 0.18, blue: 0.41, alpha: 1
           )
        fanctFileg.layer.cornerRadius = 10
        fanctFileg.layer.masksToBounds = true
       
        view.addSubview(fanctFileg)
        fanctFileg.tag = 45
        fanctFileg.addTarget(self, action: #selector(relationTokayot(vmi: )), for: .touchUpInside)
       
        fanctFileg.snp.makeConstraints { make in
            make.width.height.equalTo(70.x_GSDD)
            make.top.equalTo(qiaminnext.snp.bottom).offset(40.y_GSDD)
            make.left.equalTo(sertntFileg.snp.right).offset(itemmant)
        }
        
        fancnCounttnext.text = "0"
        fancnCounttnext.textColor =  UIColor(red: 0.15, green: 1, blue: 0.97, alpha: 1)
        fancnCounttnext.textAlignment = .center
        fancnCounttnext.font = UIFont.systemFont(ofSize: 18.x_GSDD, weight: .medium)
    
        fanctFileg.addSubview(fancnCounttnext)
        fancnCounttnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(fanctFileg.snp.top).offset(10.x_GSDD)
        }
       
        let fancntnext = UILabel.init()
        fancntnext.text = "Fans"
        fancntnext.textColor = .white
        fancntnext.textAlignment = .center
        fancntnext.font = UIFont.systemFont(ofSize: 14.x_GSDD, weight: .medium)
    
        fanctFileg.addSubview(fancntnext)
        fancntnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(fancnCounttnext.snp.bottom).offset(10.x_GSDD)
        }

        
        
        
        
        //followe
        let followeFileg = UIButton.init()
        followeFileg.backgroundColor = UIColor(red: 0.24, green: 0.18, blue: 0.41, alpha: 1
           )
        followeFileg.layer.cornerRadius = 10
        followeFileg.layer.masksToBounds = true
       
        view.addSubview(followeFileg)
        followeFileg.tag = 46
        followeFileg.addTarget(self, action: #selector(relationTokayot(vmi: )), for: .touchUpInside)
       
        followeFileg.snp.makeConstraints { make in
            make.width.height.equalTo(70.x_GSDD)
            make.top.equalTo(qiaminnext.snp.bottom).offset(40.y_GSDD)
            make.left.equalTo(fanctFileg.snp.right).offset(itemmant)
        }
        
        follreCounttnext.text = "0"
        follreCounttnext.textColor =  UIColor(red: 0.15, green: 1, blue: 0.97, alpha: 1)
        follreCounttnext.textAlignment = .center
        follreCounttnext.font = UIFont.systemFont(ofSize: 18.x_GSDD, weight: .medium)
    
        followeFileg.addSubview(follreCounttnext)
        follreCounttnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(followeFileg.snp.top).offset(10.x_GSDD)
        }
       
        let Folloewdentnext = UILabel.init()
        Folloewdentnext.text = "Follow"
        Folloewdentnext.textColor = .white
        Folloewdentnext.textAlignment = .center
        Folloewdentnext.font = UIFont.systemFont(ofSize: 14.x_GSDD, weight: .medium)
    
        followeFileg.addSubview(Folloewdentnext)
        Folloewdentnext.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            
            make.top.equalTo(follreCounttnext.snp.bottom).offset(10.x_GSDD)
        }
        
        
        
        let Postswdentnext = UILabel.init()
        Postswdentnext.text = "Posts"
        Postswdentnext.textColor = .white
        Postswdentnext.textAlignment = .center
        Postswdentnext.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    
        view.addSubview(Postswdentnext)
        Postswdentnext.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            
            make.top.equalTo(followeFileg.snp.bottom).offset(25.y_GSDD)
        }
        
        
        
        let CaomingInager = UIImageView(image: UIImage.init(named: "noshingDataGSDD"))
        
        view.addSubview(CaomingInager)
        CaomingInager.snp.makeConstraints { make in
            make.width.equalTo(156.x_GSDD)
            make.height.equalTo(175.x_GSDD)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-20.x_GSDD)
        }
        
        
        
        view.addSubview(editBootomVIew)
        editBootomVIew.bagcloDisapiearGSDD.addTarget(self, action: #selector(cancelGSDD), for: .touchUpInside)
        
        editBootomVIew.takeiearGSDD.addTarget(self, action: #selector(takingProfolePhotoGSDD), for: .touchUpInside)
        editBootomVIew.OKNAmeGSDD.addTarget(self, action: #selector(saveProfoleinfoGSDD), for: .touchUpInside)
      
    }
    
    @objc func takingProfolePhotoGSDD()  {
        
        
    
        if avifOkaStatus == .authorized {
          
            presentGSDDImagePicker()
            
        } else if avifOkaStatus == .notDetermined {
            AVCaptureDevice.requestAccess(for: .video) { granted in
                if granted {
                    DispatchQueue.main.async {
                        self.presentGSDDImagePicker()
                    }
                }
            }
        } else {
            // 提示用户打开相机权限
            gsdd_loadActiveViw.shawGSDDFailure(messagGSDDe: "Sorry,No album permission!")
        }
        
    }
    
    
    
    @objc func saveProfoleinfoGSDD()  {
        let bullftext = AppDelegate.descBABAString(upcaseGS: "NbUhLbL")
        
        let usernamij = self.editBootomVIew.entertYOuNAmeGSDD.text  ?? bullftext
        
        let briefnamij = self.editBootomVIew.entertYOuBriefGSDD.text  ?? bullftext
        
        GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddNjmet = usernamij
        GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddVBrief = briefnamij
        
        GSDDEmaillogadComin.logUserImageIcon =  self.editBootomVIew.usersefimgInager.image
    
        GSDDEmaillogadComin.updateCurrentGSDDUsering(GSIDDD: GSDDDALoaing.chanGSDD.signinyhuGSDD?.gsddUID ?? "", nameGSDD: usernamij, briefGSDD: briefnamij, xcoinID: nil)
        
        
        ckaobeiinonext.text = usernamij
        qiaminnext.text = briefnamij
        usersefimgInager.image =  GSDDEmaillogadComin.logUserImageIcon
      
        
        cancelGSDD()
        
    }
    
    
    
    fileprivate func  presentGSDDImagePicker() {
        let  pickerSSIPVC = UIImagePickerController()
        
        pickerSSIPVC.sourceType = .camera
        
        pickerSSIPVC.delegate = self
       
        present(pickerSSIPVC, animated: true, completion: nil)
    }
    
    @objc func cancelGSDD()  {//编辑页面消失
        UIView.animate(withDuration: 1, animations: {
            self.editBootomVIew.frame = CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: 483)
        }, completion: nil)
     }
     
     @objc func sureelGSDD()  {//编辑页面出现
         UIView.animate(withDuration: 1, animations: {
             self.editBootomVIew.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 483, width: UIScreen.main.bounds.width, height: 483)
         }, completion: nil)
       
      }
    
}


extension GSDDMeGSDDComin:UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
        DispatchQueue.main.async {
            self.editBootomVIew.usersefimgInager.image = image
            self.usersefimgInager.image = image
            picker.dismiss(animated: true, completion: nil)
        }
        
    }
    
}
