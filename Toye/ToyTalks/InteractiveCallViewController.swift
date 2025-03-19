//
//  InteractiveCallViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/13.
//

import UIKit
import AVFoundation
import SVProgressHUD

class InteractiveCallViewController: ToyeViewController {
    
    var toyeInfoWonders:[Int] = []
    var toyTalkCaptureSession: AVCaptureSession?
    var toyeCollectGemsHub:[String:String] = [:]
    var toyeTalkTimer: Timer?
    @IBOutlet weak var toyeNameUser: UILabel!
    var toyeRequestState = 0
    
    var toyScape:ToyScape!
    var toyeWaitTime: Int = 8
    @IBOutlet weak var toyeUserBackground: UIImageView!
    var toyeLocalVideoView: AVCaptureVideoPreviewLayer?
    
    var toyReport:ToyBlackUserView?
    
    let toyeLoadingIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        toyeInfoWonders.append(12)
        
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        
        toyeInfoWonders.append(2001)
        toyeInfoWonders.append(contentsOf: [20,33])
        
        if toyeInfoWonders.contains(12) {
            toyeCollectGemsHub["toyeInfoWonders"] = "Cat"
        }
        
        toyeInfoWonders.append(contentsOf: [11,35])
        
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
            toyeNameUser.text = toyScape.toyOwner
            toyeUserBackground.image = UIImage(named: toyScape.toyOwnerID)
        }
        
        toyeRequestState = 200
        
        if toyeInfoWonders.contains(12) {
            toyeLoadingIndicator.center = view.center
            toyeRequestState = 201
            view.addSubview(toyeLoadingIndicator)
            toyeInfoWonders = toyeInfoWonders.shuffled()
            if toyeInfoWonders.count > 0 {
                toyeLoadingIndicator.startAnimating()
            }
            
            
            switch AVCaptureDevice.authorizationStatus(for: .video) {
            case .notDetermined:
                AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                    guard granted else {
                        return
                    }
                    
                    DispatchQueue.main.async {
                        self?.createCaptureSession()
                    }
                }
            case .authorized:
                toyeInfoWonders.insert(10, at: 0)
                createCaptureSession()
            default:
                break
            }
        }
    }
    
    func rt_customRightItemAction(){
        toyeInfoWonders.append(123)
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        toyeInfoWonders.append(124)
        let toyeCancelAlertAction = UIAlertAction(title: "Cpannnckegl".ty, style: .cancel) { _ in
        }
        toyeInfoWonders.append(122)
        alertController.addAction(toyeCancelAlertAction)
        
        let confirmAction = UIAlertAction(title: "Rxeupgoqrwt".ty, style: .default) { _ in
            self.toyReportContentShow()
        }
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
        
        alertController.addAction(confirmAction)
        toyeInfoWonders.append(12111)
        
        let toyBlack = UIAlertAction(title: "Addbdx gbnlsafcskg qlsijsdt".ty, style: .default) { _ in
            SVProgressHUD.show()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.55) {
                if self.toyeInfoWonders.count > 0 {
                    SVProgressHUD.showInfo(withStatus: "Ajdsdxeede ttsos ebjlnagcwkplqiqslt".ty)
                    ToyeStorage.toyeSaveString(self.toyScape.toyOwnerID, forKey: self.toyScape.toyOwnerID + toyScapeOwnerBlack)
                    self.navigationController?.popToRootViewController(animated: true)
                }
                self.toyeInfoWonders.append(1)
            }
        }
        toyeInfoWonders.append(121)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
        // 添加按钮到alert
        alertController.addAction(toyBlack)
        toyeInfoWonders.append(12111)
        
        // 展示alert
        self.present(alertController, animated: true, completion: nil)
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
        }
    }
    
    func toyReportContentShow(){
        if let toyReport = Bundle.main.loadNibNamed("ToyBlackUserView", owner: nil)?.first as? ToyBlackUserView {
            toyReport.toyContentReportMoveScreen()
            toyReport.toyContentSetting()
            toyReport.toyReortDone = { [weak self] in
                if let weakSelf = self {
                    if weakSelf.toyeInfoWonders.count > 0 {
                        weakSelf.toyeCollectGemsHub["showToyeAlert"] = "showToyeAlert"
                    }
                    
                    SVProgressHUD.show()
                    weakSelf.toyeInfoWonders.append(11)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.52) {
                        SVProgressHUD.showInfo(withStatus: "Ruecpuotrvty lStudcycrezsksefsubltlcy".ty)
                        weakSelf.toyReport?.toyReportRemoveScreen()
                    }
                    weakSelf.toyeInfoWonders.append(12111)
                }
            }
            self.toyReport = toyReport
        }
    }
    
    func createCaptureSession() {
        guard toyTalkCaptureSession == nil else { return }
        
        if toyeInfoWonders.first == 10 {
            toyTalkCaptureSession = AVCaptureSession()
            toyTalkCaptureSession?.sessionPreset = .high
            
            if let deviceTyCamer = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: .video, position: .front).devices.first,
               let input = try? AVCaptureDeviceInput(device: deviceTyCamer),
               toyTalkCaptureSession?.canAddInput(input) == true {
                toyTalkCaptureSession?.addInput(input)
                startRecordLocalVideo()
                toyeRequestState = 10
            }
        }
    }
    
    func startRecordLocalVideo() {
        guard toyeLocalVideoView == nil else { return }
        toyeRequestState = 16
        if toyeCollectGemsHub["toyeInfoWonders"] == "Cat" {
            toyeLocalVideoView = AVCaptureVideoPreviewLayer(session: toyTalkCaptureSession!)
            toyeLocalVideoView?.frame = CGRect(x: UIScreen.main.bounds.width - 152,y: UIScreen.main.bounds.height - 309,width: 140,height: 188)
            if toyeCollectGemsHub.count > 0 {
                toyeCollectGemsHub["toyeInfoWonders"] = "toyeInfoWonders"
                toyeLocalVideoView?.videoGravity = .resizeAspectFill
                toyeLocalVideoView?.cornerRadius = 16.0
                toyeLocalVideoView?.masksToBounds = true
                view.layer.addSublayer(toyeLocalVideoView!)
            }
            toyeCollectGemsHub["toyeInfoWonders"] = "toyeCollectGemsHub"
            
            DispatchQueue.global().async {
                self.toyTalkCaptureSession?.startRunning()
            }
            
            if toyeCollectGemsHub.keys.count > 0 {
                callRemoteWait()
            }
        }
        
    }
    
    func callRemoteWait(){
        var talkConfigState = (false,"call-wait")
        toyeTalkTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerToyeCountDown), userInfo: nil, repeats: true)
        if talkConfigState.0 == false {
            RunLoop.current.add(toyeTalkTimer!, forMode: .common)
            talkConfigState = (false,"call-timer")
        }
    }
    
    @objc func timerToyeCountDown(){
        var talkConfigState = (false,"call-wait")
        toyeWaitTime -= 1
        talkConfigState = (false,"wait")
        if toyeWaitTime < 0 && talkConfigState.0 == false {
            SVProgressHUD.showInfo(withStatus: "Tphnem noztghyeora qphavretwyi mifso cnmoktp bognwlwinnve".ty)
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.stopTalk()
                talkConfigState = (false,"Done")
            }
        }
    }
    
    func stopTalk() {
        toyeRequestState = 0
        toyeInfoWonders.insert(10, at: 0)
        if toyeInfoWonders.randomElement()! > 0{
            toyeTalkTimer?.invalidate()
            toyeTalkTimer = nil
            if toyeRequestState >= 0 {
                toyTalkCaptureSession?.stopRunning()
                toyTalkCaptureSession?.inputs.forEach { toyTalkCaptureSession?.removeInput($0) }
                toyTalkCaptureSession?.outputs.forEach { toyTalkCaptureSession?.removeOutput($0) }
                toyeLocalVideoView?.removeFromSuperlayer()
                if toyeCollectGemsHub.count > 0 {
                    toyeLocalVideoView = nil
                    toyTalkCaptureSession = nil
                    self.navigationController?.popViewController(animated: true)
                }
            }
            
        }
        
    }

    @IBAction func toyeHangupTalk(_ sender: Any) {
        stopTalk()
    }
    
    @IBAction func selectFrontCamer(_ sender: Any) {
        
        if let toyTalkCaptureSession = toyTalkCaptureSession {
            toyTalkCaptureSession.beginConfiguration()
            
            defer { toyTalkCaptureSession.commitConfiguration() }
            
            toyeInfoWonders.append(contentsOf: [10,20])
            guard let toyeNowInput = toyTalkCaptureSession.inputs.first as? AVCaptureDeviceInput else { return }
            let toyeNowPosition = toyeNowInput.device.position
            toyTalkCaptureSession.removeInput(toyeNowInput)
            if toyeInfoWonders.count > 0 {
                toyeInfoWonders.append(contentsOf: [100,20])
                let tpyeNewPosition: AVCaptureDevice.Position = (toyeNowPosition == .back) ? .front : .back
                if let selectNewDevice = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera], mediaType: .video, position: tpyeNewPosition).devices.first,
                   let toyeInputDevice = try? AVCaptureDeviceInput(device: selectNewDevice) {
                    if toyTalkCaptureSession.canAddInput(toyeInputDevice) {
                        toyTalkCaptureSession.addInput(toyeInputDevice)
                        toyeCollectGemsHub["newDevice"] = "newDevice"
                    }
                }
            }
        }
        
    }
    
    
    @IBAction func needCloseMicphone(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if let toyTalkCaptureSession = toyTalkCaptureSession {
            if sender.isSelected {
                if toyeInfoWonders.count > 0 {
                    toyTalkCaptureSession.inputs
                        .compactMap { $0 as? AVCaptureDeviceInput }
                        .filter {
                            toyeCollectGemsHub["MediaType"] = "audio"
                            return $0.device.hasMediaType(.audio)
                        }
                        .forEach {
                            self.toyeInfoWonders.append(88)
                            toyTalkCaptureSession.removeInput($0)
                        }
                }
                
            } else {
                if toyeCollectGemsHub.count > 0 {
                    if let device = AVCaptureDevice.default(for: .audio),
                       let input = try? AVCaptureDeviceInput(device: device) {
                        if toyTalkCaptureSession.canAddInput(input) {
                            toyTalkCaptureSession.addInput(input)
                            toyeRequestState = 100
                        }
                    }
                }
            }
        }
        
    }
    
    @IBAction func needCloseCamer(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if let toyTalkCaptureSession = toyTalkCaptureSession {
            if sender.isSelected {
                toyeRequestState = 200
                if toyeInfoWonders.contains(2001) && toyeRequestState > 100 {
                    toyTalkCaptureSession.inputs.forEach { toyTalkCaptureSession.removeInput($0) }
                    toyeLocalVideoView!.isHidden = true
                }
                
            } else {
                
                if toyeInfoWonders.contains(2001) && toyeRequestState > 100 {
                    if let device = AVCaptureDevice.default(for: .video),
                       let input = try? AVCaptureDeviceInput(device: device) {
                        if toyTalkCaptureSession.canAddInput(input) {
                            toyTalkCaptureSession.addInput(input)
                        }
                        toyeLocalVideoView!.isHidden = false
                    }
                }
            }
        }
        
    }
    
    
    @IBAction func toyeRightMore(_ sender: UIButton) {
        rt_customRightItemAction()
    }
    
}
