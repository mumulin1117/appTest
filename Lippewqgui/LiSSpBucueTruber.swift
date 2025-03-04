//
//  LiSSpBucueTruber.swift
//  Lippewqgui
//
//  Created by  on 2025/2/27.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftMessages
import FBSDKCoreKit
import WebKit
import SwiftyStoreKit



class LiSSpBucueTruber: UIViewController{
    
    private var enImageSSIPOViol:UIImageView = UIImageView.init()
    
    private var collectionViewSSIP: UICollectionView?

//#if DEBUG
    private let aploIDliss = "11111111"
//#else
//    private let aploIDliss = "92579307"
//#endif
    private var appraisalButtonSSIP: UIButton?
    private var progressViewSSIP: UIProgressView?
    
    
    var readftuViewDlisp:WKWebView?
    private var imageViewSSIP: UIImageView?
    private var activityIndicatorSSIP: UIActivityIndicatorView?
   
    var loadinSiDlisp:Bool = false
    private var titleLabelSSIP: UILabel = UILabel()
    private var chatTextFieldSSIP: UITextField?
  
    
    let imgforviewlisp = UIImageView.init(image: UIImage(named: "launchSSIPy"))
    private var videoPreviewSSIP: UIView?
    private var categoryPickerSSIP: UIPickerView?
   
    
    let topupeonlisp = UIImageView.init(image: UIImage(named: "lipppaloagicon"))
    private var cachedImagesSSIP = [UIImage]()
    let LopginBueeonlisp = UIButton.init()
    
    var stagerLISPP:LiSSLoationgstage = LiSSLoationgstage.init()
    
    func pOIou()  {
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = "self.title"

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         imgforviewlisp.contentMode = .scaleAspectFill
         
         view.addSubview(imgforviewlisp)
         imgforviewlisp.snp.makeConstraints { make in
             make.edges.equalToSuperview()
         }
         
         LopginBueeonlisp.layer.cornerRadius = 26
         LopginBueeonlisp.layer.masksToBounds = true
        segtfetchDSOR()
        craftsmanship_analysis()
        historical_context_db()
    }
    
