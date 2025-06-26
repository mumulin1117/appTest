//
//  BamboozleByte.swift
//  Apfocsee
//
//  Created by Apfocsee on 2025/4/10.
//

import UIKit

class BamboozleByte: UIViewController {

    @IBOutlet weak var oopsgotImageview: UIImageView!
    private var fakeLoadingProgress: Double = 0 // 用于搞笑假进度条
    private var hasTriggeredBankJoke = false // 是否触发银行来电彩蛋
    private var resultAPCA:Bool = false
    init( resultAPCA: Bool) {
       
        self.resultAPCA = resultAPCA
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("phantomEmojiRegistry")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if resultAPCA == true {
            oopsgotImageview.image = UIImage(named: "focce_spot on")
        }else{
            oopsgotImageview.image = UIImage(named: "fooce_Oops")
        }
    }


   

    @IBAction func loagi(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
