//
//  HipsterToyuploadViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit
import TZImagePickerController
import Alamofire
import SVProgressHUD

class HipsterToyuploadViewController: ToyeViewController,TZImagePickerControllerDelegate {

    @IBOutlet weak var hipsterUploadButton: UIButton!
    
    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    
    @IBOutlet weak var openToyeLibraryButton: UIButton!
    @IBOutlet weak var toyeImageResult: UIImageView!
    
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
        
        hipsterUploadButton.isEnabled = false
    }
    
    override func toyeBackItemAction() {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func playPredictorAction(_ sender: Any) {
        
        SVProgressHUD.show()
        let toyeRequestText =
        """
        Please generate a general certification result for collectible toys that is applicable to most scenarios. The language should be simple and clear, slightly longer, and avoid mentioning the manufacturer, price or any such details. There is no need to verify whether it is genuine. Just give some general words to describe the trendy toys. The answer is slightly longer,for example:  The collectible toy is in good condition overall. The surface finish is smooth, with a noticeable shine, and the craftsmanship is solid. The proportions and details are well-executed, making it visually appealing. The joints are stable, and the movement is fluid, indicating that the toy has been crafted with care and attention to detail.
        
        
        Upon closer inspection, there are no visible defects, scratches, or imperfections that would detract from its display quality. The paint application is even, and the colors are vibrant, adding to the overall aesthetic. The material feels durable, and the design reflects a thoughtful approach, making it suitable for both casual enjoyment and display purposes.
        
        
        It’s recommended to store the toy in a cool, dry place away from direct sunlight to maintain its condition. Regular dusting can help preserve its appearance over time. Overall, this is a well-made collectible that would be a great addition to any collection, offering both visual appeal and lasting value.
        """
        AF.request("hktltbpw:b/n/cwjwqws.csxixlwvvekrlljeqaufc1d2y1r.txzyyzq/stwaulrkgtxwqot/nadsykfQwufewsjtqieodnvvz2".ty,
                   method: .post,
                   parameters:["qwumebsqtiiioxn".ty:toyeRequestText,"qsupehsuttimodnhTyyjpue".ty:1,"euqwNoo".ty:"5a5e5v5".ty],
                   encoding: JSONEncoding.default).validate().responseData { response in
            SVProgressHUD.dismiss()
            switch response.result {
            case .success(let responseData):
                if let toyeRequestResult = try? JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) {
                    if let toyeResultDictionary = toyeRequestResult as? [String:Any],let toyeResultData = toyeResultDictionary["duaytea".ty] as? String{
                        
                        if self.toyeImageResult.image!.jpegData(compressionQuality: 1.0) != nil {
                            let hipsterToyResult = HipsterToyResultModel(resultToyeImageData: self.toyeImageResult.image!,
                                                                         resultToyeText: toyeResultData,
                                                                         generateResultAt: Date().timeIntervalSince1970)
                            ToyeInfo.info.tpyeHipsterDatas.append(hipsterToyResult)
                        }
                        
                        let hipsterToyResultController = HipsterToyResultViewController(nibName: "HipsterToyResultViewController", bundle: nil)
                        hipsterToyResultController.toyeRequestResult = toyeResultData
                        hipsterToyResultController.toyeResultSelectedImage = self.toyeImageResult.image
                        self.navigationController?.pushViewController(hipsterToyResultController, animated: true)
                    }
                }
            break
            case .failure(_):
                break
            }
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
                        weakSelf.openToyeLibraryButton.isHidden = true
                        weakSelf.hipsterUploadButton.isEnabled = true
                    }
                }
            }
            tzImageTyPicker?.modalPresentationStyle = .fullScreen
            self.present(tzImageTyPicker!, animated: true)
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
