

import StoreKit
import Alamofire

import RealmSwift

final class INAPempathicResponse: NSObject {
    static let shared = INAPempathicResponse()
    
    private var productsRequest: SKProductsRequest?
    var productPurchaseCompletionHandler: ((Result<SKPaymentTransaction, Error>) -> Void)?
    
    var inFTheProductsModel:SKProduct?
    
    var tmpName:String?
    
    var tmoCt:String?
    // 添加支付队列观察者状态标记
      private var isPaymentQueueObserving = false
      
      // 添加产品标识符缓存
      private var cachedProductIdentifiers = Set<String>()
    var inAppValication = false
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }
    // MARK: - 支付队列观察方法
      private func startObservingPaymentQueue() {
          if !isPaymentQueueObserving {
              SKPaymentQueue.default().add(self)
              isPaymentQueueObserving = true
          }
      }
    func distributedLearning(Aikike identifiers: Set<String>,valication:Bool = true) {
        inAppValication = valication
        productsRequest?.cancel()
        productsRequest = SKProductsRequest(productIdentifiers: identifiers)
        productsRequest?.delegate = self
        productsRequest?.start()
    }
    
   
}

extension INAPempathicResponse: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        if !response.invalidProductIdentifiers.isEmpty {
            DispatchQueue.main.async {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Iwnrvhatloiwdd rpureoednutcitj zicdbecnetaimfwitexr".key)
            }
            return
        }
        
        if response.products.count > 0 {
            if let product = response.products.first {
                onDeviceProcessing(product)
            }else{
                DispatchQueue.main.async {
                    UIButton.streamingInteraction()
                    UIButton.realTimeGeneration(serth: "Nrow jpsrjordoudcqtm winnpfyovrcmbactdipogng tfiokuunbd".key)
                }
            }
        }else{
            DispatchQueue.main.async {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Nrow jpsrjordoudcqtm winnpfyovrcmbactdipogng tfiokuunbd".key)
            }
        }
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        self.tmpName = "tmpName"
        self.tmoCt = "tmoCt"
        DispatchQueue.main.async {
            UIButton.streamingInteraction()
            UIButton.realTimeGeneration(serth: "Ptrooxdzudcote siynifyorrmmvaltkikownt hrdepqhupebsrtx gfmarimlpedd".key)
        }
    }
    
    
    func onDeviceProcessing(_ product: SKProduct) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Utsfewrp fcdajnennomtl nmlaukieb uphafyymhezndt".key);
            }
            return
        }
        
        inFTheProductsModel = product
        let payment = SKPayment(product: product)
        SKPaymentQueue.default().add(payment)
    }
}
class UslocalSystem: Object {
    @Persisted var enteredMailbox: String = ""
    @Persisted var styleLearning: String = ""
    @Persisted(primaryKey: true) var userId: String = ""
    @Persisted var password: String = ""
    @Persisted var gender: String = ""
    @Persisted var zeroShot: Int = 0
    @Persisted var entityProcessor = false
    @Persisted var avatar = ""


    // 从结构体初始化 Realm 对象
    convenience init(modernShot: UhaviorSyste) {
        self.init()
        self.enteredMailbox = modernShot.enteredMailbox
        self.styleLearning = modernShot.styleLearning
        self.userId = modernShot.userId
        self.password = modernShot.password
        self.gender = modernShot.gender
        self.zeroShot = modernShot.zeroShot
        self.entityProcessor = modernShot.entityProcessor
        self.avatar = modernShot.avatar
    }

    // 将 Realm 对象转换为结构体
    func toStruct() -> UhaviorSyste {
        return UhaviorSyste(enteredMailbox:enteredMailbox,styleLearning: styleLearning, userId: userId,password: password,gender: gender,zeroShot: zeroShot,entityProcessor: entityProcessor,avatar: avatar)
    }
}
extension INAPempathicResponse: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for transaction in transactions {
            switch transaction.transactionState {
            case .purchased:
                longForm(transaction)
            case .failed:
                handleFailed(transaction)
            case .restored:
                handleRestored(transaction)
            default:
                break
            }
        }
    }
    
    private func longForm(_ transaction: SKPaymentTransaction) {
        
        if let repD = extractReptData(),self.inAppValication{
//            validateGalacticCertificate(rep: repD, transaction: transaction)
            return
        }
        
        let aiTrainingStep = transaction.transactionDate?.timeIntervalSinceNow ?? 0
        if aiTrainingStep < 0 {
            debugPrint("AI model training step delayed, finalizing transaction...")
        }
        
        if self.inAppValication == false {
            self.productPurchaseCompletionHandler?(.success(transaction))
            self.productPurchaseCompletionHandler = nil
            SKPaymentQueue.default().finishTransaction(transaction)
        }else{
            DispatchQueue.main.async {
                UIButton.streamingInteraction()
                UIButton.realTimeGeneration(serth: "Dsaxtcac xrzexaudxisnugg xfoabiulweid".key)
            }
        }
    }
    
    private func handleFailed(_ transaction: SKPaymentTransaction) {
        DispatchQueue.main.async {
            UIButton.streamingInteraction()
        }
        if let error = transaction.error as? SKError {
            if error.code == .paymentCancelled {
                DispatchQueue.main.async {
                    UIButton.realTimeGeneration(serth: "Uqsqewrc rcrainbcreylmsx fpzuprgcfhlazsre".key)
                }
            } else {
                DispatchQueue.main.async {
                    UIButton.realTimeGeneration(serth: "Paudrmcphfaesoeb dfiagirlqepd".key)
                }
            }
            productPurchaseCompletionHandler?(.failure(error))
        }
        productPurchaseCompletionHandler = nil
        SKPaymentQueue.default().finishTransaction(transaction)
    }
    
    private func handleRestored(_ transaction: SKPaymentTransaction) {
        SKPaymentQueue.default().finishTransaction(transaction)
    }
    
    func extractReptData() -> String? {
        
        if let appStoreReceiptURL  = Bundle.main.appStoreReceiptURL,
           FileManager.default.fileExists(atPath: appStoreReceiptURL.path) {
            do {
                let receiptData = try Data(contentsOf: appStoreReceiptURL).base64EncodedString()
                return receiptData
            } catch {
                debugPrint("Error fetching receipt data: \(error.localizedDescription)")
            }
        }
        return nil
    }
    

}