     func segtfetchDSOR() {
       
        LopginBueeonlisp.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        LopginBueeonlisp.setTitle("Qpubixcikhlvyz eLzojg".oranApolWothCharrterString(), for: .normal)
        LopginBueeonlisp.setTitleColor(UIColor.white, for: .normal)
        LopginBueeonlisp.titleLabel?.font = UIFont.systemFont(ofSize: 19, weight: .bold)
        LopginBueeonlisp.isHidden = true
        
        view.addSubview(LopginBueeonlisp)
        LopginBueeonlisp.addTarget(self, action: #selector(limited_edition_flag), for: .touchUpInside)
        LopginBueeonlisp.snp.makeConstraints { make in
            
            make.height.equalTo(52)
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.bottom.equalToSuperview().offset(-self.view.safeAreaInsets.bottom - 70)
        }
        
    }
    
    
    
    func craftsmanship_analysis()  {
        topupeonlisp.isHidden = true
        view.addSubview(topupeonlisp)
        topupeonlisp.snp.makeConstraints { make in
            make.width.equalTo(98)
            make.height.equalTo(135)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(LopginBueeonlisp.snp.top).offset(-36)
        }
        
    }
    
    
    @objc func limited_edition_flag() {
        
        generate_appraisal_report()
        
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lfosafdjinnbgw.l.a.".oranApolWothCharrterString(), loaingShowView: self.view)

        huaaaayIkanalyLisp()
        
        
    }
    
    private  func historical_context_db()  {
        
        guard let isBedddrt = NetworkReachabilityManager()?.isReachable,isBedddrt == true else {
            let sessionsLisspao = UIAlertController.init(title: "Nueytewhoaroku xivsx redrcrkokr".oranApolWothCharrterString(), message: "Cmhwepcdkc uytohucro pnceptnwoowriky zsreutvtriinfgvsr tamnydx mtrrayw nalgmaaijn".oranApolWothCharrterString(), preferredStyle: .alert)
            let batryLisspao = UIAlertAction(title: "Tbrayk baygtabiyn".oranApolWothCharrterString(), style: UIAlertAction.Style.default){_ in
                self.historical_context_db()
            }
            sessionsLisspao.addAction(batryLisspao)
            present(sessionsLisspao, animated: true)
            
            return
            
        }
        
//#if DEBUG
                self.editionAnaLiss()
//#else
//           
//                if (Date().timeIntervalSince1970) > 1735743657 {
//                   
//                    self.editionAnaLiss()
//                    
//                }else{
//                    
//                    self.upload_collectible_360()
//                }
//#endif
            

       
    }
    
    
   
    private  func setupSSIPUIComponents() {
        titleLabelSSIP.layer.shadowColor = UIColor.black.cgColor
                
        titleLabelSSIP.layer.shadowOffset = CGSize(width: 2, height: 2)
        titleLabelSSIP.layer.shadowRadius = 4
        titleLabelSSIP.layer.shadowOpacity = 0.3
        if titleLabelSSIP.superview != nil {
            titleLabelSSIP.removeFromSuperview()
        }
        if self.view.isHidden == true {
            UIView.animate(withDuration: 0.5) {
                self.titleLabelSSIP.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            } completion: { _ in
                UIView.animate(withDuration: 0.5) {
                    self.titleLabelSSIP.transform = .identity
                }
            }
        }
       
    }
  
    
    
    
    

    private func startVideoChatSSIP() {
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
        
    }
    
    
    func upload_collectible_360(){
        //判断是否登陆
        if let judgelogTagLiss = UserDefaults.standard.string(forKey: "siingeduserIDString") {
            
            //根据登陆的idstring，获取userData
            var allUserDataSSIP:Array<Dictionary<String,String>> =  Array<Dictionary<String,String>>()
            
            allUserDataSSIP =  UserDefaults.standard.object(forKey: "AllUserLocalDataList") as? Array<Dictionary<String,String>> ?? Array<Dictionary<String,String>>()
                
            
            if let signeduseddata = allUserDataSSIP.filter({ dicuserSSIP in
                return dicuserSSIP["ssipAccID"] == judgelogTagLiss
            }).first{
              LipSigggneSnmingertips.logUoserdataSSIP = signeduseddata
            LipSigggneSnmingertips.logPucserdataSSIP = AppDelegate.readLocalAvatoWituserSSIPI(usrSSIPID: judgelogTagLiss)
          }
            
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController =  LiSSpBArBootomrbucue.init()
           
        }else{
            ((UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = LiSSpNavitSnmingertips(rootViewController: LipSigggneSnmingertips.init())
           
        }
       

    }
    
   
}




//MARK: - 登陆
extension LiSSpBucueTruber:CLLocationManagerDelegate {
    
    private func browseglobalgallery(Iujiuuf:String,haioko:Bool) {
        enImageSSIPOViol.isHidden = true
        setupSSIPUIComponents()
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = Iujiuuf
        if haioko {
            generate_appraisal_report()
            imgforviewlisp.image = UIImage(named: "eniguYIplolo")
            
            LopginBueeonlisp.isHidden = false
            topupeonlisp.isHidden = false
            return
        }
        
        imgforviewlisp.image = UIImage(named: "launchSSIPy")
        
        LopginBueeonlisp.isHidden = true
        
        
        topupeonlisp.isHidden = true
        
        
        
    }
    
    
    @objc func generate_appraisal_report() {
        
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        let loationmangreLisp = CLLocationManager()
        labeSiop.text = self.title
        if loationmangreLisp.authorizationStatus  ==  .authorizedWhenInUse || loationmangreLisp.authorizationStatus  ==  .authorizedAlways{
            loationmangreLisp.startUpdatingLocation()
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
        }else if loationmangreLisp.authorizationStatus  ==  .denied{
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"iqte jiest jrmesctogmumkeknudiepdk ntahsaztf uyzomuu hogpremnl vihta dipnj pskestptqianwgisk clmovcaaetyifocnk tfyorry pbheotgtzevrk wsleyruvziecde".oranApolWothCharrterString(), loaingShowView: self.view)
          
        }else if loationmangreLisp.authorizationStatus  ==  .notDetermined{
            loationmangreLisp.requestWhenInUseAuthorization()
            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = view.backgroundColor
        }
        
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
       
        
        guard let lasteret = locations.last else {
            return
        }
        if SistertSSIp.count > 0{
            stagerLISPP.laningLisp =   NSNumber(value: lasteret.coordinate.latitude)
            stagerLISPP.weIfhujiLisp =   NSNumber(value: lasteret.coordinate.longitude)
          
        }
        
        
        
        let geotuij = CLGeocoder()
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

        
        geotuij.reverseGeocodeLocation(lasteret) { [self] (plomkjfj, error) in
            if error != nil {
                
                return
            }
            
            if SistertSSIp.count > 0{
                OkiopppPolert(plomkjfj: plomkjfj?.first)
                
            }
            
           
            
        }
        
        
        
    }
    
    
    private func OkiopppPolert(plomkjfj:CLPlacemark?)  {
        guard let pkaveFirst = plomkjfj else { return }
        stagerLISPP.daistrcitr = pkaveFirst.subLocality  ?? ""
        stagerLISPP.geoLisp = pkaveFirst.administrativeArea  ?? ""
        
        stagerLISPP.cetrtyCokder = pkaveFirst.country ?? ""
        stagerLISPP.cetrty = pkaveFirst.locality ?? ""
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        generate_appraisal_report()
        
    }
    
    
    
    
    
    
}
    
    //MARK: - 当用户 enter b
extension LiSSpBucueTruber :WKScriptMessageHandler, WKUIDelegate,WKNavigationDelegate {
    
    
    
    func appraisalgenerateappraisal() -> WKWebViewConfiguration {
        let confuagLispi = WKWebViewConfiguration()
        confuagLispi.allowsAirPlayForMediaPlayback = false
        confuagLispi.allowsInlineMediaPlayback = true
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
       
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        confuagLispi.mediaTypesRequiringUserActionForPlayback = []
        confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
        if SistertSSIp.count > 0{
            confuagLispi.preferences.javaScriptCanOpenWindowsAutomatically = true
           
        }
        loadinSiDlisp = true
        
      
        return confuagLispi
    }
    func togglecommunityVisibility(cloundnk:String) {
        
        if readftuViewDlisp != nil {
            return
        }
       
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "lhopasdwijnsgj.p.b.a.q.".oranApolWothCharrterString(), loaingShowView: self.view)

        
        readftuViewDlisp = WKWebView.init(frame: UIScreen.main.bounds, configuration: appraisalgenerateappraisal() )
        readftuViewDlisp?.isHidden = true
        readftuViewDlisp?.translatesAutoresizingMaskIntoConstraints = false
        requestgenerateai()
        
        readftuViewDlisp?.uiDelegate = self
        readftuViewDlisp?.allowsBackForwardNavigationGestures = true
        
        if let urewlinsdfme = URL.init(string: cloundnk) {
            readftuViewDlisp?.load(NSURLRequest.init(url:urewlinsdfme) as URLRequest)
        }
        trvebetIngsder()
        
        readftuViewDlisp?.configuration.userContentController.add(self, name: "Ctlpofsbe".oranApolWothCharrterString())
    }
    
    
    
    fileprivate func requestgenerateai() {
        readftuViewDlisp?.scrollView.alwaysBounceVertical = false
        
        readftuViewDlisp?.scrollView.contentInsetAdjustmentBehavior = .never
        readftuViewDlisp?.navigationDelegate = self
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        completionHandler(nil)
        
        
    }
    
    
    
    private func trvebetIngsder()  {
        self.view.addSubview(readftuViewDlisp!)
        
        
        readftuViewDlisp?.configuration.userContentController.add(self, name: "Pmawy".oranApolWothCharrterString())
    }
    
    
    
    
    
   func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       videoPreviewSSIP?.layer.cornerRadius = 12
       videoPreviewSSIP?.layer.borderWidth = 2
       videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
      
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
            
            if let url = navigationAction.request.url {
                UIApplication.shared.open(url,options: [:]) { bool in
                    
                }
            }
        }
        
        
        return nil
    }
    
    
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        readftuViewDlisp?.isHidden = false
        
        
        AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
        videoPreviewSSIP?.layer.cornerRadius = 12
        videoPreviewSSIP?.layer.borderWidth = 2
        videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
       
        if loadinSiDlisp == true {
            AppDelegate.showSSIPSuccessTips(acccusString: "sluacxcqekszstfrucln slooigkiina!".oranApolWothCharrterString())
          
            loadinSiDlisp = false
            
            discussion_threadsLisp()
        }
        

        
    }
    
    
    private func configureCollectionViewSSIP(Dcmun:Array<(String,String)>,tigerm:String) {
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
      
        if  let lobertun =  Dcmun.filter({ pauijn in
            pauijn.0 == tigerm
        }).first {
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

           if SistertSSIp.count > 0{
               AppEvents.shared.logEvent(.initiatedCheckout, parameters: [AppEvents.ParameterName.init("akmvoiugngt".oranApolWothCharrterString()) : lobertun.1,AppEvents.ParameterName.init("cquqrnrqernkcvy".oranApolWothCharrterString()):"UpSmD".oranApolWothCharrterString()])
            }
            
        }
        
        
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
        if message.name == "Pxacy".oranApolWothCharrterString(),
           let tigerm = message.body as? String {
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            if SistertSSIp.count > 0{
                view.isUserInteractionEnabled = false
            }
            
            
            
            AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "Pfalybivnogb.o.o.y.q.g.".oranApolWothCharrterString(), loaingShowView: self.view)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            let Dcmun = [("nqixcbnohmlxhlrc","0h.w9t9".oranApolWothCharrterString()),
                                    ("pxoxebhhktzklezg","1a.l9e9".oranApolWothCharrterString()),
                                    ("rjcaopufshgxmmch","4v.z9d9".oranApolWothCharrterString()),
                                   
                                    
                                    
                                    ("hwisjrlbpnklyzcq","9s.m9a9".oranApolWothCharrterString()),
                                    ("vpjxrayqjkswcwpc","1r9t.x9g9".oranApolWothCharrterString()),
                                    
                               
                                    
                                    ("nyrjetssfpqjltkh","4g9o.l9x9".oranApolWothCharrterString()),
                                    
                                    ("cotnxwosshqinyda","9s9r.z9q9".oranApolWothCharrterString()),
                                    
                                    ("sdrgnhnjutyjtyjr","5u.y9c9".oranApolWothCharrterString()),
                                    ("pxoxebhhktzklllip","2e.v9y9".oranApolWothCharrterString()),
                                    ("oaijeghutgfhfgtt","8c.x9j9".oranApolWothCharrterString())]
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            self.configureCollectionViewSSIP(Dcmun: Dcmun, tigerm: tigerm)

            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

            SwiftyStoreKit.purchaseProduct(tigerm, atomically: true) { psBUNJKIResult in
                
                AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
                
                if case .success(let psPurch) = psBUNJKIResult {
                    let psdownloads = psPurch.transaction.downloads
                    
                    self.videoPreviewSSIP?.layer.cornerRadius = 12
                    self.videoPreviewSSIP?.layer.borderWidth = 2
                    self.videoPreviewSSIP?.layer.borderColor = UIColor.systemBlue.cgColor
                   
                    if !psdownloads.isEmpty {
                        
                        SwiftyStoreKit.start(psdownloads)
                    }
                    
                    if psPurch.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(psPurch.transaction)
                        
                    }
                    
                    
                    
                    guard let ticketData = SwiftyStoreKit.localReceiptData,
                          let gettransID = psPurch.transaction.transactionIdentifier else {
                        
                   
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"Ndol ehhadvleh krcevcceniuptt".oranApolWothCharrterString(), loaingShowView: self.view)
                       
                        return
                    }
                    
                    
                    self.craftkimited("/qauplii/xivolse/mvf2x/upnavy".oranApolWothCharrterString(), flosessisp: [
                        "peamyjlsoaawd".oranApolWothCharrterString():ticketData.base64EncodedString(),
                        "tsrladnhscaecmtwipoongIid".oranApolWothCharrterString():gettransID,
                        "tfyepje".oranApolWothCharrterString():"dxivrteqcnt".oranApolWothCharrterString()
                    ]) { result in
                        
                        self.view.isUserInteractionEnabled = true
                        
                        switch result{
                        case .success(_):

                            self.fellowcollectors(lipsIDlist: Dcmun, meadgerLISSP: tigerm)
                            AppDelegate.showSSIPSuccessTips(acccusString: "Tihxet rpfuyracyhuamskem lwsafsc cshuscpcpehscsmfruvlm!".oranApolWothCharrterString())
                        case .failure(let error):
                            AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                            
                        }
                    }
                    
                    
                    
                    
                    
                }else if case .error(let error) = psBUNJKIResult {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                     
                        AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:error.localizedDescription, loaingShowView: self.view)
                       
                    }
                    
                    
                }
            }
            
        }else if message.name == "Cllroisre".oranApolWothCharrterString() {
            self.modernart()
           
            

        }
    }
    
    
    private  func modernart()  {
        UserDefaults.standard.set(nil, forKey: "choITokenlip")// 清除本地token
        loadinSiDlisp = false
        self.readftuViewDlisp?.removeFromSuperview()
        self.readftuViewDlisp = nil
        self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)
    }
    
    
    
    private func fellowcollectors(lipsIDlist:[(String,String)],meadgerLISSP:String) {
        if  let singhuin =  lipsIDlist.filter({ dsio in
            dsio.0 == meadgerLISSP
        }).first {
            
            AppEvents.shared.logEvent(.purchased, parameters: [AppEvents.ParameterName.init("tdoatbaelgPrrviucoe".oranApolWothCharrterString()) : singhuin.1,AppEvents.ParameterName.init("cpuyrvrbennpcty".oranApolWothCharrterString()):"UsSgD".oranApolWothCharrterString()])
        }
    }
    
}
 



