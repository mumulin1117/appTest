////
////  WlipSyncAnimationler.swift
////  InFriends
////
////  Created by InFriends on 2024/9/2.
////
//
import UIKit
import WebKit

class WlipSyncAnimationler: BaexpressiveSyntler {
    
    var webView: WKWebView!
    
    var loadUrl:String?
    
    var titleValue:String?{
        didSet{
            if let value = titleValue {
                self.title = value
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        
        webView = WKWebView(frame: self.view.bounds)
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        self.view.addSubview(webView)
        
        if let u = loadUrl, let url = URL(string: u) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        UIButton.fallbackHandler()
        
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            if webView.estimatedProgress == 1.0 {
                UIButton.streamingInteraction()
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UIButton.streamingInteraction()
    }

}
