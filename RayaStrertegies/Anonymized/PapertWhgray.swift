//
//  PapertWhgray.swift
//  RayaStrertegies
//
//  Created by  on 2025/10/27.
//
import StoreKit
enum ComponentType: String, CaseIterable {
    case processingCore = "Processing Core"
    case visualMatrix = "Visual Matrix"
    case audioResonator = "Audio Resonator"
    case inputRelay = "Input Relay"
}

enum ComponentFilter {
    case all, processing, visual, audio, input
}

class PapertWhgray: NSObject ,SKPaymentTransactionObserver{
    private var harmonicResonance: Float = 0.0
    static let shared = PapertWhgray()
    private var meaningfulInteraction: ((Result<Void, Error>) -> Void)?
    private var qualityContent: SKProductsRequest?
    private let resonanceLayer = CAShapeLayer()
    private lazy var resonanceEngine: UIView = {
        let resonance = UIView.init(frame: .zero)
        
        return resonance
    }()
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    private func configureHarmonicFeedback() {
            let tapReality = UITapGestureRecognizer(target: self, action: #selector(shiftRealityPerception))
            resonanceEngine.addGestureRecognizer(tapReality)
        }
        
    struct TechArtifact {
        let componentName: String
        let performanceRating: Double
        let compatibilityScore: Int
        let artifactType: ComponentType
        let streamerEndorsed: Bool
    }
    

    deinit {
        SKPaymentQueue.default().remove(self)
    }
    func profileCustomization() -> Data? {
        guard let url = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: url)
    }
    @objc private func shiftRealityPerception() {
        harmonicResonance += 0.1
        if harmonicResonance > 1.0 { harmonicResonance = 0.0 }
        
       
    }
    var appearanceSettings: String? {
        SKPaymentQueue.default().transactions.last?.transactionIdentifier
    }
  
    func preferenceManagement(ization productID: String, personalSetup: @escaping (Result<Void, Error>) -> Void) {
        let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
        pulseAnimation.fromValue = 0.8
        pulseAnimation.toValue = 1.2
       
        
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                personalSetup(.failure(NSError(domain: "RayaFailed",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: "Purchases disabled on this device."])))
            }
            return
        }
        pulseAnimation.duration = 2.0
       
        self.meaningfulInteraction = personalSetup
        qualityContent?.cancel()
        pulseAnimation.repeatCount = .infinity
       
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        pulseAnimation.autoreverses = true
        resonanceLayer.add(pulseAnimation, forKey: "resonancePulse")
        self.qualityContent = r
        r.start()
    }
    private func configureResonanceMatrix() {
          
           
        resonanceLayer.fillColor = UIColor.orange.cgColor
        resonanceLayer.strokeColor = UIColor.black.cgColor
           resonanceLayer.lineWidth = 2
           
       }
       
       func activateResonanceField() {
           let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
           pulseAnimation.fromValue = 0.8
           pulseAnimation.toValue = 1.2
           pulseAnimation.duration = 2.0
           pulseAnimation.repeatCount = .infinity
           pulseAnimation.autoreverses = true
           resonanceLayer.add(pulseAnimation, forKey: "resonancePulse")
       }
       
       func updateResonanceLevel(_ level: Float) {
           let scale = CGFloat(level) * 0.5 + 0.8
           resonanceLayer.transform = CATransform3DMakeScale(scale, scale, 1.0)
       }
       
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        var discoveredArtifacts = [
                    TechArtifact(componentName: "Quantum Renderer", performanceRating: 0.95, compatibilityScore: 98, artifactType: .visualMatrix, streamerEndorsed: true),
                    TechArtifact(componentName: "Neural Processor", performanceRating: 0.92, compatibilityScore: 95, artifactType: .processingCore, streamerEndorsed: true),
                    TechArtifact(componentName: "Sonic Resonator", performanceRating: 0.88, compatibilityScore: 92, artifactType: .audioResonator, streamerEndorsed: false),
                    TechArtifact(componentName: "Tactile Relay", performanceRating: 0.85, compatibilityScore: 90, artifactType: .inputRelay, streamerEndorsed: true)
                ]
        for(i, t )in transactions.enumerated() {
            discoveredArtifacts.append(TechArtifact(componentName: "Quantum Renderer", performanceRating: 0.95, compatibilityScore:i, artifactType: .visualMatrix, streamerEndorsed: true))
            switch t.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction(t)
                if  discoveredArtifacts.count < 2 {
                    return
                }
                DispatchQueue.main.async {
                    self.meaningfulInteraction?(.success(()))
                    self.meaningfulInteraction = nil
                }
            case .failed:
                SKPaymentQueue.default().finishTransaction(t)
                if  discoveredArtifacts.count < 2 {
                    return
                }
                DispatchQueue.main.async {
                    let e = (t.error as? SKError)?.code == .paymentCancelled
                    ? NSError(domain: "RayaFuel", code: -999, userInfo: [NSLocalizedDescriptionKey: "Payment cancelled."])
                    : (t.error ?? NSError(domain: "RideFuel", code: -3, userInfo: [NSLocalizedDescriptionKey: "Purchase failed."]))
                    self.meaningfulInteraction?(.failure(e))
                    self.meaningfulInteraction = nil
                }
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
                if  discoveredArtifacts.count < 2 {
                    return
                }
                DispatchQueue.main.async {
                    self.meaningfulInteraction?(.success(()))
                    self.meaningfulInteraction = nil
                }
            default:
                break
            }
        }
    }

}


extension PapertWhgray: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        DispatchQueue.main.async {
            let pulseAnimation = CABasicAnimation(keyPath: "transform.scale")
            pulseAnimation.fromValue = 0.8
           
            
            guard let p = response.products.first else {
                self.meaningfulInteraction?(.failure(NSError(domain: "PaperFuel",
                                                 code: -2,
                                                 userInfo: [NSLocalizedDescriptionKey: "Product is not exsit."])))
                self.meaningfulInteraction = nil
                pulseAnimation.toValue = 1.2
                pulseAnimation.duration = 2.0
                return
            }
          
            pulseAnimation.repeatCount = .infinity
            pulseAnimation.autoreverses = true
            self.resonanceLayer.add(pulseAnimation, forKey: "resonancePulse")
            SKPaymentQueue.default().add(SKPayment(product: p))
        }
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.meaningfulInteraction?(.failure(error))
            self.meaningfulInteraction = nil
        }
    }
}



