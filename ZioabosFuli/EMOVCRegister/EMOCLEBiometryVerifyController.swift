import UIKit
import AVFoundation
import Vision 

class EMOCLEBiometryVerifyController: EMOCLEBaseFlowController, AVCaptureVideoDataOutputSampleBufferDelegate {
    
    private var captureSessionEMOCLE: AVCaptureSession?
    private let previewLayerEMOCLE = AVCaptureVideoPreviewLayer()
    
    private let scannerOverlayEMOCLE = UIView()
    private let scanningLineEMOCLE = UIView()
    private let alertToastEMOCLE = UILabel()
    private let shutterEMOCLE = UIButton()
 
    private var isFaceDetectedEMOCLE = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgalayer.isHidden = true
        regdsiterTitle.text = "Vdexryibfmyn xYqoougrb tIwdkevnyttiptsy".characterBelievability()
        setupCameraPreviewEMOCLE()
        setupOverlayUIEMOCLE()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       
        previewLayerEMOCLE.frame = view.bounds
    }
    private func setupCameraPreviewEMOCLE() {
        let statusEMOCLE = AVCaptureDevice.authorizationStatus(for: .video)
        switch statusEMOCLE {
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { [weak self] granted in
                if granted {
                    DispatchQueue.main.async { self?.initiateCaptureSessionEMOCLE() }
                } else {
                    self?.handleCameraDeniedEMOCLE()
                }
            }
        case .authorized:
            initiateCaptureSessionEMOCLE()
        case .denied, .restricted:
            handleCameraDeniedEMOCLE()
        @unknown default: break
        }
    }

    private func initiateCaptureSessionEMOCLE() {
        captureSessionEMOCLE = AVCaptureSession()
        guard let session = captureSessionEMOCLE else { return }
        view.backgroundColor = .black
        
        
        guard let frontCamera = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front),
              let input = try? AVCaptureDeviceInput(device: frontCamera) else { return }
        
        if session.canAddInput(input) { session.addInput(input) }
   
        let videoOutput = AVCaptureVideoDataOutput()
        videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "videoQueueEMOCLE"))
        if session.canAddOutput(videoOutput) {
            session.addOutput(videoOutput)
        }
        // ------------------------------------
        
        previewLayerEMOCLE.session = session
        previewLayerEMOCLE.videoGravity = .resizeAspectFill
        previewLayerEMOCLE.frame = view.bounds
        view.layer.insertSublayer(previewLayerEMOCLE, at: 0)
        
        DispatchQueue.global(qos: .userInitiated).async {
            session.startRunning()
        }
    }


    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        guard let pixelBuffer = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        let request = VNDetectFaceRectanglesRequest { [weak self] request, error in
            guard let results = request.results as? [VNFaceObservation] else { return }
            
            DispatchQueue.main.async {
               
                self?.isFaceDetectedEMOCLE = !results.isEmpty
                
                if self?.isFaceDetectedEMOCLE == true {
                    self?.alertToastEMOCLE.textColor = .green
                } else {
                    self?.alertToastEMOCLE.textColor = UIColor(red: 1, green: 0.34, blue: 0.61, alpha: 1)
                }
            }
        }
        
        let handler = VNImageRequestHandler(cvPixelBuffer: pixelBuffer, orientation: .leftMirrored, options: [:])
        try? handler.perform([request])
    }

    @objc private func simulateCaptureSequenceEMOCLE() {
        
        guard isFaceDetectedEMOCLE else {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Nfoi fwaqcmel dpextlebcstlevdp".characterBelievability())
            return
        }
        
        takePhoto()
    }
    
    func takePhoto() {
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        
        captureSessionEMOCLE?.stopRunning()
        
        let processingIndicatorEMOCLE = UIActivityIndicatorView(style: .large)
        processingIndicatorEMOCLE.color = .white
        processingIndicatorEMOCLE.center = view.center
        view.addSubview(processingIndicatorEMOCLE)
        processingIndicatorEMOCLE.startAnimating()
        
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Vmexreicfyviinng fvaucmel sfcraunm...".characterBelievability())
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            processingIndicatorEMOCLE.stopAnimating()
            let welcomeAboardEMOCLE = EMOCLEWelcomeAboardController()
            self.navigationController?.pushViewController(welcomeAboardEMOCLE, animated: true)
        }
    }

 
    private func setupOverlayUIEMOCLE() {
        let overlayPathEMOCLE = UIBezierPath(rect: view.bounds)
        let faceRectEMOCLE = CGRect(x: view.center.x - 110, y: view.center.y - 180, width: 220, height: 300)
        let facePathEMOCLE = UIBezierPath(ovalIn: faceRectEMOCLE)
        overlayPathEMOCLE.append(facePathEMOCLE)
        overlayPathEMOCLE.usesEvenOddFillRule = true

        let fillLayerEMOCLE = CAShapeLayer()
        fillLayerEMOCLE.path = overlayPathEMOCLE.cgPath
        fillLayerEMOCLE.fillRule = .evenOdd
        fillLayerEMOCLE.fillColor = UIColor.black.withAlphaComponent(0.5).cgColor
        view.layer.addSublayer(fillLayerEMOCLE)

        alertToastEMOCLE.text = "Pslzemacszea qmxagkeej qshuxrcen kyaonutrv peonfttidrmeu yfnadcmea kipsz gebxlpuossmeddp fwxirtjhcoluwtr dabnnyt kofbesetdraubcdtaicomnjsh.".characterBelievability()
        alertToastEMOCLE.textColor = UIColor(red: 1, green: 0.34, blue: 0.61, alpha: 1)
        alertToastEMOCLE.font = .systemFont(ofSize: 14, weight: .medium)
        alertToastEMOCLE.numberOfLines = 0
        alertToastEMOCLE.textAlignment = .center
        alertToastEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(alertToastEMOCLE)

        shutterEMOCLE.setBackgroundImage(UIImage(named: "innerDotEMOCLE"), for: .normal)
        shutterEMOCLE.addTarget(self, action: #selector(simulateCaptureSequenceEMOCLE), for: .touchUpInside)
        shutterEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(shutterEMOCLE)

        NSLayoutConstraint.activate([
            shutterEMOCLE.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            shutterEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shutterEMOCLE.widthAnchor.constraint(equalToConstant: 80),
            shutterEMOCLE.heightAnchor.constraint(equalToConstant: 80),
            alertToastEMOCLE.bottomAnchor.constraint(equalTo: shutterEMOCLE.topAnchor, constant: -30),
            alertToastEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            alertToastEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
        
        addScanningAnimationEMOCLE(in: faceRectEMOCLE)
    }

    private func addScanningAnimationEMOCLE(in rect: CGRect) {
        scanningLineEMOCLE.frame = CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.width, height: 2)
        scanningLineEMOCLE.backgroundColor = .systemPink
        scanningLineEMOCLE.layer.shadowColor = UIColor.systemPink.cgColor
        scanningLineEMOCLE.layer.shadowRadius = 10
        scanningLineEMOCLE.layer.shadowOpacity = 0.8
        view.addSubview(scanningLineEMOCLE)
        
        UIView.animate(withDuration: 2.0, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.scanningLineEMOCLE.frame.origin.y = rect.origin.y + rect.height
        }, completion: nil)
    }
    
    private func handleCameraDeniedEMOCLE() {
        DispatchQueue.main.async {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Pulneyalsiew rexnraubjlgef gcjacmiemriab upveqrfmeipsesiiaodnjsk eijne ySmegtwtfivnaggsz.".characterBelievability())
        }
    }
}
