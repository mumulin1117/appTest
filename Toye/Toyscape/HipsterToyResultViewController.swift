//
//  HipsterToyResultViewController.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class HipsterToyResultViewController: ToyeViewController {
    
    var toyeResultSelectedImage:UIImage?
    
    var toyeRequestResult:String?

    var toyeInfoWonders:[Int] = []
    
    var toyeCollectGemsHub:[String:String] = [:]
    
    var toyeRequestState = 0
    @IBOutlet weak var ToyeResultImage: UIImageView!
    @IBOutlet weak var toyeResultHipster: UILabel!
    
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
        
        toyeRequestState = 200
        
        if let toyeResultSelectedImage = toyeResultSelectedImage , let toyeRequestResult = toyeRequestResult {
            ToyeResultImage.image = toyeResultSelectedImage
            toyeResultHipster.text = toyeRequestResult
            
            toyeRequestState = 300
            toyeInfoWonders.append(201)
        }
    }

    @IBAction func hipsterToyResultDone(_ sender: Any) {
        toyeRequestState = 200
        toyeInfoWonders.append(20)
        self.navigationController?.popToRootViewController(animated: true)
        toyeRequestState = 400
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