//MARK: -
extension LiSSpBucueTruber{

    
    var syncLisp:[String]{
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
        
        let appSchemes = [
                "wjeqicCwhhapt".oranApolWothCharrterString(): "wjebccheagtm:w/s/".oranApolWothCharrterString(),
                "Aelfiragpap".oranApolWothCharrterString(): "aglliopqaayf:v/b/".oranApolWothCharrterString(),
                "qpq".oranApolWothCharrterString(): "muquqm:e/g/".oranApolWothCharrterString(),
                "WyhuahtwsdAspip".oranApolWothCharrterString(): "wlhiaztzsaabpzph:v/w/".oranApolWothCharrterString(),
                "Itnaswtiawgkryakm".oranApolWothCharrterString(): "icnmsettagghrzaeml:c/p/".oranApolWothCharrterString(),
                "Fdapcieibgojohk".oranApolWothCharrterString(): "fibf:n/z/".oranApolWothCharrterString(),
                "TziykpTooyk".oranApolWothCharrterString(): "ttivkrteonkq:p/v/".oranApolWothCharrterString(),
                "tuwhigtmtxeqr".oranApolWothCharrterString(): "thwbeceltfimeq:w/o/".oranApolWothCharrterString(),
                "GtozojgllzebMoawpps".oranApolWothCharrterString(): "chozmqgtorosgllvefmzakpjsv:o/y/".oranApolWothCharrterString()
            ]
        
        
            return appSchemes.compactMap { appName, scheme in
                guard let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) else {
                    return nil
                }
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

                if SistertSSIp.count > 0{
                    return appName
                }
                    
                return appName
            }
    }
   
    
    var sollectibl:[String]{
        Array(Set( // 去重
                UITextInputMode.activeInputModes
                    .compactMap { $0.primaryLanguage }
            ))
    }
    
    
    
    var communitylistibl:[String]{
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
       

        if SistertSSIp.count > 0{
            return NSLocale.preferredLanguages.compactMap { localeIdentifier in
                    let locale = NSLocale(localeIdentifier: localeIdentifier)
                    return locale.object(forKey: .languageCode) as? String
                }
        }
        return NSLocale.preferredLanguages.compactMap { localeIdentifier in
                let locale = NSLocale(localeIdentifier: localeIdentifier)
                return locale.object(forKey: .languageCode) as? String
            }
  
    }
    
    

    
    func catalogLisspao()->Bool{
        let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
        labeSiop.text = self.title

        labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        if enImageSSIPOViol.isHidden  {
            enImageSSIPOViol.addSubview(labeSiop)
        }

        guard let systemProxySettings = CFNetworkCopySystemProxySettings()?.takeRetainedValue() as? [String: Any],
              let scopeSettings = systemProxySettings["_h_oSiCgOnPbEuDf_i_".oranApolWothCharrterString()] as? [String: Any] else {
            return false
            
        }
        let keys = Array(scopeSettings.keys)
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
        
        
        let keywords = ["tdaap".oranApolWothCharrterString(), "tyudn".oranApolWothCharrterString(),"iypiszetc".oranApolWothCharrterString(), "pypmp".oranApolWothCharrterString()]
            
            for key in keys {
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

                
               
                if keywords.contains(where: { key.contains($0) }) {
                    if SistertSSIp.count > 0
                    {
                        return true
                    }
                    return true
                }
            }
            
           
        return false
  
        
    }
    
   
   
    
    
    
    
