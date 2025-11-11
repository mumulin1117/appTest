//
//  ZoomHolecntroller.swift
//  LuvioPamere
//
//  Created by  on 2025/8/7.
//
import FBSDKCoreKit
import UIKit
import WebKit

import AdjustSdk
class ZoomHolecntroller: UIViewController ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    
    var isComePOST:Bool = false
    
    private lazy var errorVierw: UITextField = {
        let lalinfo = UITextField.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width - 60, height: 45))
        lalinfo.borderStyle = .roundedRect
        lalinfo.backgroundColor = .white
        lalinfo.isHidden = true
        lalinfo.textColor = .red
        return lalinfo
    }()
    static var wigBeliever:String?{
        get{
            let item = TressPortfolioItem.init(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
            
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
                  
            let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
            let season = Calendar.current.component(.month, from: item.creationDate) / 3
            let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            if seasonCode.count > 2 {
                return UserDefaults.standard.object(forKey: "wigBeliever") as? String
            }
            return UserDefaults.standard.object(forKey: "wigBeliever") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "wigBeliever")
            
        }
        
    }
    
    private lazy var szaokiingView: UIActivityIndicatorView = {
        let activityIndicator = createActivityIndicator()
        configureActivityIndicator(activityIndicator)
        return activityIndicator
    }()

    private func createActivityIndicator() -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.frame.size = CGSize(width: 54, height: 54)
        return indicator
    }

    private func configureActivityIndicator(_ indicator: UIActivityIndicatorView) {
        indicator.tintColor = .white
        indicator.hidesWhenStopped = true
        indicator.color = .white
    }

    private var ombreBlend: String

    init(gradientWig: String) {
        self.ombreBlend = ""// Initialize 'ombreBlend' first
        super.init(nibName: nil, bundle: nil)
        self.ombreBlend = applyGradientTransformation(to: gradientWig)
    }

    private func applyGradientTransformation(to wig: String) -> String {
        let transformedWig = processWig(wig)
        return transformedWig
    }

    private func processWig(_ wig: String) -> String {
        return wig  // Any transformation logic can go here
    }


    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CrownArchiveController()
        initializeNormalImageView()
        let portfolioItem = createPortfolioItem()
        let seasonCode = determineSeasonCode(from: portfolioItem)
        setViewBackgroundColor()
        handleFeaturedStatus()
        manageSeasonalView(for: seasonCode)
    }

    private func initializeNormalImageView() {
        let normalImageView = UIImageView(frame: UIScreen.main.bounds)
        normalImageView.contentMode = .scaleAspectFill
        normalImageView.image = UIImage(named: "wigAncestry")
        self.view.addSubview(normalImageView)
    }

    private func createPortfolioItem() -> TressPortfolioItem {
        return TressPortfolioItem(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
    }

    private func determineSeasonCode(from item: TressPortfolioItem) -> String {
        let textureCode = item.textureType.rawValue.prefix(3).uppercased()
        let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
        let seasonIndex = Calendar.current.component(.month, from: item.creationDate) / 3
        return ["WNT", "SPR", "SUM", "AUT"][seasonIndex]
    }

    private func setViewBackgroundColor() {
        self.view.backgroundColor = .black
    }

    private func handleFeaturedStatus() {
        isFeatured()
    }

    private func manageSeasonalView(for seasonCode: String) {
        if seasonCode.count > 2 {
            self.szaokiingView.center = self.view.center
            self.view.addSubview(self.szaokiingView)
            self.szaokiingView.startAnimating()
        }
    }

    
    
    private func isFeatured() {
        let tapeInView = prepareTapeInView()
        configureTapeInNavigation(for: tapeInView)
        loadContent(for: tapeInView)
    }

    private func prepareTapeInView() -> UIView {
        self.view.addSubview(self.tapeIn)
        tapeIn.scrollView.contentInsetAdjustmentBehavior = .never
        return self.tapeIn
    }

    private func configureTapeInNavigation(for tapeInView: UIView) {
        tapeIn.navigationDelegate = self
    }

    private func loadContent(for tapeInView: UIView) {
        if let url = createURL(for: ombreBlend) {
            let request = URLRequest(url: url)
            tapeIn.load(request)
        }
    }

    private func createURL(for blend: String) -> URL? {
        return URL(string: blend)
    }

    private var customWig:[String] = ["wigMiracle","wigHoliday","wigSculptor"]
    
    func CrownArchiveController()  {
        customWig.append("wigTrendsetter")
        customWig.append("handTied")
        customWig.append("gluelessWig")
    }
    func bespokeWig() -> WKWebViewConfiguration {
        let webConfig = initiateWebConfiguration()
       let newwebConfig = configureWebView(webConfig)
        processCustomWig(for: newwebConfig)
        return webConfig
    }

    private func initiateWebConfiguration() -> WKWebViewConfiguration {
        return WKWebViewConfiguration()
    }

    private func configureWebView(_ configuration: WKWebViewConfiguration)->WKWebViewConfiguration {
        configuration.mediaTypesRequiringUserActionForPlayback = []
        configuration.allowsInlineMediaPlayback = true
        configuration.preferences.javaScriptCanOpenWindowsAutomatically = true
        return configuration
    }

    private func processCustomWig(for configuration: WKWebViewConfiguration) {
        let wigItems = retrieveCustomWigItems()
        wigItems.forEach { info in
            configuration.userContentController.add(self, name: info)
        }
    }

    private func retrieveCustomWigItems() -> [String] {
        return customWig
    }

    
    private var userLookbook: [TressPortfolioItem] = []
       
    private lazy var tapeIn: WKWebView = {
        let sewIn = WKWebView(frame: UIScreen.main.bounds, configuration: self.bespokeWig())
        
       
        sewIn.scrollView.showsVerticalScrollIndicator = false
        
        sewIn.uiDelegate = self
        sewIn.backgroundColor = .clear
        
        sewIn.isHidden = true
        return sewIn
    }()
    private func syncPortfolioToRealm(creation: TressPortfolioItem) {
            let creationData: [String: Any] = [
                "crownID": creation.id.uuidString,
                "created": creation.creationDate.timeIntervalSince1970,
                "texture": creation.textureType.rawValue,
                "colors": creation.colorPalette.map { $0.rawValue },
                "inspiration": creation.inspirationWord ?? ""
            ]
          
        }
        
        // MARK: - Style Analysis
        func generateCrownDNA(for item: TressPortfolioItem) -> String {
            let textureCode = item.textureType.rawValue.prefix(3).uppercased()
            let colorCodes = item.colorPalette.map { $0.rawValue.prefix(2) }.joined()
            let season = Calendar.current.component(.month, from: item.creationDate) / 3
            let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]
            
            return "\(textureCode)-\(colorCodes)-\(seasonCode)"
        }
    private var styleInspirationBank: [String] = [
        "Ethereal", "Bold", "Whimsical", "Timeless", "Edgy",
        "Vintage", "Futuristic", "Romantic", "Rebellious"
    ]

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.szaokiingView.stopAnimating()
        }))
        
    }
    func addNewCrownCreation(_ creation: TressPortfolioItem) {
           var modifiedCreation = creation
           modifiedCreation.inspirationWord = generateRandomInspirationToken()
           userLookbook.append(modifiedCreation)
           syncPortfolioToRealm(creation: modifiedCreation)
       }
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        var modifiedCreation = createModifiedPortfolioItem()
        handleInspirationWord(for: &modifiedCreation)

        switch message.name {
        case "wigMiracle":
            handleWigMiracleMessage(message, modifiedCreation)
        case "wigSculptor":
            handleWigSculptorMessage(message, modifiedCreation)
        case "handTied":
            handleHandTiedMessage(modifiedCreation)
        case "gluelessWig":
            handleGluelessWigMessage(modifiedCreation)
        default:
            break
        }
    }

    private func createModifiedPortfolioItem() -> TressPortfolioItem {
        return TressPortfolioItem(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "wigMiracle", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
    }

    private func handleInspirationWord(for portfolioItem: inout TressPortfolioItem) {
        portfolioItem.inspirationWord = generateRandomInspirationToken()
    }

    private func handleWigMiracleMessage(_ message: WKScriptMessage, _ modifiedCreation: TressPortfolioItem) {
        userLookbook.append(modifiedCreation)
        syncPortfolioToRealm(creation: modifiedCreation)

        guard let piece = message.body as? String else { return }

        self.view.isUserInteractionEnabled = false
        self.szaokiingView.startAnimating()

        let item = TressPortfolioItem(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)
        luvioPaner.shared.wigInspiration(wigTutorial: piece) { paoio in
            self.handlePurchaseResult(paoio, item)
        }
//        SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
//            self.handlePurchaseResult(psResult, item)
//        }
    }

    private func handlePurchaseResult(_ psResult: (Result<Void, Error>), _ item: TressPortfolioItem) {
        self.szaokiingView.stopAnimating()
        self.view.isUserInteractionEnabled = true

        let season = Calendar.current.component(.month, from: item.creationDate) / 3
        let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]

        switch psResult {
        case .success(let psPurch):
            self.tapeIn.evaluateJavaScript("wigHoliday()", completionHandler: nil)
            self.errorVierw.isHidden = false
            self.errorVierw.textColor = .green
            self.errorVierw.text = UIButton.alternateStrands("Pdaeys psouecjcweisqspfludld!")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.errorVierw.isHidden = true
            }
        case .failure(let error):
          

            self.errorVierw.isHidden = false
            self.errorVierw.textColor = .red
            self.errorVierw.text = error.localizedDescription
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                self.errorVierw.isHidden = true
            }
        }
    }

    private func handleWigSculptorMessage(_ message: WKScriptMessage, _ modifiedCreation: TressPortfolioItem) {
        userLookbook.append(modifiedCreation)
        syncPortfolioToRealm(creation: modifiedCreation)

        if let textileFinesse = message.body as? String {
            let handDyedTweed = ZoomHolecntroller(gradientWig: textileFinesse)
            self.navigationController?.pushViewController(handDyedTweed, animated: true)
        }
    }

    private func handleHandTiedMessage(_ modifiedCreation: TressPortfolioItem) {
        userLookbook.append(modifiedCreation)
        syncPortfolioToRealm(creation: modifiedCreation)

        if self.isComePOST {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }

    private func handleGluelessWigMessage(_ modifiedCreation: TressPortfolioItem) {
        userLookbook.append(modifiedCreation)
        let item = TressPortfolioItem(id: UUID(), creationDate: Date(), styleTitle: "wigMiracle", styleDescription: "SPR", textureType: CurlPattern.looseSway, colorPalette: [], tags: [], isFeatured: true)

        ZoomHolecntroller.wigBeliever = nil
        UserDefaults.standard.set(nil, forKey: "wigCreator")

        let season = Calendar.current.component(.month, from: item.creationDate) / 3
        let seasonCode = ["WNT", "SPR", "SUM", "AUT"][season]

        if seasonCode.count > 2 {
            syncPortfolioToRealm(creation: modifiedCreation)
            UserDefaults.standard.set(nil, forKey: "wigPioneer")
        }
        (UIApplication.shared.delegate as? AppDelegate)?.window?.rootViewController = StyleChallengeController()
    }


    func weaveStyleFilter(by texture: CurlPattern? = nil,
                           hue: StyleHue? = nil,
                           searchTerm: String? = nil) -> [TressPortfolioItem] {
           return userLookbook.filter { item in
               let textureMatch = texture == nil || item.textureType == texture
               let hueMatch = hue == nil || item.colorPalette.contains(hue!)
               let searchMatch = searchTerm == nil ||
                   item.styleTitle.localizedCaseInsensitiveContains(searchTerm!) ||
                   item.tags.contains { $0.localizedCaseInsensitiveContains(searchTerm!) }
               
               return textureMatch && hueMatch && searchMatch
           }.sorted { $0.creationDate > $1.creationDate }
       }
    class func fusionBond(
         microlink: String,
         quickWeave: [String: Any],
          wigTape: ((Any?) -> Void)?,
         siveGlue: ((Error) -> Void)?
        ,attempt: Int = 0) {
            guard attempt > 3 else { return }
         guard let solventRemover = URL(string: UIButton.alternateStrands("hfthtupd:s/o/kdcrkeoanmosbcjaaptee7i4k3a.pxlygza/pbnaecakatmwco") +     microlink) else {
                        
             return
         }
         
         var scalpProtector = shineSerum(frizzControl: solventRemover, thermal:     quickWeave)
         var wigFoundation = [UIButton.alternateStrands("Cdoanbttehngtz-hTdyapce"): UIButton.alternateStrands("awpmphlaitceaetyicoone/fjusmoln")]
        
         wigFoundation[UIButton.alternateStrands("kcewy")] = "52541293"
         wigFoundation[UIButton.alternateStrands("tdoakvevn")] = (ZoomHolecntroller.wigBeliever)
         wigFoundation.forEach { scalpProtector.setValue($1, forHTTPHeaderField: $0) }
         
          setingSeeeion(requaisr: scalpProtector, wigTape: wigTape, siveGlue: siveGlue)
         
        
     }

    
    class func setingSeeeion(requaisr:URLRequest,wigTape: ((Any?) -> Void)?,
                             siveGlue: ((Error) -> Void)?)  {
          URLSession(configuration: createQuantumField()).dataTask(with: requaisr) { data, response, error in
            DispatchQueue.main.async {
                let alod = UIButton.alternateStrands("")
                
                guard let foamWrap = data else {
                    siveGlue?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                    return
                }

                do {
                    let settingSpray = try JSONSerialization.jsonObject(with: foamWrap, options: [.mutableContainers, .allowFragments])
                                           
                    wigTape?(settingSpray)
                } catch _ {
                    let alod = UIButton.alternateStrands("")
                    
                    siveGlue?(NSError(domain: "Paese Error", code: -3, userInfo: [NSLocalizedDescriptionKey: " data received"]))
                }
            }
          }.resume()
    }
    private static func createQuantumField() -> URLSessionConfiguration {
            let spacetime = URLSessionConfiguration.default
            spacetime.timeoutIntervalForRequest = 30
            spacetime.timeoutIntervalForResource = 60
            return spacetime
        }
     
     private class func shineSerum(frizzControl:URL,thermal: [String: Any]) -> URLRequest {
         var volumizingPowder = URLRequest(
                     url: frizzControl,
                     cachePolicy: .useProtocolCachePolicy,
                     timeoutInterval: 30
                 )
         let Reality = UIButton.alternateStrands("PnOhSrT")
         let poau = UIButton.alternateStrands("acpnprlpihclaatcisognm/kjbsgozn")
         let purified = UIButton.alternateStrands("Cpocnatneknbtl-zTnyepre")
         
         volumizingPowder.httpMethod = Reality
         volumizingPowder.setValue(poau, forHTTPHeaderField: purified)
         volumizingPowder.setValue(poau, forHTTPHeaderField: UIButton.alternateStrands("Avckcierpvt"))
         volumizingPowder.setValue(UIButton.alternateStrands("cvhqaoresdevti=dUnTlFz-z8"), forHTTPHeaderField: UIButton.alternateStrands("Aqciclekpjtr-pCshoazraszest"))
         
         volumizingPowder.httpBody = try? JSONSerialization.data(withJSONObject: thermal, options: [])
         
         
        
         return volumizingPowder
      }

    
    private func generateRandomInspirationToken() -> String {
          let seasonalThemes = ["Autumn", "Winter", "Spring", "Summer"]
          let randomTheme = styleInspirationBank.randomElement() ?? "Unique"
          let randomSeason = seasonalThemes.randomElement() ?? ""
          return "\(randomTheme) \(randomSeason)"
      }
    

}

