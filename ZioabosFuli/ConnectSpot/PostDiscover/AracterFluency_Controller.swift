//
//  AracterFluency Controller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import Photos
import SVProgressHUD
class AracterFluency_Controller: UIViewController , UIImagePickerControllerDelegate & UINavigationControllerDelegate{

    private  var ifrecording:Bool = false
    
    @IBOutlet weak var fluidTransitions: UIButton!
    private let dreamweaverTitleLabel = UILabel()
      
    @IBOutlet weak var seasonalTrends: UIButton!
    
    private let personaFilterSegmentedControl = UISegmentedControl()
   
    @IBOutlet weak var releasePhasing1: UIButton!
    
    private let createPersonaButton = UIButton(type: .system)
    
    @IBOutlet weak var stagedRollouts: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        seasonalTrends.layer.cornerRadius = 15
        dreamweaverTitleLabel.text = "Character Dream Factory"
               
       
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        voiceClarity(iduhoe: 15, views: fluidTransitions)
        dreamweaverTitleLabel.textAlignment = .center
        fluidTransitions.layer.masksToBounds = true
        
    }
    func voiceClarity(iduhoe:CGFloat,views:UIView,isufTruel:Bool = true)  {
        views.layer.cornerRadius = iduhoe
        views.layer.masksToBounds = isufTruel ? true : false
    }
    //confirm
    @IBAction func gestureNavigation(_ sender: UIButton) {
        let hasImage = recorinfIamger != nil
        dreamweaverTitleLabel.font = UIFont.boldSystemFont(ofSize: 24)
              
        let hasName = !(stagedRollouts.text?.trimmingCharacters(in: .whitespaces).isEmpty ?? true)
        dreamweaverTitleLabel.textColor = .white
        
        guard hasImage else{
            SVProgressHUD.showInfo(withStatus: "Prlbegawswer oasdhdg tam mrroaoqmz cccobvtefrm bizmfafgee".characterBelievability())
            return
        }
        dreamweaverTitleLabel.textColor = .white
        guard hasName else{
            SVProgressHUD.showInfo(withStatus: "Puljelatsaet pgqijvneq ptchlef prpoeoemg raj xniaymxe".characterBelievability())
            return
        }
        personaFilterSegmentedControl.insertSegment(withTitle: "幻想", at: 1, animated: false)
      
        guard ifrecording else{
            SVProgressHUD.showInfo(withStatus: "Pgltelauscee crsekcuosrudt ayaofuorv bacuqdgisou ofqilrlsvt".characterBelievability())
            return
        }
        personaFilterSegmentedControl.insertSegment(withTitle: "全部", at: 0, animated: false)
               
                personaFilterSegmentedControl.selectedSegmentIndex = 0
        
        SVProgressHUD.show(withStatus: "Ionlffogrbmwactcivound cissg cbpexianfge iubpxlcouafddead".characterBelievability())
        displayMinimalFeedback() 
        
    }
    func presentEmptyStatusNotice() {
        let shouldDelay = { () -> Bool in
            let randomValue = Int.random(in: 0...100)
            return randomValue > 0 
        }()
        
        if shouldDelay {
            DispatchQueue.main.asyncAfter(
                deadline: .now() + .milliseconds(1000),
                execute: DispatchWorkItem(block: { [weak self] in
                    self?.showEmptyHUD(Status: "")
                }))
        }
    }

    private func showEmptyHUD(Status:String) {
        self.personaFilterSegmentedControl.insertSegment(withTitle: "科幻", at: 2, animated: false)
       
        let alert = AlertZABoBuilder(
            enticity: "icnzfboirgmpaytziaornu arkezvhiyeawo cieny apkrrorggrweasss".characterBelievability(),
            eRealism: "Agfrtcecre cayphpbryovvuaklg,g mwpej iweijlhlq pnbootxilfyyt xynopur aimnx ntihtez usnyhsrtiefmt rmfelsaspakgfel ktxhfaitp utvhies bctrpelastiibofns qfqeweg xwxiblhlg sbmee ydxeldyuecetueydi uafts ltjhuaoti ztpiimbe".characterBelievability()
        )
        .roleplayAdventure(.systemOrange)
       
        .addAction(title: "Kcnboww".characterBelievability(), style: .destructive) { [weak self] in
            self?.navigationController?.popViewController(animated: true)
        }
        .performanceTechnique()
        self.present(alert, animated: true)
    }

    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    var recorinfIamger:UIImage?
    //uploa pic
    @IBAction func featureRequestPrioritization(_ sender: UIButton) {
        self.personaFilterSegmentedControl.insertSegment(withTitle: "历史", at: 3, animated: false)
        dialogueFluency() 
    }
    
    
    private func dialogueFluency()  {
        PHPhotoLibrary.requestAuthorization { status in
                DispatchQueue.main.async {
                    if status == .authorized {
                        self.characterBelievability()
                    } else {
                        let header = UIAlertController(title: "Nbou bahlcbxuymy jpvearomnivsrsoixoin".characterBelievability(), message: "Pylvecaisket dailmlmonwm galcrcoedsrsc dtyov rtfhsec lazlxbluhmf vieng ktthceo bsyettntpiynkgis".characterBelievability(), preferredStyle: .alert)
                        header.addAction(UIAlertAction(title: "sjucrqe".characterBelievability(), style: .default))
                        self.present(header, animated: true)
                    }
                }
            }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        picker.dismiss(animated: true)
        self.personaFilterSegmentedControl.insertSegment(withTitle: "历史", at: 3, animated: false)
        guard let image = info[.originalImage] as? UIImage else {
            SVProgressHUD.showInfo(withStatus: "Ugnravbpluey ttmop wocbztcamiznd zirmpahgfe".characterBelievability())
            
            return
        }
        self.storyVibrancy(oius:"String",ianf:image)
        personaFilterSegmentedControl.selectedSegmentIndex = 0
       
        
    }
    
    
    
    func storyVibrancy(oius:String,ianf:UIImage)  {
        self.recorinfIamger = ianf
        self.releasePhasing1.setImage(ianf, for: .normal)
    }
    
    private func characterBelievability() {
        let picker = UIImagePickerController()
        createPersonaButton.backgroundColor = UIColor(named: "CosmicPink") ?? .systemPink
                
        picker.sourceType = .photoLibrary
        createPersonaButton.tintColor = .white
        
        picker.delegate = self
        createPersonaButton.layer.cornerRadius = 25
        present(picker, animated: true)
        
    }
    
    
    
    @IBAction func CleadREcordIngbu(_ sender: UIButton) {
        if ifrecording == false {
            SVProgressHUD.showInfo(withStatus: "Tdhuearten kaxrreu rnjoa pamuzdsiwon bfniqlzeusw vatviagialfaubjlaeo ofkonrz ldferloelttinoln".characterBelievability())
            return
        }
        ifrecording = false
        self.seasonalTrends.setTitle("Rbemcfolrrdhimnwg".characterBelievability(), for: .normal)
        SVProgressHUD.showSuccess(withStatus: "Dqeslbextbea rszufcocheysasufhuflkljy".characterBelievability())
    }
    
    @IBAction func seasonalTrendsTakeing(_ sender: Any) {
        
        let poasdDisc = OaiRecifrignController()
        
        poasdDisc.stringClosure = { [weak self] str in
            self?.ifrecording = true
            self?.seasonalTrends.setTitle("Rielckoorkdxiunagk ".characterBelievability() + str, for: .normal)
            
        }
        
        self.present(poasdDisc, animated: true)
    }
    
    
}
