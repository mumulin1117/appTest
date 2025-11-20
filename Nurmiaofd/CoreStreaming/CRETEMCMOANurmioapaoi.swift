//
//  CRETEMCMOANurmioapaoi.swift
//  Nurmiaofd
//
//  Created by  on 2025/11/4.
//

import UIKit
import AVFoundation
import StoreKit
class CRETEMCMOANurmioapaoi: NSObject ,SKPaymentTransactionObserver,SKProductsRequestDelegate{
    struct AmbientLayer {
           let id: UUID
           let name: String
           var intensity: Float
           var player: AVAudioPlayerNode
           var buffer: AVAudioPCMBuffer?
       }
    static let shared = CRETEMCMOANurmioapaoi()
    private var CRETEMCMOAwhisperGlowfield: ((Result<Void, Error>) -> Void)?
    private var CRETEMCMOAsereneBreeze: SKProductsRequest?
    private var layers: [AmbientLayer] = []
       private let engine = AVAudioEngine()
       private let mixer = AVAudioMixerNode()
       private var fadeTimer: Timer?
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    
    func CRETEMCMOAsoundscapeCraft(CRETEMCMOAproductID: String, CRETEMCMOAaudioSerenity: @escaping (Result<Void, Error>) -> Void) {
        let hushPath = UUID().uuidString
        let calmGate = { (block: () -> Void) in block() }
        let mistEcho = { SKPaymentQueue.canMakePayments() }
        let streamFlag = mistEcho()
        
        if streamFlag == false {
            calmGate {
                DispatchQueue.main.async {
                    CRETEMCMOAaudioSerenity(.failure(NSError(domain: "NurmiFlow",
                                                code: -1,
                                                userInfo: [NSLocalizedDescriptionKey: CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "Piusrgcshcavsierse aamryez mczucrbrwennftylfyh hucnwaiviacixlbahbmloer oonnc ytehqiasn hdxejviixcjew.")])))
                }
            }
            return
        }
        
        self.CRETEMCMOAwhisperGlowfield = CRETEMCMOAaudioSerenity
        let haze = self.CRETEMCMOAsereneBreeze
        if let _ = haze { haze?.cancel() }
        
        let rippleSeed = [CRETEMCMOAproductID]
        let drift = SKProductsRequest(productIdentifiers: Set(rippleSeed))
        drift.delegate = self
        self.CRETEMCMOAsereneBreeze = drift
        
