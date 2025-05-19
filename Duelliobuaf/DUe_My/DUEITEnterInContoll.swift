//
//  DUEITEnterInContoll.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/8.
//

import UIKit

class DUEITEnterInContoll:  DUELaterPageContirl,UITableViewDelegate,UITableViewDataSource {
    var relaoty:Int
    init(relaoty: Int) {
        self.relaoty = relaoty
        super.init(nibName: nil, bundle: nil)
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var shongindata:Array<Dictionary<String,String>>{
        if relaoty == 0 {
            return []
        }else{
            return Array(AppDelegate.follorrPAPA)
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        92
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shongindata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aslopj = self.shongindata[indexPath.row]
        
        let cellllf = tableView.dequeueReusableCell(withIdentifier: "DUEDRelaironsgcell", for: indexPath) as! DUEDRelaironsgcell
        cellllf.nameeLabel.text = aslopj["Due_Nopme"]
        cellllf.amingAvkoit.image = UIImage(named: aslopj["Due_avmter" ] ?? "")
        return cellllf
    }
    
    private lazy var nameeLabel: UILabel = {
        let laj = UILabel.init()
        if relaoty == 0 {
            laj.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fhaanns")
        }else{
            laj.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Fzobltlrosw")
        }
        
        laj.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        laj.textColor =  UIColor.white
        laj.textAlignment = .center
        return laj
    }()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let aslopj = shongindata[indexPath.row]
        self.navigationController?.pushViewController(DUECChieCenterCotnoer.init(dfoloower: aslopj), animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.shitMorengDUE.isHidden = true
        view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        self.shitMorengDUE.isHidden = true
        self.view.addSubview(tablDUE)
        tablDUE.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo( 66 + 18 + 25)
        }
        
        self.view.addSubview(nameeLabel)
        nameeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(self.shitBackDUE)
        }
        
       
    }
    
    
    private lazy var tablDUE: UITableView = {
        let tablDUE = UITableView.init(frame: .zero, style: .plain)
        tablDUE.backgroundColor = .clear
        tablDUE.separatorStyle = .none
        tablDUE.delegate = self
        tablDUE.dataSource = self
  
        tablDUE.register(DUEDRelaironsgcell.self, forCellReuseIdentifier: "DUEDRelaironsgcell")
        
        return tablDUE
    }()
   
   

}


class DUEDRelaironsgcell: UITableViewCell {
    lazy var nameeLabel: UILabel = {
        let laj = UILabel.init()
        
        laj.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
        laj.textColor =  UIColor.white
        return laj
    }()
    
    
    private lazy var sayneLabel: UILabel = {
        let laj = UILabel.init()
         laj.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "Cshheqczk")
         laj.layer.cornerRadius = 15
        laj.layer.borderColor = UIColor.white.cgColor
        laj.layer.borderWidth = 1.1
         laj.layer.masksToBounds = true
         laj.font = UIFont.systemFont(ofSize: 14, weight: .regular)
         laj.textColor =  UIColor.white
         laj.textAlignment = .center
        return laj
    }()
   
    let amingAvkoit = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        let bavkigo = UIView.init()
        bavkigo.backgroundColor = UIColor(red: 0.18, green: 0.15, blue: 0.17, alpha: 1)
        bavkigo.layer.cornerRadius = 16
        bavkigo.layer.masksToBounds = true
        
        self.contentView.addSubview(bavkigo)
        bavkigo.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(6)
            make.left.right.equalToSuperview().inset(12)
        }
        amingAvkoit.layer.cornerRadius = 24
        amingAvkoit.contentMode = .scaleAspectFill
        
        amingAvkoit.layer.masksToBounds = true
        self.backgroundColor = .clear
        
        bavkigo.addSubview(amingAvkoit)
        amingAvkoit.snp.makeConstraints { make in
            make.width.height.equalTo(48)
            make.leading.equalToSuperview().offset(13)
            
            make.centerY.equalToSuperview()
        }
        
        
        bavkigo.addSubview(nameeLabel)
        nameeLabel.snp.makeConstraints { make in
            make.leading.equalTo(amingAvkoit.snp.trailing).offset(12)
            make.centerY.equalToSuperview()
        }
        
        
        bavkigo.addSubview(sayneLabel)
        sayneLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-12)
            make.centerY.equalToSuperview()
            make.width.equalTo(80)
            make.height.equalTo(32)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
