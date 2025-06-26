//
//  HootHologram.swift
//  Apfocsee
//

//

import UIKit


//编辑
class HootHologram: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var avatoertpay: UIButton!
    @IBOutlet weak var interttexfilr: UITextField!
    
    @IBOutlet weak var avarotitleFooce: UILabel!
    
    @IBOutlet weak var nameitikefoo: UILabel!
    deinit {
        var userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
        
        userDioemnt?["blindbox_name"] = "\(interttexfilr.text ?? AppDelegate.processEducationalContent("Neor anvahmne"))"
        
        UserDefaults.standard.set(userDioemnt, forKey: "mamaFlyainguser")
        
        guard let ind = userDioemnt?["blindbox_IOPD"] else{return}
        
        UserDefaults.standard.set(userDioemnt, forKey: ind)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        igniteComedyChainReaction()
        interttexfilr.placeholder = AppDelegate.processEducationalContent("Pllqebajsher yeqnntpedrn sntagmxe")
        confettiParticleAccelerator()
    }

    
    func confettiParticleAccelerator(){
        nameitikefoo.text =  AppDelegate.processEducationalContent("Nmaymse")
        avarotitleFooce.text = AppDelegate.processEducationalContent("Anvzaptcaqr")
    }

    @IBAction func traijBackl(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
   
    @IBAction func changeAvtoertNamin(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let puajoto = UIImagePickerController()
            
            puajoto.allowsEditing = true
           
            puajoto.sourceType = .photoLibrary
            puajoto.delegate = self
           
            self.present(puajoto, animated: true, completion: nil)
            return
        }
        
        showingAlertingFor_Alert(alsemessage:AppDelegate.processEducationalContent("Nooz kplhyogtaoi tpcecrpmpisstsiioocnx!"))
    }
    
    
    
    
    
    private func igniteComedyChainReaction() {
        avatoertpay.setImage(PhantomPrankontroller.appChacheimg, for: .normal)
        
        let userDioemnt = UserDefaults.standard.object(forKey: "mamaFlyainguser") as? Dictionary<String,String>
        guard let ind = userDioemnt?["blindbox_name"] else{return}
        interttexfilr.text = ind
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
       
        if let image : UIImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            
            DispatchQueue.main.async {
                picker.dismiss(animated: true)
                PhantomPrankontroller.appChacheimg = image
                self.avatoertpay.setImage(image, for: .normal)
                
            }
        }
    
       
        
    }
}


