//
//  TrendyToyPartyViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/8.
//

import UIKit
import RSKPlaceholderTextView
import TZImagePickerController
import SVProgressHUD


class TrendyToyPartyViewController: ToyeViewController,TZImagePickerControllerDelegate ,UITextViewDelegate{
    
    @IBOutlet weak var toyPartyTextView: RSKPlaceholderTextView!{
        didSet{
            toyPartyTextView.backgroundColor = UIColor.white
        }
    }
    
    @IBOutlet weak var toyMaskImage: UIImageView!
    var selectToyRoomTypeButton:UIButton?
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    @IBOutlet weak var openToyeLibraryButton: UIButton!
    @IBOutlet weak var toyeImageResult: UIImageView!
    @IBOutlet weak var createPartyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        }
        
        let partyBackgroundTyLayer = CAGradientLayer()
        partyBackgroundTyLayer.colors = [
            UIColor.init(hex: "#6720EA").cgColor,
            UIColor.init(hex: "#F5F0FF").cgColor
        ]
        partyBackgroundTyLayer.locations = [0, 1]
        if partyBackgroundTyLayer.locations?.count ?? 0 > 0 {
            partyBackgroundTyLayer.frame = CGRectMake(0, 0, UIScreen.main.bounds.size.width, UIScreen.main.bounds.size.height)
            partyBackgroundTyLayer.startPoint = CGPoint(x: 0.5, y: 0)
            partyBackgroundTyLayer.endPoint = CGPoint(x: 0.5, y: 0.66)
            view.layer.insertSublayer(partyBackgroundTyLayer, at: 0)
        }
        
        toyPartyTextView.contentInset = UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20)
        toyPartyTextView.delegate = self
    }
    
    func textViewDidChange(_ textView: UITextView) {
        createValueChanged()
    }
    
    @IBAction func selectToyRoomType(_ sender: UIButton) {
        
        guard sender != self.selectToyRoomTypeButton else{
            return
        }
        
        sender.isSelected = true
        sender.backgroundColor = UIColor.init(hex: "#E854F8")
        
        toyeInfoWonders.append(20)
        
        if toyeCollectGemsHub.count > 0 {
            toyeCollectGemsHub["toyeHub"] = "toyeHub"
        }
        
        selectToyRoomTypeButton?.isSelected = false
        selectToyRoomTypeButton?.backgroundColor = UIColor.white
        if toyeInfoWonders.count > 0 {
            toyeCollectGemsHub["dogeToye"] = "toyeCollectGemsHub"
        }
        selectToyRoomTypeButton = sender
        
        createValueChanged()
        toyeRequestState = 201
    }
    
    
    @IBAction func openToyeLibrary(_ sender: Any) {
        let tzImageTyPicker = TZImagePickerController(maxImagesCount: 1, delegate: self)
        tzImageTyPicker?.allowTakePicture = false
        tzImageTyPicker?.allowTakeVideo = false
        tzImageTyPicker?.allowPickingGif = false
        if tzImageTyPicker?.allowTakePicture == false {
            tzImageTyPicker?.didFinishPickingPhotosHandle = { [weak self] photots,assets,isSelectOriginalPhoto in
                if let weakSelf = self {
                    if photots!.count > 0 {
                        weakSelf.toyeImageResult.image = photots?.first
                        weakSelf.toyMaskImage.isHidden = false
                        weakSelf.openToyeLibraryButton.isHidden = true
                        weakSelf.createValueChanged()
                    }
                }
            }
            tzImageTyPicker?.modalPresentationStyle = .fullScreen
            self.present(tzImageTyPicker!, animated: true)
        }
        
    }
    
    @IBAction func createPartyAction(_ sender: Any) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            SVProgressHUD.showInfo(withStatus: "Slunclclersisnfwuslslvyg ycarpejaxtvesdw,i kpvlueraqslea xwsavietf lfyokrm yrjecvmiaezw".ty)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func createValueChanged(){
        self.createPartyButton.isEnabled = false
        if self.toyeImageResult.image != nil && selectToyRoomTypeButton != nil && toyPartyTextView.text.count > 0 {
            createPartyButton.isEnabled = true
        }
    }
   
}