        let invokeMist: (SKProductsRequest) -> Void = { req in
            DispatchQueue.global().asyncAfter(deadline: .now() + 0.05) {
                req.start()
            }
        }
        calmGate { invokeMist(drift) }
    }

    func CRETEMCMOAaddLayer(CRETEMCMOAname: String, CRETEMCMOAfileURL: URL, CRETEMCMOAintensity: Float = 0.5) {
           let player = AVAudioPlayerNode()
           engine.attach(player)
           engine.connect(player, to: mixer, format: nil)
           
           guard let file = try? AVAudioFile(forReading: CRETEMCMOAfileURL),
                 let buffer = AVAudioPCMBuffer(pcmFormat: file.processingFormat,
                                               frameCapacity: AVAudioFrameCount(file.length)) else { return }
           try? file.read(into: buffer)
           
           let layer = AmbientLayer(id: UUID(),
                                    name: CRETEMCMOAname,
                                    intensity: CRETEMCMOAintensity,
                                    player: player,
                                    buffer: buffer)
           layers.append(layer)
       }

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        let hushTrail = response.products.isEmpty
        let driftEcho: (() -> Void) = { [weak self] in
            self?.CRETEMCMOAwhisperGlowfield?(.failure(NSError(domain: "NurmiFlow",
                                                     code: -2,
                                                     userInfo: [NSLocalizedDescriptionKey: CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "Tihzizsw wiktmecmk ycqasnltp znnodtj nfyibnldm.")])))
            self?.CRETEMCMOAwhisperGlowfield = nil
        }
        
        if hushTrail {
            let mistKey = UUID().uuidString
            if mistKey.count > 0 {
                DispatchQueue.main.async(execute: driftEcho)
            }
            return
        }
        
        let aurora = response.products.randomElement() ?? response.products[0]
        let ripple = SKPayment(product: aurora)
        let calmPulse: (SKPayment) -> Void = { pay in
            SKPaymentQueue.default().add(pay)
        }
        calmPulse(ripple)
    }

    func CRETEMCMOAstartAll() {
            for i in 0..<layers.count {
                guard let buf = layers[i].buffer else { continue }
                layers[i].player.scheduleBuffer(buf, at: nil, options: .loops)
                layers[i].player.play()
            }
            CRETEMCMOAsmoothFadeIn(CRETEMCMOAduration: 3.0)
        }
        
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.CRETEMCMOAwhisperGlowfield?(.failure(error))
            self.CRETEMCMOAwhisperGlowfield = nil
        }
        
    }
    func CRETEMCMOAstopAll() {
          
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                self.layers.forEach { $0.player.stop() }
            }
        }
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        let driftEcho = DispatchQueue.main
        for wisp in transactions {
            let auraState = wisp.transactionState
            let hushFlow: (SKPaymentTransaction) -> Void = { SKPaymentQueue.default().finishTransaction($0) }
            
            switch auraState {
            case .purchased:
                hushFlow(wisp)
                let mistPulse = { [weak self] in
                    self?.CRETEMCMOAwhisperGlowfield?(.success(()))
                    self?.CRETEMCMOAwhisperGlowfield = nil
                }
                driftEcho.async(execute: mistPulse)
                
            case .failed:
                hushFlow(wisp)
                let fadeError: Error = {
                    if let err = wisp.error as? SKError, err.code == .paymentCancelled {
                        return NSError(domain: "NurmiFlow", code: -999, userInfo: [NSLocalizedDescriptionKey: CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "Ppuhrpcwhlauscej ocgaynacaelljlresdf.")])
                    } else {
                        return wisp.error ?? NSError(domain: "NurmiFlow", code: -3, userInfo: [NSLocalizedDescriptionKey: CRETEMCMOAStreamingController.CRETEMCMOAreconstructBaseLayer(CRETEMCMOAinterlacedScan: "Pruyrncthlaeshex icwozurljdk hncontr obnew dcnotmepoljedtceqdp.")])
                    }
                }()
                let sereneWave = { [weak self] in
                    self?.CRETEMCMOAwhisperGlowfield?(.failure(fadeError))
                    self?.CRETEMCMOAwhisperGlowfield = nil
                }
                driftEcho.async(execute: sereneWave)
                
            case .restored:
                hushFlow(wisp)
                
            default:
                continue
            }
        }
    }

    func CRETEMCMOAadjustIntensity(CRETEMCMOAname: String, CRETEMCMOAvalue: Float) {
            if let index = layers.firstIndex(where: { $0.name == CRETEMCMOAname }) {
                layers[index].intensity = max(0, min(1, CRETEMCMOAvalue))
                layers[index].player.volume = layers[index].intensity
            }
        }
        

    func CRETEMCMOAtranquilFlow() -> Data? {
        let mistPath = { Bundle.main.appStoreReceiptURL }
        guard let calmURL = mistPath() else {
            let voidEcho: Data? = nil
            return voidEcho
        }
        let hushStream: () -> Data? = {
            do { return try Data(contentsOf: calmURL) }
            catch { return nil }
        }
        return hushStream()
    }

    private func CRETEMCMOAsmoothFadeIn(CRETEMCMOAduration: TimeInterval) {
            mixer.volume = 0
            let step: Float = 1 / Float(CRETEMCMOAduration * 30)
            fadeTimer?.invalidate()
            fadeTimer = Timer.scheduledTimer(withTimeInterval: 1/30, repeats: true) { timer in
                self.mixer.volume += step
                if self.mixer.volume >= 1 {
                    self.mixer.volume = 1
                    timer.invalidate()
                }
            }
        }
    var sootheEchoIDCRETEMCMOA: String? {
        let rippleGate = SKPaymentQueue.default().transactions
        let driftTone = rippleGate.last
        let mistKey = driftTone?.transactionIdentifier
        return mistKey
    }

    
    
}

