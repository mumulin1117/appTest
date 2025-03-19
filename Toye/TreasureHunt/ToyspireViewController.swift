//
//  ToyspireViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/11.
//

import UIKit
import RSKPlaceholderTextView
import TZImagePickerController
import SVProgressHUD


class ToyspireViewController: ToyeViewController,TZImagePickerControllerDelegate,UITextViewDelegate {

    @IBOutlet weak var toyspireDescTextInput: RSKPlaceholderTextView!{
        didSet{
            toyspireDescTextInput.backgroundColor = UIColor.white
        }
    }
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    @IBOutlet weak var toyMaskImage: UIImageView!
    @IBOutlet weak var toyeImageResult: UIImageView!
    @IBOutlet weak var openToyeLibraryButton: UIButton!
    @IBOutlet weak var toyeReleaseButton: UIButton!
    
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
            toyspireDescTextInput.delegate = self
        }
        
        if toyeCollectGemsHub.keys.contains("toyeInfoWonders") {
            toyspireDescTextInput.placeholder = NSString(utf8String: "Suaeyg iseommaeltzheixnwgr.x.m.".ty)
            toyspireDescTextInput.placeholderColor = UIColor.init(hex: "#BFBFBF")
            toyspireDescTextInput.contentInset = UIEdgeInsets(top: 11, left: 20, bottom: 11, right: 20)
        }
        
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
    
    func textViewDidChange(_ textView: UITextView) {
        createValueChanged()
    }
    
    func createValueChanged(){
        self.toyeReleaseButton.isEnabled = false
        if self.toyeImageResult.image != nil && toyspireDescTextInput.text.count > 0 {
            toyeReleaseButton.isEnabled = true
        }
    }

    @IBAction func toyeReleaseAction(_ sender: Any) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.57) {
            SVProgressHUD.showInfo(withStatus: "Pgujbalviesjhfetdi ssruqchcnewsvsxfdurlgluyj,b sprlrejayssep hwcahista bfwohrs nrhevvnibemw".ty)
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
