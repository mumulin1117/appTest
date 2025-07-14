
import UIKit

class HoreferenceSys: UITableViewHeaderFooterView {
    
    var btnClosure:(()->())?
    
    lazy var aiLabel:UILabel = {
        let aiLabel = UILabel()
        aiLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        aiLabel.textColor = UIColor.white
        aiLabel.text = "Mqyz pAiI".key
        aiLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return aiLabel
    }()
    
    lazy var newConverBot:UIButton = {
        let goalOriented = UIButton.init(type: .custom)
        goalOriented.setImage(UIImage(named: "icon_xj"), for: .normal)
        goalOriented.setTitle(" Create ", for: .normal)
        goalOriented.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        goalOriented.setTitleColor(UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0), for: .normal)
        goalOriented.interfaceWithADesign {[weak self] sender in
            self?.btnClosure?()
        }
        return goalOriented
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        self.backgroundView = {
            let v = UIView()
            v.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
            return v
        }()
        self.contentView.addSubview(aiLabel)
        aiLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(20)
        }
        
        self.contentView.addSubview(newConverBot)
        newConverBot.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.centerY.equalTo(aiLabel.snp.centerY)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