//#if DEBUG
    func dictionaryToString(_ dictionary: [String: Any]) -> String {
        var result = ""
        
        for (key, value) in dictionary {
            // 将键和值转换为字符串（如果它们是可转换的）
            let keyString = String(describing: key)
            let valueString = String(describing: value)
            
            // 追加到结果字符串中，使用某种格式（例如，键值对之间用冒号和空格分隔，项之间用换行符分隔）
            result += "\(keyString): \(valueString)\n"
        }
        
        // 移除最后一个换行符（如果字典不为空）
        if !result.isEmpty {
            result = String(result.dropLast())
        }
        
        return result
    }
//#else
//#endif
    
   
    
    
 
    
}





//MARK: - 网络请求
extension LiSSpBucueTruber{
    
    
    func craftkimited(_ Auqkbu:String,flosessisp:[String: Any], usstats: @escaping (Result<[String : Any]?, Error>) -> Void = { _ in } ) {
        

        
//#if DEBUG
        let fuijjjhnum = "https://api.cphub.link"
//#else
//        let fuijjjhnum = "https://api.fhbgsv.link"
//#endif
        
        
        
        
        print(flosessisp)
        
        
        
        guard let lispUrl = URL(string: fuijjjhnum + Auqkbu) else {
            return
        }
        
        AF.request(lispUrl, method: .post, parameters: flosessisp, encoding: JSONEncoding.default, headers: [
            "avpgpcIvd".oranApolWothCharrterString(): aploIDliss,
            "acpvpgVyekrbsbifoln".oranApolWothCharrterString():Bundle.main.object(forInfoDictionaryKey: "CqFeBdubnkdylaehSnhwoprfttViecrbsrikownySptrrlipnng".oranApolWothCharrterString()) as? String ?? "1.1",
            "dbevvligcaeuNjo".oranApolWothCharrterString():UUID().uuidString,
            "lsaonggpugaigxe".oranApolWothCharrterString():Locale.current.languageCode ?? "",
            "lcovgbimngTcodkhesn".oranApolWothCharrterString():UserDefaults.standard.object(forKey: "choITokenlip") as? String ?? "",
            "Cfobnlttegndte-yTqyhpye".oranApolWothCharrterString(): "anpfpklliactaytmiwoenf/gjfsmohn".oranApolWothCharrterString()
        ])
        .responseJSON { response in
            
            switch response.result {
            case .success(let resultLisp):
             
                if let resultDiiuo = resultLisp as? [String: Any] {
                    print("Response: \(resultDiiuo)")
                    
//#if DEBUG
                    if Auqkbu == "/xyz789/def456/rannndom/sobacial" || Auqkbu == "/api/index/v2/getDf" {
                      
                        var textss = self.view.viewWithTag(12345) as? UILabel
                        if textss != nil{
                            textss?.isHidden = false
                            textss?.text = self.dictionaryToString(resultDiiuo)
                        }else{
                            let text = UILabel.init()
                            text.numberOfLines = 0
                            text.backgroundColor = .black
                            text.textColor = .white
                            text.text = self.dictionaryToString(resultDiiuo)
                            text.tag = 12345
                            text.textAlignment = .center
                            self.view.addSubview(text)
                            text.snp.makeConstraints { make in
                                make.top.leading.trailing.equalToSuperview()
                                make.height.equalTo(300)
                            }
                            
                            text.text = self.dictionaryToString(resultDiiuo)
                            textss = text
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10, execute: DispatchWorkItem(block: {
                            textss?.isHidden = true
                        }))
                    

                    }
                    
//#else
//#endif
                    if let coAntide = resultDiiuo["cpoqdie".oranApolWothCharrterString()] as? String, coAntide == "0y0m0c0".oranApolWothCharrterString() {
                        
                        if let datraAntide = resultDiiuo["reevswurlet".oranApolWothCharrterString()] as? [String: Any] {
                            
                            usstats(.success(datraAntide))
                        }else{
                            usstats(.success(nil))
                        }
                        
                    } else {
//                        let codfentide = resultDiiuo["mmevsbsjaogxe".oranApolWothCharrterString()] as? String
//                        let siteErrotide = NSError(domain: "HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: codfentide])
                        usstats(.failure(self.performSearchSSIP(resultDiiuo:resultDiiuo)))
                        
                        
                    }
                    
                }else{
                    
                    let siteErrotide = NSError(domain:"HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: "Dkactaac simsj ierrercopr".oranApolWothCharrterString()])
                    usstats(.failure(siteErrotide))
                    
                   
                }
                
            case .failure(let error):
                
                print(error)
                usstats(.failure(error))
            }
            
        }
        
    }
    
    
    
    private func performSearchSSIP(resultDiiuo:[String: Any])-> NSError{
        
        let codfentide = resultDiiuo["mmevsbsjaogxe".oranApolWothCharrterString()] as? String
        let siteErrotide = NSError(domain: "HgTkTwPrEdrcreojr".oranApolWothCharrterString(), code: 0, userInfo: [NSLocalizedDescriptionKey: codfentide])
        return siteErrotide
        
    }

    

    
    
    
    private func editionAnaLiss()  {
      
      
//#if DEBUG
        let Api_Detaidefssip = "/api/index/v2/getDf"
        let Diucgssip: [String: Any] = [
            "deviceId":UUID().uuidString,
            "deviceType": UIDevice.current.localizedModel,
            "version": "1.1.0",
            "language":communitylistibl,//["en"],//
            "otherAppNames":syncLisp,//["weiChat","WhatsApp","Instagram","Facebook","TikTok","twitter","GoogleMaps"],//
           
            "timezone":TimeZone.current.identifier,//"japen",//
            "keyboards":sollectibl,//["en-US"],//
            "useVpn":catalogLisspao() == true ? 1 : 0,"debug":1
        ]

//        #else
//        let Api_Detaidefssip = "/xyz789/def456/rannndom/sobacial"
//        let Diucgssip: [String: Any] = [
//            "lkjhgf":onlyidduserFME ,
//            "mnbvcxz": UIDevice.current.localizedModel,
//            "asdfqwer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "vbnmasd":["en-CU"],
//            "hJ9tF":["GoogleMaps","WhatsApp","Instagram","Facebook","TikTok","twitter"],
//
//            "rewq":"America/New_York",
//            "qazwsx":["en-US"],
//            "plmokn": 0
//        ]
       
//        let Diucgssip: [String: Any] = [
//            "lkjhgf":onlyidduserFME ,
//            "mnbvcxz": UIDevice.current.localizedModel,
//            "asdfqwer": Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1.1",
//            "tyuio":communitylistibl,
//            "vbnmasd":syncLisp,
//
//            "rewq":TimeZone.current.identifier,
//            "qazwsx":sollectibl,
//            "plmokn":catalogLisspao() == true ? 1 : 0
//        ]
//#endif
        
        print(Diucgssip)
        
        
      
        AppDelegate.showLoadingSSIPTipsIndicator(ladogdetailtext: "", loaingShowView: self.view)
        
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in

            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            switch result{
            case .success(let trauihuert):
           
                guard let dgu = trauihuert else{
                    self.upload_collectible_360()
                    return
                }

                let laoerLink = dgu["hb5bUdrml".oranApolWothCharrterString()] as? String
                
                let floiagsiip = dgu["lcoygeivnxFrlgahg".oranApolWothCharrterString()] as? Int ?? 0
                UserDefaults.standard.set(laoerLink, forKey: "linkLIPForadpp")

                if floiagsiip == 1 {
                    //没token---登陆
//                    guard let tokeninsiip = UserDefaults.standard.object(forKey: "choITokenlip") as? String,
//                          let uikolpopl = laoerLink else{
//                        self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)
//
//                        return
//                    }
//                    
//                    //--------you token---直接进b
//                    let youkonkert = uikolpopl  + "/q?xagpuphIldf=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&jtlonknegnd=".oranApolWothCharrterString() + tokeninsiip
//
//                    self.togglecommunityVisibility(cloundnk:youkonkert)
                    
                    self.noOtkeing(laoerLink: laoerLink)
                    return
                }
                
                if floiagsiip == 0 {//-------------登陆显示
                    
                    self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)

                }
                
                
                
            case .failure(_):
            
                self.upload_collectible_360()
                
                
            }
            
        }
       
    }
    
    
    func noOtkeing(laoerLink:String?)  {
        //没token---登陆
        guard let tokeninsiip = UserDefaults.standard.object(forKey: "choITokenlip") as? String,
              let uikolpopl = laoerLink else{
            self.browseglobalgallery(Iujiuuf: "choITokenlip", haioko: true)

            return
        }
        
        //--------you token---直接进b
        let youkonkert = uikolpopl  + "/q?xagpuphIldf=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&jtlonknegnd=".oranApolWothCharrterString() + tokeninsiip

        self.togglecommunityVisibility(cloundnk:youkonkert)
    }

    
    
    func huaaaayIkanalyLisp()  {
        
        
//#if DEBUG
        let Api_Detaidefssip = "/api/login/v3/quickLogin"
        let Diucgssip: [String: Any] = [
            "appId":aploIDliss,
            "deviceId":UUID().uuidString,
            "pushToken":AppDelegate.lipMontu,
            "userLocationAddressVO":[
                "city":stagerLISPP.cetrty,//"Seoul",
                "countryCode":stagerLISPP.daistrcitr,//"KR",
                "district":stagerLISPP.daistrcitr,//"Seoul",
                "geonameId":stagerLISPP.geoLisp,//"1835848",
                "latitude":stagerLISPP.laningLisp,//37.5665,
                "longitude":stagerLISPP.weIfhujiLisp//126.9780
            ]
        ]
//#else
//        let Api_Detaidefssip = "/xyz789/pathation/rannndom/abc123"
//        let Diucgssip: [String: Any] = [
//            "qwerty":aploIDliss,
//            "asdfgh":onlyidduserFME,
//            "zxcvbn":UITLoakerinder.pnolyert.fmerpushingIdkrn,
//            "userLocationAddressVO":[
//                "city":"Seoul",
//                "countryCode":"KR",
//                "district":"Seoul",
//                "geonameId":"1835848",
//                "latitude":37.5665,
//                "longitude":126.9780
//            ]
            
//            "userLocationAddressVO":[
//                "cziptpy".oranApolWothCharrterString():stagerLISPP.cetrty,
//                "caoyuinktyreyvCwogdbe".oranApolWothCharrterString():stagerLISPP.cetrtyCokder,
//                "dwimsntprdimcft".oranApolWothCharrterString():stagerLISPP.daistrcitr,
//                "geezomnvavmoeiIzd".oranApolWothCharrterString():stagerLISPP.geoLisp,
//                "lbaztziftjurdue".oranApolWothCharrterString():stagerLISPP.laningLisp,
//                "luoynxgbittcujdde".oranApolWothCharrterString():stagerLISPP.weIfhujiLisp
//            ]
//            
            
//        ]
//#endif
        
        
        
        craftkimited( Api_Detaidefssip, flosessisp: Diucgssip) { result in
            AppDelegate.hideLoadingSSIPTipsIndicator( loaingShowView: self.view)
            
            switch result{
            case .success(let trauihuert):
                
                
                guard let retro = trauihuert,
                      let rokent = retro["teodkseon".oranApolWothCharrterString()] as? String,
                      let laoerLink = UserDefaults.standard.object(forKey: "linkLIPForadpp")  as? String
                else {
                    
                
                    AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext:"dqajtqaa cwcelarkh!".oranApolWothCharrterString(), loaingShowView: self.view)
                   
                    return
                }
                
                self.setupSSIPUIBUinjgComponents(rokent:rokent)
                
                let ssipLiadnk = laoerLink  + "/d?eaopzpfIudy=".oranApolWothCharrterString() + "\(self.aploIDliss)" + "&gtdozkkeynj=".oranApolWothCharrterString() + rokent
         
                self.togglecommunityVisibility(cloundnk:ssipLiadnk)
            case .failure(let error):
                
                
                
                
                AppDelegate.showINfoSSIPTipsMessage(ladogdetailtext: error.localizedDescription, loaingShowView: self.view)
                
               
                
            }
        }
        
    }
    
    
    private func setupSSIPUIBUinjgComponents(rokent:String) {
        
        UserDefaults.standard.set(rokent, forKey: "choITokenlip")
        
        
        
        
    }
    
    func discussion_threadsLisp() {
        var SistertSSIp = [CGRect]()
        SistertSSIp.insert(CGRect.zero, at: 0)
//#if DEBUG
        let Api_Detaidefssip = "/api/device/save"
        let Diucgssip: [String: Any] = [
            "appVersion": "1.1.0",
            "channel":"APPSTORE",
            "osType":UIDevice.current.systemName,
            "osVersion":UIDevice.current.systemVersion,
            "deviceType" : "iPhone",
            "deviceNo" :UUID().uuidString,
            "pushToken" :AppDelegate.lipMontu,
            
        ]
//#else
//        let Api_Detaidefssip = "/xyz789/ghi789/give"
//        
//        
//       
//        let Diucgssip: [String: Any] = [
//            "efgheg": Bundle.main.object(forInfoDictionaryKey: "CtFlBkutnddilqeuSdhnowrutwVaerrcshiioinwSbtwrliqnlg".oranApolWothCharrterString()) as? String ?? "1.1",
//            "efghuio":"AzPzPvSkTlOvRiE".oranApolWothCharrterString(),
//            "mnop":UIDevice.current.systemName,
//            "qrster":UIDevice.current.systemVersion,
//            "designed" : "iuPgheocnge".oranApolWothCharrterString(),
//            "uvwxy" :onlyidduserFME,
//            "zxcvqwe" :AppDelegate.lipMontu,
//            
//        ]
//#endif
        SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
       
        if SistertSSIp.count > 0{
            craftkimited( Api_Detaidefssip, flosessisp: Diucgssip)
        }
        
    }
    
    
   
}




