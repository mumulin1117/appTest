
import UIKit

class MypitchProfile: UICollectionViewCell {
    
    lazy var topImg:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .gray
        return img
    }()
    
    lazy var fewShotLearning:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor.white
        label.text = "故事大师"
        return label
    }()
    
    lazy var descLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
        label.text = "故事大师是您创作悬疑、惊悚和奇幻小说的终"
        label.numberOfLines = 2
        return label
    }()
    
    lazy var avatarImg:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .gray
        img.layer.cornerRadius = 12
        img.layer.masksToBounds = true
        return img
    }()
    
    lazy var paraphracourse:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(red: 0.702, green: 0.478, blue: 1.0, alpha: 1.0)
        label.text = "@Carlson"
        return label
    }()
    
    var model:RCulturalSystem?{
        didSet{
            if let m = model {
                self.topImg.mySetImage(obj: m.pic)
                fewShotLearning.text = m.nickname
                descLabel.text = m.desc
                avatarImg.mySetImage(obj: m.userHeader)
                paraphracourse.text = m.paraphracourse
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        self.layer.cornerRadius = 16
        self.layer.masksToBounds = true
        
        self.contentView.addSubview(topImg)
        let itemWidth = (UIScreen.main.bounds.size.width - 60)/2
        topImg.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(itemWidth)
        }
        
        self.contentView.addSubview(fewShotLearning)
        fewShotLearning.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(topImg.snp.bottom).offset(10)
        }
        
        self.contentView.addSubview(descLabel)
        self.descLabel.snp.makeConstraints { make in
            make.left.equalTo(fewShotLearning.snp.left)
            make.right.equalTo(fewShotLearning.snp.right)
            make.top.equalTo(fewShotLearning.snp.bottom).offset(5)
        }
        
        self.contentView.addSubview(avatarImg)
        avatarImg.snp.makeConstraints { make in
            make.left.equalTo(fewShotLearning.snp.left)
            make.top.equalTo(fewShotLearning.snp.bottom).offset(42)
            make.size.equalTo(CGSizeMake(24, 24))
        }
        
        self.contentView.addSubview(paraphracourse)
        paraphracourse.snp.makeConstraints { make in
            make.left.equalTo(avatarImg.snp.right).offset(7)
            make.centerY.equalTo(avatarImg.snp.centerY)
            make.right.equalToSuperview().offset(-10)
        }
        paraphracourse.setContentHuggingPriority(.defaultLow, for: .horizontal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension UIImageView {
    func mySetImage(obj:String){
        if obj.count > 20 {
            guard let imageData = Data(base64Encoded: obj) else {
                return
            }
            
            guard let image = UIImage(data: imageData) else {
                return
            }
            self.image = image
            
        }else{
            self.image = UIImage(named: obj)
        }
    }
}
