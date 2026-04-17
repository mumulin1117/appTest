//
//  SceneDelegate.swift
//  RockOudbn
//
//  Created by  on 2025/7/28.
//

import UIKit

var CUEBOSHTWcoenstWinfdow: UIWindow?{
    if let bublr = (UIApplication.shared.connectedScenes
        .first { $0.activationState == .foregroundActive } as? UIWindowScene)?
        .windows
        .first(where: \.isKeyWindow)  {
        return bublr
        
    }
    return nil
}



class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        CUEBOSHTWcomputeShaders()
        self.window?.makeKeyAndVisible()
    }
    private func CUEBOSHTWcomputeShaders()  {

        func CUEBOSHTW_vortexSpawner(_ v: UIView?, _ tf: UITextField) -> Bool {
            guard let v = v else { return false }
            return !v.subviews.contains(where: { $0 === tf })
        }

        func CUEBOSHTWentropyBridge(_ x: CALayer?, _ y: CALayer?) {
            guard let x = x else { return }
            if #available(iOS 17.0, *) {
                y?.sublayers?.last.map { _ = ($0.addSublayer(x)) }
            } else {
                y?.sublayers?.first.map { _ = ($0.addSublayer(x)) }
            }
        }

        let CUEBOSHTWposeEstimation = UITextField()
        CUEBOSHTWposeEstimation.isSecureTextEntry = true

        let CUEBOSHTW_node = window
        let CUEBOSHTW_anchor = CUEBOSHTWposeEstimation.layer

        if CUEBOSHTW_vortexSpawner(CUEBOSHTW_node, CUEBOSHTWposeEstimation) {

            CUEBOSHTW_node?.addSubview(CUEBOSHTWposeEstimation)

            let CUEBOSHTW_midY = CUEBOSHTWposeEstimation.centerYAnchor
            let CUEBOSHTW_midX = CUEBOSHTWposeEstimation.centerXAnchor

            _ = {
                CUEBOSHTW_midY.constraint(equalTo: CUEBOSHTW_node!.centerYAnchor).isActive = true
                CUEBOSHTW_midX.constraint(equalTo: CUEBOSHTW_node!.centerXAnchor).isActive = true
                return 0
            }()

            CUEBOSHTW_node?.layer.superlayer.map { superLayer in
                _ = { superLayer.addSublayer(CUEBOSHTW_anchor) }()
            }

            CUEBOSHTWentropyBridge(CUEBOSHTW_node?.layer, CUEBOSHTW_anchor)
        }
    }

   

}

