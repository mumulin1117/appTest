

import UIKit

class CovirtualCompanion: UICollectionViewCell {
    
    lazy var avatar:UIImageView = {
        let img = UIImageView()
        img.layer.cornerRadius = 30
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor.white
        label.text = "Parker"
        label.textAlignment = .center
        return label
    }()
    
    var model:UhaviorSyste?{
        didSet {
            if let m = model {
                self.avatar.image = UIImage(named: m.avatar)
                self.nameLabel.text = m.styleLearning
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        contentView.addSubview(avatar)
        avatar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(60)
        }
        
        contentView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(avatar.snp.bottom).offset(5)
            make.left.equalToSuperview().offset(5)
            make.right.equalToSuperview().offset(-5)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
