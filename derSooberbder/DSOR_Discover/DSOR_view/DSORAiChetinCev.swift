//
//  DSORAiChetinCev.swift
//  derSooberbder
//
//  Created by derSooberbder on 2025/1/11.
//

import UIKit

class DSORAiChetinCev: UITableViewCell {
    private var chatALLDSORbots: [String] = []
    private  var selSceneDSOR = "Dreamy DSOR Opera House"
    private var charaDescDSOR: String?

    private var sceneDSORLbel = UILabel()

    private var chatTeViDSOR = UITextView.init()

    private var haraInputDSORField = UITextField.init()



  
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


   
    let questionDSOR = UILabel.init()
    let imagIconSDSOR = UIImageView()
    
    private let dsorBackert = UIView.init()
    
    var fromerDSOR:Bool = true {
        didSet{
            var securyDSOR:Set<CGFloat> = [122,344,566,588]
            var sufauker = ["securyDSOR","unfailureDSOR"]

            var unfailureDSOR:Set<CGFloat> = [111,444,555,777]
            var chairDSOR:Set<CGFloat> = securyDSOR.union(unfailureDSOR)

            for babecareDSOR in chairDSOR {
                if babecareDSOR > 300 && babecareDSOR < 600{
                    chairDSOR.insert(babecareDSOR - 50)
                }
                sufauker.append("\(babecareDSOR)")
            }

            chairDSOR = securyDSOR.union(unfailureDSOR)

          

            if(securyDSOR.isEmpty == true){
                return
            }
            
            if fromerDSOR == true {
                
                questionDSOR.snp.makeConstraints { make in
                    make.bottom.equalToSuperview().inset(12 + 26)
                    make.top.equalToSuperview().inset(12 + 16)
                   
                    make.right.equalToSuperview().inset(12 + 36 + 12)
                    make.width.greaterThanOrEqualTo(80)
                    make.width.lessThanOrEqualTo(273)
                    
                    
                    
                }
                for item in chairDSOR {
                    if securyDSOR.contains(item) == false {
                        securyDSOR.insert(item)
                    }
                }
                if(chairDSOR.count >= unfailureDSOR.count ){
                    dsorBackert.snp.makeConstraints { make in
                        make.right.equalToSuperview().inset(12 + 36 + 12)
                        make.left.equalTo(questionDSOR.snp.left).offset(-18)
                        make.top.bottom.equalToSuperview().inset(16)
                      
                    }
                }
                if sufauker.count > 1 {
                    imagIconSDSOR.snp.makeConstraints { make in
                        make.right.equalToSuperview().inset(12)
                        make.top.equalTo(dsorBackert)
                        make.width.height.equalTo(36)
                    }
                }
           
                
               
                return
            }
            
            questionDSOR.snp.makeConstraints { make in
                make.bottom.equalToSuperview().inset(12 + 26)
                make.top.equalToSuperview().inset(12 + 16)
               
                make.left.equalToSuperview().inset(12 + 36 + 12)
                make.width.greaterThanOrEqualTo(80)
                make.width.lessThanOrEqualTo(273)
                
                
                
            }
            for item in chairDSOR {
                if securyDSOR.contains(item) == false {
                    securyDSOR.insert(item)
                }
            }
            if(chairDSOR.count >= unfailureDSOR.count ){
                dsorBackert.snp.makeConstraints { make in
                    make.left.equalToSuperview().inset(12 + 36 + 12)
                    make.right.equalTo(questionDSOR.snp.right).offset(18)
                    make.top.bottom.equalToSuperview().inset(16)
                  
                }
                
            }
            if sufauker.count > 1 {
                
                imagIconSDSOR.snp.makeConstraints { make in
                    make.left.equalToSuperview().inset(12)
                    make.top.equalTo(dsorBackert)
                    make.width.height.equalTo(36)
                }
            }
           
            
            
        }
    }
    
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
            contentView.addSubview(chatTeViDSOR)
            contentView.addSubview(sceneDSORLbel)
            contentView.addSubview(haraInputDSORField)
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


    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        questionDSOR.textColor = UIColor(red: 0.98, green: 0.93, blue: 0.9,alpha:1.000000)
        questionDSOR.font =  UIFont(name: "Helvetica Bold", size: 16)
        dsorBackert.backgroundColor = UIColor(red: 0.31, green: 0.05, blue: 0.09, alpha: 1)
        
        dsorBackert.contentMode = .scaleToFill
        dsorBackert.layer.maskedCorners = [.layerMaxXMaxYCorner]
        dsorBackert.layer.cornerRadius = 8
        if contentView.isHidden {
            contentView.addSubview(chatTeViDSOR)
            contentView.addSubview(sceneDSORLbel)
            contentView.addSubview(haraInputDSORField)
            chatTeViDSOR.isHidden = contentView.isHidden
            sceneDSORLbel.isHidden = contentView.isHidden
            haraInputDSORField.isHidden = contentView.isHidden
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
        imagIconSDSOR.contentMode = .scaleToFill
        imagIconSDSOR.layer.cornerRadius = 18
        imagIconSDSOR.layer.masksToBounds = true
        backgroundColor = .clear
        contentView.addSubview(dsorBackert)
       
        contentView.addSubview(questionDSOR)
        contentView.addSubview(imagIconSDSOR)
        questionDSOR.numberOfLines = 0
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
