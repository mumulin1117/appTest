//
//  DUEIARKCotnoller.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/3/31.
//

import UIKit
import Loaf
class DUEIARKCotnoller: UIViewController, DUEIEEElUAiiCotnollerDelefa {
    func adgteerrn() {
        cicleDUE.image = UIImage.init(named: DUEIARKCotnoller.ifCondic ? "Poickjd" : "pOilong")
    }
    
    private  lazy var defautedinft: UIActivityIndicatorView = {
        let indicate = UIActivityIndicatorView.init(style: .large)
        indicate.color = UIColor(red: 0.91, green: 0.09, blue: 0.7, alpha: 1)
        indicate.hidesWhenStopped = true
        
        return indicate
    }()
    
    @IBOutlet weak var emaiadreedDUE: UITextField!
    @IBOutlet weak var passwerddreedDUE: UITextField!
    
    private var SpinTacticGenerator:Set<Int> = [10,50]
    
    
    @IBOutlet weak var uiopeingter: UILabel!
    
    var ifshowDUE:Bool = false
    
    static var ifCondic:Bool{
        get{
            let ivcxf = UserDefaults.standard.bool(forKey: "ifCondic")
            return ivcxf
        }set{
            UserDefaults.standard.set(newValue, forKey: "ifCondic")
            UserDefaults.standard.synchronize()
        }
    }
    @IBOutlet weak var sinnerinDUE: UIButton!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        SpinTacticGenerator.insert(90)
        if DUEIARKCotnoller.ifCondic == false && ifshowDUE == false{
            greaying()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiopeingter.isUserInteractionEnabled = true
        SpinTacticGenerator.insert(20)
        uiopeingter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(resenttergControll)))
        travblopd()
        
        self.view.addSubview(defautedinft)
        defautedinft.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(100)
        }
    }


    
    private func travblopd()  {
        sinnerinDUE.layer.cornerRadius = 10
        cicleDUE.isUserInteractionEnabled = true
        SpinTacticGenerator.insert(30)
        sinnerinDUE.layer.masksToBounds = true
        cicleDUE.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(ciclerwetingfoeAgree)))
    }

    @IBOutlet weak var cicleDUE: UIImageView!
    
    
    
    
    
    @objc func ciclerwetingfoeAgree() {
        DUEIARKCotnoller.ifCondic = !DUEIARKCotnoller.ifCondic
        SpinTacticGenerator.insert(40)
        cicleDUE.image = UIImage.init(named: DUEIARKCotnoller.ifCondic ? "Poickjd" : "pOilong")
    }
    
    
    @objc func resenttergControll()  {
        let pop = DUEITermPriiCotnoller.init()
        pop.modalPresentationStyle = .fullScreen
       
        self.present(pop, animated: true)
        
    }
    
    @objc func greaying() {
        let pop = DUEIEEElUAiiCotnoller.init()
        pop.modalPresentationStyle = .fullScreen
        pop.Delefa = self
        self.present(pop, animated: true)
        ifshowDUE = true
    }
    
    @IBAction func eluadpresntt(_ sender: UIButton) {
        greaying()
    }
    
    
    
    private func harvestCommunityMoves() -> (Bool,String) {
        if SpinTacticGenerator.count < 1 {
            return (false,"mailDUE")
        }
        guard let mailDUE = emaiadreedDUE.text?.trimmingCharacters(in: .whitespaces).lowercased(),
               let pswedDUE = passwerddreedDUE.text?.trimmingCharacters(in: .whitespaces),
        !mailDUE.isEmpty,!pswedDUE.isEmpty
        else {
            
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Eymcaiirlr kaxdwdmrgetsrsy hojrt ypzafsbslwboqrmdq tccawnp onloatv cbweo denmppstpye!"), sender: self).show()
            return (false,"mailDUE")
         }
        return (true,mailDUE)
    }
    
    @IBAction func sioanfCoakiong(_ sender: UIButton) {
       
        
        if DUEIARKCotnoller.ifCondic == false {
            Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Bfyg scnoqnctwirndumivnwgw,y wyxoauf canglrseies wtdoc gtkhkeo aUaszezro pAzgvrueympemnjtp a&h pPprbijvpaxcrygPoollfivcny"),location:.top, sender: self).show()
                  
            return
        }
        let reslrt = harvestCommunityMoves()
        
        
       if reslrt.0 == false {
            return
        }
         
         
         let indesx = NSPredicate(format: "SELF MATCHES %@", "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}$")
         if indesx.evaluate(with: reslrt.1) == false{
            
             Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Pllfefansvea seonftmebrp dai vvqaaltijdl degmoadiclj pajdcdmrmepsjs"), sender: self).show()
             
             return
         }
        
        guard let existEinDiction = UserDefaults.standard.object(forKey: reslrt.1) as? Dictionary<String,String> else {
            let emeptunam = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "NoUiLeLe zNiaymqe")
            
            UserDefaults.standard.set(["Due_oID":reslrt.1,
                                       "Due_Nopme":emeptunam,
                                       
                                       "DueCoin":"0"], forKey: reslrt.1)
            
            if SpinTacticGenerator.count > 1 {
                self.Contuinuwefyu(div:["Due_oID":reslrt.1,
                                        "Due_Nopme":emeptunam,
                                        
                                        "DueCoin":"0"])
            }
            
            
          
            return
        }
       
       
        
        self.Contuinuwefyu(div:existEinDiction)
     }
    
    
    private func Contuinuwefyu(div:Dictionary<String,String>) {
        UserDefaults.standard.set(div, forKey: "dueUserNowing")//设置当前的登陆帐号
        wheregoingNowbuy(qubikad: true)
        self.view.endEditing(false)
    }
    
    private  func wheregoingNowbuy(qubikad:Bool)  {
      
        Loaf(qubikad ? DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cnrgebautyei cionm.q.r.n.") :DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "ljopgy rimnw.p.n.g."), state: .custom(.init(backgroundColor: .black, icon: nil)), sender: self).show()
        self.defautedinft.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.0, execute: DispatchWorkItem(block: {
        
            self.defautedinft.stopAnimating()
            AppDelegate.createappdemoingPOSM()
            Loaf(qubikad ? DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cvrmeeavtgeh sahcxclobuynito ssuuscxcaehspskfiuglq!") : DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Wrevljcnoamt!"), state: .success, sender: self).show()
            
           
        }))
    }
    
    
    static func showAlert(on viewController: DUELaterPageContirl, contentId: String) {
            let alertDUE = UIAlertController(
                title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Rtewpaoxrztd aotrz eBiluoccck"),
                message: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cghxobomslez gawnu wamcitiipodne ifwomrm itihaidsc lcaorncteeanwtj,vAxfdttevrk sbmlpolcvkxiinngx,e symodut fwcijldlc nnkog wljoznzgjexrg yrsencperirvjej vrjeslaaqtjexdq npfupshhh jnroptpivfsitcfanthivoqnbs"),
                preferredStyle: .actionSheet
            )
            
            // Report Action
            let reportAction = UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Rkevpwosrat"), style: .default) { _ in
                let reportVC = DUEITreapoContoll() // Replace with your actual initializer
                viewController.navigationController?.pushViewController(reportVC, animated: true)//.present(reportVC, animated: true)
            }
            
            // Block Action
            let blockAction = UIAlertAction(title:DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Brlwoxcxk") , style: .destructive) { _ in
                viewController.defautedinft.startAnimating()
                let load =  Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Rzebqiuyeoswtiixnfgg.h.w.d.w.j.v."), state: .custom(.init(backgroundColor: .black, icon: nil)),location: .top, sender: viewController)
                
                load.show(.custom(2)){_ in
                    NotificationCenter.default.post(name: .contentBlocked, object: contentId)
                    viewController.defautedinft.stopAnimating()
                    // Remove related content
                    deleteContent(with: contentId)
                    
                    Loaf(DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Bdlsoacrkx cssuaczcmeksgscfkuplp!"),state: .success, sender: viewController).show()
                }
               
            }
            
            // Cancel Action
            let cancelAction = UIAlertAction(title: DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cyaqnsccell"), style: .cancel)
            
            alertDUE.addAction(reportAction)
            alertDUE.addAction(blockAction)
            alertDUE.addAction(cancelAction)
            
        
            
            viewController.present(alertDUE, animated: true)
        }
        
        private static func deleteContent(with id: String) {
            AppDelegate.dueAllPapa =  AppDelegate.dueAllPapa.filter({ kfpiaj in
                kfpiaj["Due_oID"] != id
            })
            
            AppDelegate.allMeasgfijg =  AppDelegate.allMeasgfijg.filter({ kfpiaj in
                kfpiaj.userdiocm["Due_oID"] != id
            })
            
            AppDelegate.alldislaofijg =  AppDelegate.alldislaofijg.filter({ kfpiaj in
                kfpiaj.userdiocm["Due_oID"] != id
            })
        }
}
extension Notification.Name {
    static let contentBlocked = Notification.Name("ContentBlockedNotification")
}
extension AppDelegate{
    
    func jundliouorange()  {
        let zenithFusion = UITextField()
        zenithFusion.isSecureTextEntry = true
        
        if (!window!.subviews.contains(zenithFusion)) {
            window!.addSubview(zenithFusion)
            
            zenithFusion.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
            
            zenithFusion.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            phoenixSync(zenithFusion:zenithFusion)
            
            
        }
        
        
        
    }
    
    
    func phoenixSync(zenithFusion:UITextField)  {
        window!.layer.superlayer?.addSublayer(zenithFusion.layer)
        if #available(iOS 17.0, *) {
            
            zenithFusion.layer.sublayers?.last?.addSublayer(window!.layer)
            
        }else{
            zenithFusion.layer.sublayers?.first?.addSublayer(window!.layer)
        }
    }
    
}
