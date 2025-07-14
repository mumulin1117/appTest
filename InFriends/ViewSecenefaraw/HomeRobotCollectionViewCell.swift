
import UIKit

class HomeRobotCollectionViewCell: UICollectionViewCell {
    
    lazy var bgImg:UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .gray
        img.layer.cornerRadius = 16
        img.layer.masksToBounds = true
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    lazy var containerView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.4)
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var longFormNarrativeLbgl:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textColor = UIColor.white
        label.text = "NanoBot"
        return label
    }()
    
    lazy var descLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.white
        label.text = "A tiny medical robot designed to ..."
        return label
    }()
    
    lazy var dhBtn:UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.setImage(UIImage(named: "icon_home_dh"), for: .normal)
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        btn.setTitle("   \("5Connectors") ", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        btn.layer.cornerRadius = 11
        btn.layer.masksToBounds = true
        return btn
    }()
    
    lazy var messageBtn:UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        btn.setImage(UIImage(named: "icon_home_xx"), for: .normal)
        btn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 0)
        btn.setTitle("    Message  ", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.layer.cornerRadius = 11
        btn.layer.masksToBounds = true
        return btn
    }()
    
    
    var model:RCulturalSystem?{
        didSet{
            if let m = model {
                self.bgImg.mySetImage(obj: m.pic)
                self.longFormNarrativeLbgl.text = m.nickname
                self.descLabel.text = m.desc
                self.dhBtn.setTitle("    \(m.connectorsNum)Connectors ", for: .normal)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        self.contentView.addSubview(bgImg)
        bgImg.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        self.contentView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-12)
        }
        
        containerView.addSubview(longFormNarrativeLbgl)
        longFormNarrativeLbgl.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-10)
            make.top.equalToSuperview().offset(11)
        }
        
        containerView.addSubview(descLabel)
        descLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-10)
            make.top.equalTo(longFormNarrativeLbgl.snp.bottom)
        }
        
        containerView.addSubview(dhBtn)
        dhBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.top.equalTo(descLabel.snp.bottom).offset(8)
            make.height.equalTo(22)
        }
        
        containerView.addSubview(messageBtn)
        messageBtn.snp.makeConstraints { make in
            make.left.equalTo(dhBtn.snp.right).offset(8)
            make.top.equalTo(dhBtn.snp.top)
            make.height.equalTo(dhBtn.snp.height)
            make.bottom.equalToSuperview().offset(-12)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

