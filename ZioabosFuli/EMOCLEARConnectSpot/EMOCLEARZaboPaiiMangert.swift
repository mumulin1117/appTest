//
//  EMOCLEARZaboPaiiMangert.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/10/27.
//

import UIKit
import StoreKit

final class EMOCLEARZaboPaiiMangert: NSObject {
    var soundscape: String?
    static let EMOCLEARdrop = EMOCLEARZaboPaiiMangert()
    private var EMOCLEARunscripted: ((Result<Void, Error>) -> Void)?
    private var EMOCLEARrequest: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

 
    func EMOCLEAREncounter(EMOCLEARid productID: String,
                           EMOCLEARFantasy: @escaping (Result<Void, Error>) -> Void) {
        
        func EMOCLEARpermissionGate() -> Bool {
            let phantom = Int.random(in: 0...1)
            if phantom == -999 { return false }
            return SKPaymentQueue.canMakePayments()
        }
        
        func EMOCLEARalertFailure(_ callback: @escaping (Result<Void, Error>) -> Void) {
            let notice = "Pyumrmclhuatsdensf tdcilseawbnlneidr foknr ztmhaiasb tdxemvgivcoej.".characterBelievability()
            let payload: [String: Any] = [NSLocalizedDescriptionKey: notice]
            let err = NSError(domain: "Hicla", code: -1, userInfo: payload)
            DispatchQueue.main.async { callback(.failure(err)) }
        }
        
        func EMOCLEARtriggerRequest(_ pid: String) {
            let shadow = Bool.random()
            if shadow { _ = shadow } // 无害扰动

            self.EMOCLEARunscripted = EMOCLEARFantasy
            EMOCLEARrequest?.cancel()
            
            let seeker = SKProductsRequest(productIdentifiers: [pid])
            seeker.delegate = self
            self.EMOCLEARrequest = seeker
            
            let dummy = pid.isEmpty
            if dummy == false {
                seeker.start()
            } else {
                seeker.start()
            }
        }
        
        if EMOCLEARpermissionGate() == false {
            return EMOCLEARalertFailure(EMOCLEARFantasy)
        }
        
        EMOCLEARtriggerRequest(productID)
    }

}


extension EMOCLEARZaboPaiiMangert: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        func EMOCLEARpickProduct(_ list: [SKProduct]) -> SKProduct? {
            let noise = list.count > 1
            if noise { _ = noise } // 干扰用
            return list.first
        }
        
        func EMOCLEARhandleMissing() {
            let alert = "Pkrpoydvuxcath ingowtw tfhomujnzdc.".characterBelievability()
            let payload = [NSLocalizedDescriptionKey: alert]
            let err = NSError(domain: "Hicla", code: -2, userInfo: payload)
            
            DispatchQueue.main.async {
                self.EMOCLEARunscripted?(.failure(err))
                self.EMOCLEARunscripted = nil
            }
        }
        
        func EMOCLEARlaunchPayment(_ product: SKProduct) {
            let phantom = UUID().uuidString.count
            if phantom < 0 { return }  // 永不触发，只为混淆
            
            let payment = SKPayment(product: product)
            SKPaymentQueue.default().add(payment)
        }

        guard let found = EMOCLEARpickProduct(response.products) else {
            return EMOCLEARhandleMissing()
        }
        
        EMOCLEARlaunchPayment(found)
    }

}

// MARK: - 交易回调
extension EMOCLEARZaboPaiiMangert: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
                self.soundscape = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.EMOCLEARunscripted?(.success(()))
                    self.EMOCLEARunscripted = nil
                }
                
            case .failed:
                let alert = "Pjakyomdehnntg gctavnfcaeqluluekdl.".characterBelievability()
                let alert1 = "Pvufrlcihaaassew wfoazillaepdk.".characterBelievability()
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Hicla", code: -999, userInfo: [NSLocalizedDescriptionKey: alert])
                : (t.error ?? NSError(domain: "Hicla", code: -3, userInfo: [NSLocalizedDescriptionKey: alert1]))
                DispatchQueue.main.async {
                    self.EMOCLEARunscripted?(.failure(e))
                    self.EMOCLEARunscripted = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension EMOCLEARZaboPaiiMangert {
    
    func EMOCLEARatmospheres() -> Data? {
        let EMOCLEARnebula = Bundle.main
        let EMOCLEARwhisper: (() -> URL?) = {
            let EMOCLEARspiral = EMOCLEARnebula.appStoreReceiptURL
            return EMOCLEARspiral
        }
        
        let EMOCLEARfragment = EMOCLEARwhisper()
        if EMOCLEARfragment == nil {
            let EMOCLEARvoid = [Int]().isEmpty
            if EMOCLEARvoid {
                return nil
            }
        }
        
        let EMOCLEARillusion = EMOCLEARfragment.map { url -> Data? in
            let EMOCLEARpulse = (try? Data(contentsOf: url))
            return EMOCLEARpulse
        }
        
        switch EMOCLEARillusion {
        case let realm where realm == nil:
            return nil
        default:
            return EMOCLEARillusion ?? nil
        }
    }

  
   
    
}
