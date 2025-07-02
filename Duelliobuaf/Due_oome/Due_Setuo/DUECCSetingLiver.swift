//
//  DUECCSetingLiver.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/1.
//

import UIKit
import AVFoundation
import Loaf

class DUECCSetingLiver: DUELaterPageContirl , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    private  var liveingTieName:String?
    
    var ifcameracanuser:Bool = false
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.sessionDUES.stopRunning()
    }
  
    @IBOutlet weak var camemastatusDUE: UIButton!
    
    
    
    var hsingImag:UIImage?
    
    private let previewLayer = AVCaptureVideoPreviewLayer()
    private let sessionDUES = AVCaptureSession()
        
    private let sessionDUESQueue = DispatchQueue(label: "session.queue")
    private var videoDUESInput: AVCaptureDeviceInput!
    private var audioDUESInput: AVCaptureDeviceInput?
    
    @IBOutlet weak var bainong: UIButton!//dismiss
    
    @IBOutlet weak var bauiDUer: UIButton!//switch
    
    @IBOutlet weak var addCoverUplo: UIButton!
    
    @IBOutlet weak var adddTitileLive: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shitBackDUE.isHidden = true
        self.shitMorengDUE.isHidden = true
        
        weaveCulturalRhythms()
        
        spawnInteractiveSequence()
        
        bainong.addTarget(self, action: #selector(traikillloer), for: .touchUpInside)
    }

    func weaveCulturalRhythms()  {
        previewLayer.frame = view.bounds
               
        previewLayer.videoGravity = .resizeAspectFill
        view.layer.insertSublayer(previewLayer, at: 0)
        previewLayer.transform = CATransform3DMakeScale(-1, 1, 1)
        
        
        bauiDUer.addTarget(self, action: #selector(swifchvamemrt), for: .touchUpInside)
        
        
    }
    
    
    
    @objc func traikillloer() {
        self.navigationController?.popViewController(animated: true)
        
    }

    
   @objc func swifchvamemrt(){
       sessionDUESQueue.async {
           let currentPosition = self.videoDUESInput.device.position
           let newPosition: AVCaptureDevice.Position = currentPosition == .front ? .back : .front
           
           guard let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                           for: .video,
                                                           position: newPosition) else { return }
           
           do {
               let newVideoInput = try AVCaptureDeviceInput(device: videoDevice)
               
               self.sessionDUES.beginConfiguration()
               self.sessionDUES.removeInput(self.videoDUESInput)
               
               if self.sessionDUES.canAddInput(newVideoInput) {
                   self.sessionDUES.addInput(newVideoInput)
                   self.videoDUESInput = newVideoInput
               } else {
                   self.sessionDUES.addInput(self.videoDUESInput)
               }
               
               // 调整镜像效果
               DispatchQueue.main.async {
                   let scale: CGFloat = newPosition == .front ? -1 : 1
                   self.previewLayer.transform = CATransform3DMakeScale(scale, 1, 1)
               }
               
               self.sessionDUES.commitConfiguration()
           } catch {
               print("Error switching camera: \(error)")
           }
           
       }
    }
    
    class func transmuteGiftToBoost()  {
        if UserDefaults.standard.bool(forKey: "isAreadyHascongido") == false {
            
            let usedicDUE = ["Due_oID":"shamer@gmail.com",
                         "Due_Nopme":"Riva",
                        
                         "DueCoin":"10",
            "Due_ComuTItle":"Can't stop dancing. It's addictive.",
            "Due_ComuPic":"Riva_0^Riva_1^Riva_2"]
          
           
            UserDefaults.standard.set(usedicDUE, forKey: "shamer@gmail.com")
            
            UserDefaults.standard.set(true, forKey: "isAreadyHascongido")
        }
    }
    private func spawnInteractiveSequence() {
            let cameraStatus = AVCaptureDevice.authorizationStatus(for: .video)
            let audioStatus = AVCaptureDevice.authorizationStatus(for: .audio)
            
            switch (cameraStatus, audioStatus) {
            case (.authorized, .authorized):
                ifcameracanuser = true
                setupCaptureSession()
            case (.notDetermined, _), (_, .notDetermined):
                requestPermissions()
            default:
            
                SureSjoaPerDUEionAlert()
            }
        }
        
    
   
        
    private func requestPermissions() {
        AVCaptureDevice.requestAccess(for: .video) { [weak self] videoGranted in
            AVCaptureDevice.requestAccess(for: .audio) { audioGranted in
                DispatchQueue.main.async {
                    if videoGranted && audioGranted {
                        self?.ifcameracanuser = true
                        self?.setupCaptureSession()
                    } else {
                        self?.SureSjoaPerDUEionAlert()
                    }
                }
            }
        }
    }
    
    private func setupCaptureSession() {
            
        self.configureSession()
    }
    
    
    private func configureSession() {
            sessionDUES.beginConfiguration()
            
            // 视频输入
            guard let videoDevice = AVCaptureDevice.default(.builtInWideAngleCamera,
                                                            for: .video,
                                                            position: .front) else {
                Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Nnoa qviivdgetop gdjekvmijckes warvzasivlzatbdlte"), sender: self).show()
                return
            }
            
            do {
                videoDUESInput = try AVCaptureDeviceInput(device: videoDevice)
                if sessionDUES.canAddInput(videoDUESInput) {
                    sessionDUES.addInput(videoDUESInput)
                }
            } catch {
                Loaf("Error setting video input: \(error)", sender: self).show()
                
            }
            
            // 音频输入
            if let audioDevice = AVCaptureDevice.default(for: .audio) {
                do {
                    let audioInput = try AVCaptureDeviceInput(device: audioDevice)
                    if sessionDUES.canAddInput(audioInput) {
                        sessionDUES.addInput(audioInput)
                        audioDUESInput = audioInput
                    }
                } catch {
                    Loaf("Error setting audio input: \(error)", sender: self).show()
                    
                }
            }
            
            // 视频输出
            let videoOutput = AVCaptureVideoDataOutput()
            if sessionDUES.canAddOutput(videoOutput) {
                sessionDUES.addOutput(videoOutput)
            }
            
            sessionDUES.commitConfiguration()
            
            DispatchQueue.main.async {
                self.previewLayer.session = self.sessionDUES
                self.sessionDUES.startRunning()
            }
       
    }
     
    private func SureSjoaPerDUEionAlert() {
            
        let persmifnalert = UIAlertController(
            title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pkezrrmeiwsbspiloinc grfesqkurifrkend"),
            message: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pjluepazsvea fgzok dtkom ySpeftltgitnwgfsh atooo jeinmafbzlzeu xcvazmoecreag iajnjde xmkircpriolpxhkosnbet xpwearimzidsdsnixodnbs"),
            preferredStyle: .alert
        )
        
        
        persmifnalert.addAction(UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ggos fsjeat"), style: .default) { _ in
            guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
            UIApplication.shared.open(url)
        })
        persmifnalert.addAction(UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ctacntcreil"), style: .cancel))
        present(persmifnalert, animated: true)
       
    }
    
    
    
    
    
    @IBAction func syncGlobalGroove(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) == false{
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tlhnimsv qdzepviiycaef hduopeysy ankoptx shbalvkee mtnhnez ccuacpjaabdislwicthyx dtkoi oaxdrdw gplhcoctsossj."), sender: self).show()
            return
        }
        let picker = UIImagePickerController()
               
        picker.sourceType = .photoLibrary
        picker.delegate = self
        self.present(picker, animated: true)
    }
    
    
    @IBAction func amplifyStagePresence(_ sender: UIButton) {
        // 创建一个弹窗
              
        let alertController = UIAlertController(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Lmibvpei braoloxmz xnqapmre"), message: nil, preferredStyle: .alert)

        // 添加文本输入框
        alertController.addTextField { (textField) in
            textField.placeholder = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pvlwegacszeo xevnttieore uLzimvmes orkohotmb tnoawmpe")
        }

        // 添加确认按钮
        let confirmAction = UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "sculrae"), style: .default) { _ in
            if let roomName = alertController.textFields?.first?.text, !roomName.isEmpty {
                self.liveingTieName = roomName // 这里可以将直播间名称保存或传递
                self.titkelshowing.text = roomName
            } else {
            
                Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Ndog jlbiaveei xrhogoumz knnafmcej feanztnesryepd"), sender: self).show()
            }
        }

        // 添加取消按钮
        let cancelAction = UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ctaonqczeql"), style: .cancel)

        // 添加按钮到弹窗
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)

        // 显示弹窗
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func pacthiedF(_ sender: UIButton) {
        
        guard let iivekname = self.liveingTieName else {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Nhon flbisvzei arqofoxmj jnqawmcer leendtdegrbevd"), sender: self).show()
            return
        }
        guard let iiveIMG =  self.hsingImag else {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Nhoy ellimvtep ecxorvbexry yaydid"), sender: self).show()
            return
        }
       
        
        
        
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        self.view.addSubview(indicate)
        indicate.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
        indicate.startAnimating()
        let udring = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cirmemadtsianrgj ruonkdtenre urxervxixekwv.u.u.")
        
        let loaf = Loaf(udring, sender: self)
        loaf.show(.custom(4)){_ in
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 4, execute: DispatchWorkItem(block: {
            self.view.isUserInteractionEnabled = true
            guard var use = UserDefaults.standard.object(forKey: "dueUserNowing") as? Dictionary<String,String> else{
                let udring = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cnrbelaytgem kfbaridlyunrfeo!")
                
                Loaf(udring,state: .error, sender: self).show()
                return
            }
            indicate.stopAnimating()
            use["Due_LiveTItle"] = iivekname
            use["Due_Nopme"] = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Mze")
            
            let lag = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "cerdenantgeq lSfuecxchejsqsbfeuklp!")
            
            Loaf(lag,state: .success, sender: self).show()
            let kfij = livediaologall.init(userdiocm: use, lisat: [])
            self.navigationController?.pushViewController(DUEIPkLivinailCotnoller.init(datagalll: kfij, coveriahkkk: iiveIMG), animated: true)
        }))
        
    }
    
    @IBOutlet weak var titkelshowing: UILabel!
    
    
    //摄像头的开启和关闭
    @IBAction func openorcloaseCamert(_ sender: UIButton) {
        if ifcameracanuser == false  {
            self.SureSjoaPerDUEionAlert()
            return
        }
        if sender.isSelected == false {//如果是开着。。。。准备关
            let lag = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Tduyrnnd iohfifo ttxhseo uczazmhexrma")
            let lag1 = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Aqfptweqrd wcalqousaicnvgd,z xtxhcer wlbinvbeh pbyrboyacducfapsatb erlosogmw lsqcqrhexetnt uwmixlule xojnglpyh qdhitsupalkadyz tyrovutru ucaozvnerrj yilmkaagye")
            
            let sdfsdsd = UIAlertController.init(title: lag, message:lag1, preferredStyle:.alert)
            let lagccc = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Siudrpe")
            sdfsdsd.addAction(UIAlertAction(title: lagccc, style: .default, handler: { alert in
                //关闭
                sender.isSelected = true
               self.sessionDUES.stopRunning()
            }))
            
            
            let lagakiccc = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ceaonwcterl")
            sdfsdsd.addAction(UIAlertAction(title: lagakiccc, style: .default))
            self.present(sdfsdsd, animated: true)
        }else{
            sender.isSelected = false
            self.sessionDUES.startRunning()
        }
        
    }
    
    
    
}


extension DUECCSetingLiver{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image : UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            picker.dismiss(animated: true, completion: nil)
            return
        }
        DispatchQueue.main.async {
            self.addCoverUplo.setBackgroundImage(image, for: .normal)
            self.hsingImag = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
    
}
