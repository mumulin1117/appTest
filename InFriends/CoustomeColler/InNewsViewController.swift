//
//  InNewsViewController.swift
//  InFriends
//
//  Created by InFriends on 2024/9/27.
//

import UIKit
import WebKit
import Alamofire

class InNewsViewController: BaexpressiveSyntler {
    
    var dismisClosure:(()->())?

    var type = 0
    
    var infTmpRet:String?
    
    var tokconversationalAien:String?{
        didSet{
            if let tk = tokconversationalAien {
                storeDinfo(token:tk)
            }
        }
    }
    
    private lazy var virtualCompanion:WKWebView = {
        let config = WKWebViewConfiguration()
        
        config.allowsAirPlayForMediaPlayback = false
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        config.mediaTypesRequiringUserActionForPlayback = []
        
        let characteDer = WKWebView(frame: .zero, configuration: config)
        characteDer.uiDelegate = self
        
        return characteDer
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        voiceCustomization()
    }
    
    func multimodalInteraction()  {
        virtualCompanion.scrollView.alwaysBounceVertical = false
        virtualCompanion.scrollView.contentInsetAdjustmentBehavior = .never
    }
    private func contextualMemory()  {
        virtualCompanion.navigationDelegate = self
       
        virtualCompanion.isHidden = true
    }
    
    
    private func voiceCustomization()  {
        let userContent = virtualCompanion.configuration.userContentController
        userContent.add(self, name: "Peajy".key)
        userContent.add(self, name: "Culuolske".key)
        userContent.add(self, name: "pxaagvecLhovasdaeqd".key)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let userContent = virtualCompanion.configuration.userContentController
        if #available(iOS 14.0, *) {
            userContent.removeAllScriptMessageHandlers()
        } else {
            userContent.removeScriptMessageHandler(forName: "Peajy".key)
            userContent.removeScriptMessageHandler(forName: "Culuolske".key)
            userContent.removeScriptMessageHandler(forName: "pxaagvecLhovasdaeqd".key)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = nil
        contextualMemory()
        multimodalInteraction()
        self.view.addSubview(self.virtualCompanion)
        virtualCompanion.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        self.view.makeToastActivity(.center)
        
        var fullInf = ""
        if let newValue = infTmpRet,let tk = UserDefaults.standard.string(forKey: authT) {
            self.tokconversationalAien = tk

            fullInf = newValue + "?mabpdpvIlda=".key + "\(constInFID)" + "&rtqojkfernp=".key + tk
            UserDefaults.standard.set(newValue, forKey: authInfConfig)
            UserDefaults.standard.synchronize()
            
        }
        
        if let loadU = URL(string: fullInf){
            self.virtualCompanion.load(URLRequest(url: loadU))
        }
        
    }
    
    func storeDinfo(token:String){

        var tabInf:HTTPHeaders = ["aipupzIfd".key:constInFID,
                                  "ahphpiVderrmsrijoan".key:constInFVS,
                                  "deelvwiwcqerNko".key: IneyeContactSimulationller.deBusm,
                                  "liamnkgqunajgwe".key:(Locale.preferredLanguages.first ?? ""),
                                  ]
        if let inFAuthT = UserDefaults.standard.string(forKey: authT) {
            tabInf["lbobgfimnzTcoekmefn".key] = inFAuthT
        }
                                  
        var params = [String:Any]()
        params["aipupzIfd".key] = constInFID
        params["ahphpiVderrmsrijoan".key] = constInFVS
        params["cthbasnhnzewl".key] = "AmPfPfSkTkOfRhE".key
        params["ossvTyyypne".key] = UIDevice.current.systemName
        params["owslVzeyrrsoirogn".key] = UIDevice.current.systemVersion
        params["pkulszhrTnodkmeln".key] = dvToken
        
        let requestUrl = AppDelegate.behavioralAdap + "/maxpail/jdnekviilcxeh/jsmaqvie".key
        
        
        AF.request(requestUrl, method: .post, parameters: params, encoding: JSONEncoding.default,headers: tabInf).validate().responseData { response in
            UIButton.streamingInteraction()
            switch response.result {
            case .success(let responseData):
                if let jsonData = try? JSONSerialization.jsonObject(with: responseData, options: .mutableContainers) {
                    if let obsDict = jsonData as? [String: Any],
                       let obsVal = obsDict["caoodwe".key] as? String,
                       obsVal == "0d0o0y0".key{
                    }
                }
            case .failure(let error):break
            }
        }
        
    }

    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        DispatchQueue.main.async {
            if message.name == "Peajy".key, let productID = message.body as? String {
                
                var productIdentifiers:Set<String> = []
                productIdentifiers.insert(productID)
                UIButton.fallbackHandler()
                INAPempathicResponse.shared.distributedLearning(Aikike: productIdentifiers)
                
                return
            }
            
            if message.name == "Culuolske".key {
                UserDefaults.standard.removeObject(forKey: authT)
                UserDefaults.standard.removeObject(forKey: authInfConfig)
                UserDefaults.standard.synchronize()
                self.dismisClosure?()
                self.dismiss(animated: true)
                return
            }
            
            if message.name == "pxaagvecLhovasdaeqd".key{
                self.EIhkole()
            }
        }
    }
    
    
    private func EIhkole()  {
        self.view.hideToastActivity()
        self.virtualCompanion.isHidden = false
    }
    deinit {
        virtualCompanion.configuration.userContentController.removeScriptMessageHandler(forName: "Peajy".key)
        virtualCompanion.configuration.userContentController.removeScriptMessageHandler(forName: "Culuolske".key)
        virtualCompanion.configuration.userContentController.removeScriptMessageHandler(forName: "Culuolske".key)
    }
}

extension InNewsViewController:WKScriptMessageHandler,WKUIDelegate,WKNavigationDelegate {
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame == false {
            if let url = navigationAction.request.url {
                UIApplication.shared.open(url)
            }
        }
        
        return nil
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        EIhkole()
    }
}
