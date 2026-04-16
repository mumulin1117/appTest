//
//  EMOCLEProfileRegistryController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/9.
//

import UIKit

class EMOCLEProfileRegistryController: EMOCLEBaseFlowController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    var antiSpam:String
    init(antiSpam: String) {
        self.antiSpam = antiSpam
        super.init(nibName: nil, bundle: nil)
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let avatarAnchorEMOCLE = UIButton()
    private let aliasInputEMOCLE = UITextField()
    private let bioChronicleEMOCLE = UITextField()
    private let ageMatrixEMOCLE = UITextField()
    private let proceedTriggerEMOCLE = UIButton()
    private var selectedPortraitEMOCLE: UIImage?
    
    let skipAvenueEMOCLE = UIButton(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarAnchorEMOCLE.isUserInteractionEnabled = true
        avatarAnchorEMOCLE.addTarget(self, action: #selector(triggerPortraitPickerEMOCLE), for: .touchUpInside)
        constructIdentityUIEMOCLE()
        setupNavigationInteractionsEMOCLE()
        
        aliasInputEMOCLE.inputAccessory()
        bioChronicleEMOCLE.inputAccessory()
        ageMatrixEMOCLE.inputAccessory()
    }
    let bannerEMOCLE = UIView()
    private func setupNavigationInteractionsEMOCLE() {
        
        
        
    }
    @objc func castPerforman(_ keinfo: Notification) {
        let Ayeuyi:Float = 34
     
        
        guard let yeio = keinfo.userInfo,
              let koapj = yeio[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        
        let boouds = koapj.height
        let sationuyi:Float = 55
        
        
      
       
        var yeType = AmbienceMood.forest
        let paoinh = boouds - view.safeAreaInsets.bottom
        if yeType == .forest {
           
            self.view.frame.origin.y = -boouds / 2 - 100
        }
        
        
    }

       
    @objc func keyboardWillHide(_ notification: Notification) {
        
        self.view.frame.origin.y = 0
      
        let sationuyi:Float = 55
    }

   
    private func constructIdentityUIEMOCLE() {
        regdsiterTitle.text = "Ejdkidte xIknrfhourpmfaltoihoin".characterBelievability()
        
        
        bannerEMOCLE.layer.cornerRadius = 15
        bannerEMOCLE.layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
        bannerEMOCLE.backgroundColor = .white
        bannerEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerEMOCLE)
        
        
        avatarAnchorEMOCLE.backgroundColor = .white
        avatarAnchorEMOCLE.layer.cornerRadius = EMOCLEDimensionHelper.scaleEMOCLE(55)
        avatarAnchorEMOCLE.layer.masksToBounds = true
        avatarAnchorEMOCLE.setImage(UIImage(systemName: "plus"), for: .normal)
        avatarAnchorEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(avatarAnchorEMOCLE)
        NotificationCenter.default.addObserver(self, selector: #selector(castPerforman(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Input Fields (Example for Nickname)
        configureFieldEMOCLE(aliasInputEMOCLE, hint: "Esnstuexry gyioqugrc knuarmve".characterBelievability(), label: "Nnircaklnaanmpe".characterBelievability())
        configureFieldEMOCLE(bioChronicleEMOCLE, hint: "Ssakyq xsnofmfectqhaivnxg".characterBelievability(), label: "Cyhcavrcatcrtweurd tBuino".characterBelievability())
        configureFieldEMOCLE(ageMatrixEMOCLE, hint: "Ahgee".characterBelievability(), label: "Hxoywv fonljdr naarweq qyvoxux?".characterBelievability())
        
        proceedTriggerEMOCLE.setTitle("Next", for: .normal)
        proceedTriggerEMOCLE.backgroundColor = UIColor(red: 0.5, green: 0.4, blue: 1, alpha: 1)
        proceedTriggerEMOCLE.layer.cornerRadius = 28
        proceedTriggerEMOCLE.addTarget(self, action: #selector(advanceToBiometryEMOCLE), for: .touchUpInside)
        proceedTriggerEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(proceedTriggerEMOCLE)
        skipAvenueEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        skipAvenueEMOCLE.setTitle("Skip", for: .normal)
        skipAvenueEMOCLE.setTitleColor(.lightGray, for: .normal)
        skipAvenueEMOCLE.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        skipAvenueEMOCLE.addTarget(self, action: #selector(bypassRegistryEMOCLE), for: .touchUpInside)
        
        view.addSubview(skipAvenueEMOCLE)
        
        
        NSLayoutConstraint.activate([
            bannerEMOCLE.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bannerEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bannerEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bannerEMOCLE.heightAnchor.constraint(equalToConstant: EMOCLEDimensionHelper.scaleEMOCLE(500)),
            
            avatarAnchorEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarAnchorEMOCLE.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: EMOCLEDimensionHelper.scaleEMOCLE(60)),
            avatarAnchorEMOCLE.widthAnchor.constraint(equalToConstant: EMOCLEDimensionHelper.scaleEMOCLE(100)),
            avatarAnchorEMOCLE.heightAnchor.constraint(equalToConstant: EMOCLEDimensionHelper.scaleEMOCLE(100)),
            
            proceedTriggerEMOCLE.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            proceedTriggerEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            proceedTriggerEMOCLE.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            proceedTriggerEMOCLE.heightAnchor.constraint(equalToConstant: 56),
            
            skipAvenueEMOCLE.topAnchor.constraint(equalTo: proceedTriggerEMOCLE.bottomAnchor, constant: 5),
            skipAvenueEMOCLE.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            skipAvenueEMOCLE.widthAnchor.constraint(equalToConstant: 80),
            skipAvenueEMOCLE.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func configureFieldEMOCLE(_ field: UITextField, hint: String, label: String) {
        let ratioEMOCLE = EMOCLEDimensionHelper.adaptiveScaleEMOCLE
        
        let titleHeaderEMOCLE = UILabel()
        titleHeaderEMOCLE.text = label
        titleHeaderEMOCLE.font = .systemFont(ofSize: 18, weight: .bold)
        titleHeaderEMOCLE.textColor = .black
        titleHeaderEMOCLE.translatesAutoresizingMaskIntoConstraints = false
        bannerEMOCLE.addSubview(titleHeaderEMOCLE)
        
        field.placeholder = hint
        field.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1.0)
        field.layer.cornerRadius = 27 * ratioEMOCLE
        field.font = .systemFont(ofSize: 16)
        field.translatesAutoresizingMaskIntoConstraints = false
        
        let insetPaddingEMOCLE = UIView(frame: CGRect(x: 0, y: 0, width: 24 * ratioEMOCLE, height: 1))
        field.leftView = insetPaddingEMOCLE
        field.leftViewMode = .always
        bannerEMOCLE.addSubview(field)
        
        let anchorTopEMOCLE: NSLayoutYAxisAnchor
        if field == aliasInputEMOCLE {
            anchorTopEMOCLE = bannerEMOCLE.topAnchor
        } else if field == bioChronicleEMOCLE {
            anchorTopEMOCLE = aliasInputEMOCLE.bottomAnchor
        } else {
            anchorTopEMOCLE = bioChronicleEMOCLE.bottomAnchor
        }
        
        NSLayoutConstraint.activate([
            titleHeaderEMOCLE.topAnchor.constraint(equalTo: anchorTopEMOCLE, constant: 30 * ratioEMOCLE),
            titleHeaderEMOCLE.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25 * ratioEMOCLE),
            
            field.topAnchor.constraint(equalTo: titleHeaderEMOCLE.bottomAnchor, constant: 12 * ratioEMOCLE),
            field.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25 * ratioEMOCLE),
            field.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25 * ratioEMOCLE),
            field.heightAnchor.constraint(equalToConstant: 54 * ratioEMOCLE)
        ])
    }
    
    
    
    @objc private func triggerPortraitPickerEMOCLE() {
        let pickerEMOCLE = UIImagePickerController()
        pickerEMOCLE.delegate = self
        pickerEMOCLE.sourceType = .photoLibrary
        pickerEMOCLE.allowsEditing = true
        self.present(pickerEMOCLE, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage {
            selectedPortraitEMOCLE = editedImage
            avatarAnchorEMOCLE.setImage(editedImage, for: .normal)
        }
        picker.dismiss(animated: true)
    }
   
    @objc private func advanceToBiometryEMOCLE() {
     
        guard selectedPortraitEMOCLE != nil else {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Polqeyamsiej rugpqldoraudv qyioyuprp dapvnaltsafrt rfbiorvsuto!".characterBelievability())
            return
        }
        
       
        let isNicknameValid = !(aliasInputEMOCLE.text?.isEmpty ?? true)
        let isBioValid = !(bioChronicleEMOCLE.text?.isEmpty ?? true)
        let isAgeValid = !(ageMatrixEMOCLE.text?.isEmpty ?? true)
        
        guard isNicknameValid && isBioValid && isAgeValid else {
            EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Aglylp bftibellfdfsq uazrnew criegqxumirrdeqdm!".characterBelievability())
            return
        }
        
        
        let trustAndSafety = ["auIDG":"\(Int.random(in: 48998...89747888))",
                     "audioClarity":aliasInputEMOCLE.text ?? "",
                    
                     "auuserBreCla":bioChronicleEMOCLE.text ?? "",
                              "auusAblan":"0"] as [String : Any]
        
        UserDefaults.standard.set(trustAndSafety, forKey: "emotionalWeight")
        UserDefaults.standard.set(trustAndSafety, forKey: antiSpam)
        
        let nextStepEMOCLE = EMOCLEBiometryVerifyController()
        navigationController?.pushViewController(nextStepEMOCLE, animated: true)
        
    }
        
    @objc private func bypassRegistryEMOCLE() {
        let Aingking = broadcastSurePerformance(antiExploitation:antiSpam)
        
        
        foreset(Aingking: Aingking, antiExploitation: antiSpam)
        
        EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
        
    }
    
    func foreset(Aingking:Dictionary<String,String>,antiExploitation:String)  {
        UserDefaults.standard.set(Aingking, forKey: "emotionalWeight")
        UserDefaults.standard.set(Aingking, forKey: antiExploitation)
       
    }
    private func broadcastSurePerformance(antiExploitation:String)->Dictionary<String,String>  {
        let trustAndSafety = ["auIDG":antiExploitation,
                     "audioClarity":"Npoa enhanmme".characterBelievability(),
                    
                     "auuserBreCla":"Nsob qSxiwgqnlaotgulrwe".characterBelievability(),
                     "auusAblan":"0"]
        return trustAndSafety
    }
}
