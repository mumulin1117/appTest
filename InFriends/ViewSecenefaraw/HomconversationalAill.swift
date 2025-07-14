

import UIKit

class HomconversationalAill: UITableViewCell {
    
    lazy var bgView:UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.165, green: 0.114, blue: 0.247, alpha: 1.0)
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var avatorImg:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 16
        img.layer.masksToBounds = true
        img.layer.borderColor = UIColor(red: 0.298, green: 0.729, blue: 0.729, alpha: 1.0).cgColor
        img.layer.borderWidth = 1
        return img
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.textColor = UIColor.white
        label.text = "赞美机器人"
        return label
    }()
    
    lazy var messageLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = UIColor.white
        label.text = "我可以回答宠物相关的问题、科学"
        return label
    }()

    lazy var timeLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor(red: 0.616, green: 0.549, blue: 0.686, alpha: 0.3)
        label.text = "10分钟前"
        return label
    }()

    var model:CcontextSystem?{
        didSet {
            if let m = model {
                self.avatorImg.mySetImage(obj: m.avatar)
                self.nameLabel.text = m.name
                self.messageLabel.text = m.messageContent
                self.timeLabel.text = formatDate(timespan: m.timespam)
            }
        }
    }
    
    func formatDate(timespan:Double)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd HH:mm"
        dateFormatter.timeZone = TimeZone.current

        let date = Date(timeIntervalSince1970: timespan)
        let formattedDate = dateFormatter.string(from: date)
        return formattedDate
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        self.contentView.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        self.contentView.addSubview(bgView)
        bgView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview().offset(-6)
            make.left.equalToSuperview().offset(24)
            make.right.equalToSuperview().offset(-24)
        }
        
        bgView.addSubview(avatorImg)
        avatorImg.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.centerY.equalToSuperview()
            make.size.equalTo(CGSizeMake(48, 48))
        }
        
        bgView.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.left.equalTo(avatorImg.snp.right).offset(8)
            make.top.equalTo(avatorImg.snp.top).offset(3)
        }
        
        bgView.addSubview(timeLabel)
        timeLabel.snp.makeConstraints { make in
            make.left.equalTo(nameLabel.snp.right).offset(10)
            make.right.equalToSuperview().offset(-18)
            make.centerY.equalTo(nameLabel.snp.centerY)
        }
        nameLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        bgView.addSubview(messageLabel)
        messageLabel.snp.makeConstraints { make in
            make.left.equalTo(nameLabel.snp.left)
            make.right.equalTo(timeLabel.snp.right)
            make.bottom.equalTo(avatorImg.snp.bottom).offset(-2)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


class NoMoreDataCell:UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = UIColor(red: 30.0/255.0,green: 20.0/255.0,blue: 46.0/255.0,alpha: 1.0)
        
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        label.textColor = UIColor(red: 0.475, green: 0.408, blue: 0.545, alpha: 1.0)
        label.numberOfLines = 0
        label.text = "History with the robot will be\ndisplayed here~"
        label.textAlignment = .center
        self.contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
