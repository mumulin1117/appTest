//
//  RoleplayStudioController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SVProgressHUD
import Photos

class RoleplayStudioController: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{
    
    private  var ifrecording:Bool = false
    
    @IBOutlet weak var fluidTransitions: UIButton!
    
    @IBOutlet weak var seasonalTrends: UIButton!
    
    private let dreamweaverTitleLabel = UILabel()
    
    @IBOutlet weak var stagedRollouts: UITextField!
    private let personaFilterSegmentedControl = UISegmentedControl()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seasonalTrends.layer.cornerRadius = 15
        roleplayAuthenticity()
        fluidTransitions.layer.masksToBounds = true
        
    }
    private let createPersonaButton = UIButton(type: .system)
    func roleplayAuthenticity()  {
        seasonalTrends.layer.masksToBounds = true
        fluidTransitions.layer.cornerRadius = 15
    }
    
  
    @IBAction func gestureNavigation(_ sender: UIButton) {
        dreamweaverTitleLabel.text = "Character Dream Factory"
              
               
        let hasName = !(stagedRollouts.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
       
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        guard ifrecording else{
            SVProgressHUD.showInfo(withStatus: "Pwlyemarspew oasdhdr zykouuhrw yvcijdvejo".characterBelievability())
            return
        }
        dreamweaverTitleLabel.textColor = .white
       
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Pjlmeransfef wgkimvyei gtehkej ovziidoezoq fcloanctpexnxt".characterBelievability())
            return
        }
        
       
      
        
        SVProgressHUD.show(withStatus: "Vliydbehod nibsy obmenivnggw yuhpelnolaydleyd".characterBelievability())
        dreamweaverTitleLabel.textAlignment = .center
        
        let shouldDelay = { () -> Bool in
            let randomValue = Int.random(in: 0...100)
            return randomValue > 0 
        }()
        
        if shouldDelay {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + .milliseconds(1000),
                execute: DispatchWorkItem(block: { [weak self] in
                    self?.showEmptyHUD()
                }))
        }
        
       
        
    }


    private func showEmptyHUD() {
        self.voiceFlexibility(keuhL:"iynifvotrimxadtiigoana drnemvriyejwv viyny wpjrsovgwrleysgs")
        
    }
    func voiceFlexibility(keuhL:String)  {
        let alert = AlertZABoBuilder(
            enticity: keuhL.characterBelievability(),
            eRealism: "Ayfetgepru caepyperiokvtally,o rwkel cwtiplslq lnwobtnijfryc syfonub hilnh ltdhkec xsoyqsdtcenmh pmkeysssxangpes btohiattc rtqhmee dcurmexadteidonni rfaeler kwaizlwlq bbxep udjetduuncttsetdn iaoth vtohvartu zteijmhe".characterBelievability()
        )
        .roleplayAdventure(.systemOrange)
       
        .addAction(title: "Kznpofw".characterBelievability(), style: .destructive) { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        .performanceTechnique()
        self.present(alert, animated: true)
    }
    

    var recorinfIamger:UIImage?
   
    @IBAction func featureRequestPrioritization(_ sender: UIButton) {
        PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    if status == .authorized {
                        self.characterBelievability()
                    } else {
                        self.view.backgroundColor = self.view.backgroundColor
                        let header = UIAlertController(title: "Noov damlzbwudmq speesrkmnivssskidomn".characterBelievability(), message: "Pulvezakslew xawlxlqoyww babcycqeusfsq rtxor ltahheb cacljbtuvmh kibnq ytphwej sseeetetfitnfgls".characterBelievability(), preferredStyle: .alert)
                        header.addAction(UIAlertAction(title: "snucrxe".characterBelievability(), style: .default))
                        self.present(header, animated: true)
                    }
                }
            }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
       
        picker.dismiss(animated: true)
        dreamweaverTitleLabel.text = "Character Dream Factory"
             
        guard let mediaType = info[.mediaType] as? String,
                      mediaType == UTType.movie.identifier,
              let videoURL = info[.mediaURL] as? URL else {
            SVProgressHUD.showInfo(withStatus: "Ufnwaibulhen wtsod efdidnndx evpizdfeiod qrretswoduzrecwecs".characterBelievability())
            self.view.backgroundColor = self.view.backgroundColor
            return
            
        }
        
        ifrecording = true
        
    }
 
    private func characterBelievability() {
        let voiceTimbre = UIImagePickerController()
        dreamweaverTitleLabel.textColor = .white
        
        voiceTimbre.sourceType = .photoLibrary
        self.view.backgroundColor = self.view.backgroundColor
        voiceTimbre.videoQuality = .typeHigh
        dreamweaverTitleLabel.textAlignment = .center
        voiceTimbre.allowsEditing = false
        voiceTimbre.delegate = self
        voiceTimbre.mediaTypes = [UTType.movie.identifier]
        self.present(voiceTimbre, animated: true)
        
    }
    
    
}
