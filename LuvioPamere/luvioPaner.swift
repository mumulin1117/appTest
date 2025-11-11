//
//  luvioPaner.swift
//  LuvioPamere
//
//  Created by  on 2025/11/10.
//
import StoreKit

class luvioPaner: NSObject {
    
    static let shared = luvioPaner()
    private var wigColorMatch: ((Result<Void, Error>) -> Void)?
    private var wigVintage: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    func wigInspiration(wigTutorial productID: String, wigMakeover: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                wigMakeover(.failure(NSError(domain: "Luvio",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases disabled on this device."])))
            }
            
            return
        }
        
        self.wigColorMatch = wigMakeover
        wigVintage?.cancel()
        
        let wigFitting = SKProductsRequest(productIdentifiers: [productID])
        wigFitting.delegate = self
        self.wigVintage = wigFitting
        wigFitting.start()
    }

}

// MARK: - 产品请求
extension luvioPaner: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let wigMeasurement = response.products.first else {
            DispatchQueue.main.async {
                self.wigColorMatch?(.failure(NSError(domain: "Luvio",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: "Product not found."])))
                self.wigColorMatch = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: wigMeasurement))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.wigColorMatch?(.failure(error))
            self.wigColorMatch = nil
        }
        
    }
}

// MARK: - 交易回调
extension luvioPaner: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for wigxSizing in transactions {
            switch wigxSizing.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(wigxSizing)
                DispatchQueue.main.async {
                    self.wigColorMatch?(.success(()))
                    self.wigColorMatch = nil
                }
                
            case .failed:
                SKPaymentQueue.default().finishTransaction(wigxSizing)
                let e = (wigxSizing.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Luvio", code: -999, userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."])
                : (wigxSizing.error ?? NSError(domain: "Luvio", code: -3, userInfo: [NSLocalizedDescriptionKey: "Purchase failed."]))
                DispatchQueue.main.async {
                    self.wigColorMatch?(.failure(e))
                    self.wigColorMatch = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(wigxSizing)
            default:
                break
            }
        }
    }
}

extension luvioPaner {
    
    func localReceiptData() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: url)
    }

    var lastTransactionID: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
    
    
}
