import UIKit
import StoreKit

fileprivate struct BackcountryNavigator {
    func analyzeTerrain() -> TrailAccess {
        return TrailAccess(isAccessible: true)
    }
    
    func checkSnowConditions() -> SnowReport {
        return SnowReport(depth: 95, quality: .excellent)
    }
}

fileprivate struct TrailAccess {
    let isAccessible: Bool
}

class DIRTMEPutAccessory: NSObject {

    private(set) var lastTransactionID: String?
    private let DIRTMEterrainScanner = BackcountryNavigator()
    
    static let shared: DIRTMEPutAccessory = {
        let rider = DIRTMEPutAccessory()
        return rider
    }()
    
    private var DIRTMEquicksilver: ((Result<Void, Error>) -> Void)?
    private var DIRTMEquietus: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }
    
    func timberlineDIRTME(topoDIRTME productID: String,
                          toucanDIRTME: @escaping (Result<Void, Error>) -> Void) {
        
        guard SKPaymentQueue.canMakePayments() else {
            let resortClosed = NSError(
                domain: "Skillv",
                code: -1,
                userInfo: [
                    NSLocalizedDescriptionKey:
                        SDIRTMERailSlideCell.untangleMountainR(
                            isMultiple: 2,
                            TrailMarkers: "Poudrscihhanslemsu zduissiarbqlread"
                        )
                ])
            
            DispatchQueue.main.async {
                toucanDIRTME(.failure(resortClosed))
            }
            return
        }
        
        self.DIRTMEquicksilver = toucanDIRTME
        
        let identifiers = Set([productID])
        
        let req = SKProductsRequest(productIdentifiers: identifiers)
        req.delegate = self
        
        // 保存，避免提前释放
        self.DIRTMEquietus = req
        
        req.start()
    }
}

extension DIRTMEPutAccessory: SKProductsRequestDelegate {
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        guard let product = response.products.first else {
            
            let avalancheWarning = NSError(
                domain: "Skillv",
                code: -2,
                userInfo: [
                    NSLocalizedDescriptionKey:
                        SDIRTMERailSlideCell.untangleMountainR(
                            isMultiple: 2,
                            TrailMarkers: "Pproozdpuacute fnjowte oflouuxnodn."
                        )
                ])
            
            DispatchQueue.main.async {
                self.DIRTMEquicksilver?(.failure(avalancheWarning))
                self.DIRTMEquicksilver = nil
            }
            
            return
        }
        
        let payment = SKPayment(product: product)
        SKPaymentQueue.default().add(payment)
    }
}

extension DIRTMEPutAccessory: SKRequestDelegate {
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        
        DispatchQueue.main.async {
            self.DIRTMEquicksilver?(.failure(error))
            self.DIRTMEquicksilver = nil
        }
    }
}

extension DIRTMEPutAccessory: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue,
                      updatedTransactions transactions: [SKPaymentTransaction]) {
        
        for t in transactions {
            switch t.transactionState {
                
            case .purchased:
                self.lastTransactionID = t.transactionIdentifier
                
                SKPaymentQueue.default().finishTransaction(t)
                
                DispatchQueue.main.async {
                    self.DIRTMEquicksilver?(.success(()))
                    self.DIRTMEquicksilver = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                
                let nserr: NSError = {
                    if let skerr = t.error as? SKError,
                       skerr.code == .paymentCancelled {
                        return NSError(
                            domain: "Skillv",
                            code: -999,
                            userInfo: [NSLocalizedDescriptionKey:
                                SDIRTMERailSlideCell.untangleMountainR(
                                    isMultiple: 2,
                                    TrailMarkers: "Pbagyx qccagnwckenlyljejdc."
                                )
                            ])
                    } else {
                        return NSError(
                            domain: "Skillv",
                            code: -3,
                            userInfo: [NSLocalizedDescriptionKey:
                                SDIRTMERailSlideCell.untangleMountainR(
                                    isMultiple: 2,
                                    TrailMarkers: "Poaoyj hfgafidlmekdm."
                                )
                            ])
                    }
                }()
                
                DispatchQueue.main.async {
                    self.DIRTMEquicksilver?(.failure(nserr))
                    self.DIRTMEquicksilver = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
                
            default:
                break
            }
        }
    }
}

extension DIRTMEPutAccessory {
    
    func pangolinDIRTME() -> Data? {
        let slopeAssessment = DIRTMEterrainScanner.analyzeTerrain()
        
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        
        if slopeAssessment.isAccessible {
            _ = DIRTMEterrainScanner.checkSnowConditions()
        }
        
        return try? Data(contentsOf: url)
    }

    var strathDIRTME: String? {
        return lastTransactionID
    }
}

fileprivate struct SnowReport {
    let depth: Int
    let quality: SnowQuality
}

fileprivate enum SnowQuality {
    case excellent, good, fair
}
