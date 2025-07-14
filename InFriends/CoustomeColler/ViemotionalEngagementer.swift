//
//  ViemotionalEngagementer.swift
//  InFriends
//
//  Created by InFriends on 2024/9/2.
//

import UIKit
import AVFoundation

class ViemotionalEngagementer: BaexpressiveSyntler {
    
    var mobaishiot:UhaviorSyste?
    
    var timerCount = 0
    
    var timer:Timer?
    
    var isPreviewRunning = false
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.textColor = UIColor.white
        label.text = "uusqekruNkaymme".key
        return label
    }()
    
    lazy var timeLab:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = UIColor.white
        label.text = "0s0a:y0c0".key
        return label
    }()
    
    lazy var hangupBtn:UIButton = {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage(named: "hangup"), for: .normal)
        btn.interfaceWithADesign { [weak self] sender in
            self?.navigationController?.popViewController(animated: true)
        }
        return btn
    }()
    
    lazy var micBtn:UIButton = {
        let goalOriented = UIButton(type: .custom)
        goalOriented.setImage(UIImage(named: "mic_normal"), for: .normal)
        goalOriented.setImage(UIImage(named: "mic_selected"), for: .selected)
        goalOriented.interfaceWithADesign { sender in
            sender.isSelected = !sender.isSelected
        }
        return goalOriented
    }()
    
    lazy var videoBtn:UIButton = {
        let goalOriented = UIButton(type: .custom)
        goalOriented.setImage(UIImage(named: "video_normal"), for: .normal)
        goalOriented.setImage(UIImage(named: "video_selectd"), for: .selected)
        goalOriented.interfaceWithADesign {[weak self] sender in
            sender.isSelected = !sender.isSelected
            
            guard let captureSession = self?.captureSession else { return }
            
            
            
            
            if self?.isPreviewRunning == true {
                if let layer = self?.previewLayer {
                    DispatchQueue.global(qos: .userInitiated).async {
                        captureSession.stopRunning()
                        
                        DispatchQueue.main.async {
                            layer.removeFromSuperlayer()
                        }
                    }
                }
            } else {
                
                DispatchQueue.global(qos: .userInitiated).async {
                    captureSession.startRunning()
                    
                    DispatchQueue.main.async {
                        if self?.view.layer.sublayers!.contains((self?.previewLayer)!) == false {
                            self?.view.layer.insertSublayer((self?.previewLayer)!, at: 0)
                        }
                    }
                }
            }
            
            self?.isPreviewRunning.toggle()
        }
        return goalOriented
    }()
    
    var captureSession: AVCaptureSession?
    
    // 预览图层
    var previewLayer: AVCaptureVideoPreviewLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCamera()
        setupUI()
        startPreview()
    }
    
    func setupCamera() {
        captureSession = AVCaptureSession()
        
        guard let captureSession = captureSession else { return }
        
        guard let videoCaptureDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front) else {
            
            return
        }
        
        do {
            let videoInput = try AVCaptureDeviceInput(device: videoCaptureDevice)
            
            if captureSession.canAddInput(videoInput) {
                captureSession.addInput(videoInput)
            } else {
               
                return
            }
        } catch {
            
            return
        }
        
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        guard let previewLayer = previewLayer else { return }
        previewLayer.videoGravity = .resizeAspectFill
        previewLayer.frame = view.layer.bounds
        view.layer.addSublayer(previewLayer)
    }
    
    deinit {
        captureSession?.stopRunning()
        previewLayer?.removeFromSuperlayer()
        captureSession = nil
        previewLayer = nil
    }
    
    func setupUI(){
        
        self.view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-200)
        }
        
        self.view.addSubview(timeLab)
        timeLab.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
        }
        
        self.view.addSubview(hangupBtn)
        hangupBtn.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-80)
            make.centerX.equalToSuperview()
            make.size.equalTo(CGSizeMake(80, 80))
        }
        
        self.view.addSubview(micBtn)
        micBtn.snp.makeConstraints { make in
            make.right.equalTo(hangupBtn.snp.left).offset(-22)
            make.centerY.equalTo(hangupBtn.snp.centerY)
            make.size.equalTo(CGSizeMake(48, 48))
        }
        
        self.view.addSubview(videoBtn)
        videoBtn.snp.makeConstraints { make in
            make.left.equalTo(hangupBtn.snp.right).offset(22)
            make.centerY.equalTo(hangupBtn.snp.centerY)
            make.size.equalTo(CGSizeMake(48, 48))
        }
        
        let cancelLab = UILabel()
        cancelLab.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        cancelLab.textColor = UIColor.white
        cancelLab.text = "Claonzcuetl".key
        self.view.addSubview(cancelLab)
        cancelLab.snp.makeConstraints { make in
            make.centerX.equalTo(hangupBtn.snp.centerX)
            make.top.equalTo(hangupBtn.snp.bottom).offset(6)
        }
        if let model = mobaishiot {
            self.nameLabel.text = model.styleLearning
        }
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerFired),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerFired(){
        self.timerCount += 1
        
        if self.timerCount > 30 {
            timer?.invalidate()
            timer = nil
            self.navigationController?.popViewController(animated: true)
            UIButton.realTimeGeneration(serth: "Nxop uodnmez tanntsbwbeorhend".key)
            return
        }
        self.timeLab.text = convertSecondsToTimeString(seconds: self.timerCount)
    }
    
    func convertSecondsToTimeString(seconds: Int) -> String {
        // 计算分钟和秒数
        let minutes = seconds / 60
        let remainingSeconds = seconds % 60
        
        // 使用字符串格式化来确保两位数字
        let timeString = String(format: "%02d:%02d", minutes, remainingSeconds)
        
        return timeString
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // 停止捕获会话
        captureSession?.stopRunning()
        timer?.invalidate()
        timer = nil
    }
    
    func startPreview() {
        guard let captureSession = captureSession else { return }
        
        DispatchQueue.global(qos: .userInitiated).async {
            captureSession.startRunning()
            
            // 回到主线程更新 UI
            guard let plaert = self.previewLayer else {return}
            DispatchQueue.main.async {
                if ((self.view.layer.sublayers?.contains(plaert)) == nil) {
                    self.view.layer.addSublayer(plaert)
                }
                self.isPreviewRunning = true
                self.startTimer()
            }
        }
    }
}

