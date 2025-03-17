//
//  DSORHomeoomTopr.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit

class DSORHomeoomTopr: UIView {
    let phortoDSOR = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        let berVfhuDSOR = UIImageView(image: UIImage.init(named: "imgDSORbg"))
        berVfhuDSOR.contentMode = .scaleToFill
        self.addSubview(berVfhuDSOR)
        berVfhuDSOR.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        phortoDSOR.contentMode = .scaleAspectFill
        phortoDSOR.layer.cornerRadius = 5
        phortoDSOR.layer.masksToBounds = true
        
        self.addSubview(phortoDSOR)
        phortoDSOR.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.height.equalTo(38)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class DSORHomeRobertVire: UIView {
    let robercentHEaderDSOR = UIImageView()
    let robertnameDSOR = UILabel.init()
    
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



    private func changeDPudingDESORScene(_ sender: UISegmentedControl,ifaddDSOR:Bool) {
        switch sender.selectedSegmentIndex {
        case 0:
            selSceneDSOR = "Dreamy DSOR Opera House"
        case 1:
            selSceneDSOR = "Mysterious Forest  DSOR Opera House"
        case 2:
            selSceneDSOR = "Luxurious Classical DSOR Opera House"
        default:
            break
        }
        
        sceneDSORLbel.text = "current scene: \(selSceneDSOR)" 
        
        chatTeViDSOR.text += "\nChangened: \(selSceneDSOR)" 
        if ifaddDSOR {
           
            chatTeViDSOR.isHidden = ifaddDSOR
            sceneDSORLbel.isHidden = ifaddDSOR
            haraInputDSORField.isHidden = ifaddDSOR
        }
        
        chatALLDSORbots.append(chatTeViDSOR.text)
        chatALLDSORbots.append(sceneDSORLbel.text ?? "dsorsure\(selSceneDSOR.count)")
        chatALLDSORbots.append(haraInputDSORField.text ?? "dsorpure\(selSceneDSOR.count)")
        
        selSceneDSOR.append("dsorsure\(selSceneDSOR.count + 1)")
        
        if charaDescDSOR == nil {
            charaDescDSOR = self.selSceneDSOR
        }
        
        if charaDescDSOR?.count ?? 0 > 12 {
            charaDescDSOR?.removeLast()
        }
        
    }


    private func engageWithChatbot(description: String,colowerDSOR:UIColor) {
        let chatbotResponse = "Chatbot: Your character '\(description)' sounds very interesting! Please tell me more about the storyline. "
        chatTeViDSOR.text += "\n\(chatbotResponse)"
        
        chatTeViDSOR.textColor = colowerDSOR
        sceneDSORLbel.textColor = colowerDSOR
        haraInputDSORField.textAlignment = .center
        sceneDSORLbel.textAlignment = .center
        chatTeViDSOR.textAlignment = .center
        haraInputDSORField.textColor = colowerDSOR
        
        chatTeViDSOR.alpha = 0
        sceneDSORLbel.alpha = 0
        haraInputDSORField.alpha = 0
    }



    override init(frame: CGRect) {
        super.init(frame: frame)
       
        
        let berVfhuDSOR = UIImageView(image: UIImage.init(named: "homeretbtgi"))
        berVfhuDSOR.contentMode = .scaleToFill
        addSubview(berVfhuDSOR)
        berVfhuDSOR.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.height.equalTo(54)
            make.centerX.equalToSuperview()
        }
        
        robercentHEaderDSOR.contentMode = .scaleToFill
        robercentHEaderDSOR.layer.cornerRadius = 21
        robercentHEaderDSOR.layer.masksToBounds = true
        
        robertnameDSOR.textColor = UIColor(red: 1, green: 0.96, blue: 0.9, alpha: 1)
        robertnameDSOR.font = UIFont(name: "KAGE-Freebies Black", size: 14)
        robertnameDSOR.textAlignment = .center
        robercentHEaderDSOR.layer.borderWidth = 1
        robercentHEaderDSOR.layer.borderColor = UIColor(red: 0.95, green: 0.85, blue: 0.63, alpha: 1).cgColor
        addSubview(robercentHEaderDSOR)
        robercentHEaderDSOR.snp.makeConstraints { make in
            make.width.height.equalTo(42)
            make.center.equalTo(berVfhuDSOR)
        }
        
        addSubview(robertnameDSOR)
        robertnameDSOR.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(berVfhuDSOR.snp.bottom).offset(-3)
            make.leading.trailing.equalToSuperview().inset(2)
        }
        
        
        
    }
    
    required  init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
