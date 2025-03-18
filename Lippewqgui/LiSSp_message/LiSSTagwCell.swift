//
//  LiSSTagwCell.swift
//  Lippewqgui
//


import UIKit

class LiSSTagwCell: UITableViewCell {
    let buberryoleSSIP = UILabel.init()
    private var enImageSSIPOViol:UIImageView = UIImageView.init()

    private  let syingwhtaSSIP = UIView.init()
    
    
    var okayIsMinwe:Bool = true{
        didSet{
            enImageSSIPOViol.isHidden = true
            var SistertSSIp = [CGRect]()
            SistertSSIp.insert(CGRect.zero, at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
            SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
            
            buberryoleSSIP.textAlignment = okayIsMinwe ? .right : .left
            
            if okayIsMinwe && SistertSSIp.count > 1 {
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)
                buberryoleSSIP.textColor = .white
                syingwhtaSSIP.layer.maskedCorners  = [.layerMinXMinYCorner,.layerMaxXMinYCorner,
                                                      .layerMinXMaxYCorner]
                buberryoleSSIP.numberOfLines = 0
                syingwhtaSSIP.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
                var SistertSSIp = [CGRect]()
                 buberryoleSSIP.snp.remakeConstraints { make in
                     make.right.equalToSuperview().offset(-40)
                     make.top.equalToSuperview().offset(16 + 30)
                    
                     SistertSSIp.insert(CGRect.zero, at: 0)
                     SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                     SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                     SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

                     if SistertSSIp.count > 0 {
                         make.bottom.equalToSuperview().offset(-16 - 30)
                     }
                    
                     make.width.greaterThanOrEqualTo(80)
                     make.width.lessThanOrEqualTo(266)
                 }
                 
                 syingwhtaSSIP.snp.remakeConstraints { make in
                     SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                     SistertSSIp.insert(CGRect.init(x: 0, y: 19, width: 22, height: 44), at: 0)

                     make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
                     make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
                     if SistertSSIp.count > 0 {
                         make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
                     }
                     
                     make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
                 }
                return
            }
            let labeSiop = UILabel(frame: CGRect.init(x: 0, y: 20, width: 30, height: 0))
            labeSiop.text = "self.title"

            labeSiop.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            if enImageSSIPOViol.isHidden  {
                enImageSSIPOViol.addSubview(labeSiop)
            }

            labeSiop.textColor = contentView.backgroundColor
            
            buberryoleSSIP.textColor = .black
            
            buberryoleSSIP.numberOfLines = 0
            syingwhtaSSIP.backgroundColor = .white
            
            syingwhtaSSIP.layer.maskedCorners  = [.layerMinXMinYCorner,.layerMaxXMinYCorner,
                                                  .layerMaxXMaxYCorner]
            
           
            buberryoleSSIP.snp.remakeConstraints { make in
                SistertSSIp.insert(CGRect.zero, at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                make.left.equalToSuperview().offset(40)
                make.top.equalToSuperview().offset(16 + 30)
                if SistertSSIp.count > 0 {
                    make.bottom.equalToSuperview().offset(-16 - 30)
                }
                
                make.width.greaterThanOrEqualTo(80)
                make.width.lessThanOrEqualTo(266)
            }
            
            syingwhtaSSIP.snp.remakeConstraints { make in
                make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
                SistertSSIp.insert(CGRect.zero, at: 0)
                SistertSSIp.insert(CGRect.init(x: 0, y: 89, width: 12, height: 34), at: 0)
                make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
                make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
                if SistertSSIp.count > 0 {
                    make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
                }
                
            }
               
            
        }
    }
    
    private func ssuipCreaNet() {
        
        syingwhtaSSIP.snp.makeConstraints { make in
            make.right.equalTo(buberryoleSSIP.snp.right).offset(16)
            make.left.equalTo(buberryoleSSIP.snp.left).offset(-16)
            make.top.equalTo(buberryoleSSIP.snp.top).offset(-16)
            make.bottom.equalTo(buberryoleSSIP.snp.bottom).offset(16)
        }
        
    }
    
    private func ssuitreatNet() {
        self.backgroundColor = .clear
       
        buberryoleSSIP.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-40)
            make.top.equalToSuperview().offset(16 + 30)
            
            
            make.bottom.equalToSuperview().offset(-16 - 30)
            make.width.greaterThanOrEqualTo(80)
            make.width.lessThanOrEqualTo(266)
        }
       
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(syingwhtaSSIP)
        contentView.addSubview(buberryoleSSIP)
        buberryoleSSIP.textColor = .white
        enImageSSIPOViol.isHidden = true
        buberryoleSSIP.numberOfLines = 0
        syingwhtaSSIP.backgroundColor = UIColor(red: 0.92, green: 0.16, blue: 0.75, alpha: 1)
        
       
       
        syingwhtaSSIP.layer.masksToBounds = true
        
        ssuitreatNet()
        
        ssuipCreaNet()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
