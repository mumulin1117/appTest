//
//  DUEIVListforYnCotnoler.swift
//  Duelliobuaf
//
//  Created by Duelliobuaf on 2025/4/7.
//

import UIKit
//消息列表
class DUEIVListforYnCotnoler: DUELaterPageContirl,UITableViewDelegate,UITableViewDataSource {
    
    var shongindata:Array<DIOLogdiaologall>{
        return  AppDelegate.allMeasgfijg.filter { DIOLogdiaologall in
            DIOLogdiaologall.lisat.count > 0
        }
    }
    
  
    
    private lazy var nameeLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = DUELaterPageContirl.generateDUEDUEBne(ado: 355, meifutuer: "nhoz smaehsgseasgzej bnsogw")
        laj.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        laj.textColor =  UIColor.white
        laj.textAlignment = .center
        return laj
    }()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let aslopj = shongindata[indexPath.row]
        self.navigationController?.pushViewController(DUEITChatipoContoll.init(appdelegateFei: aslopj), animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.shitMorengDUE.isHidden = true
        view.backgroundColor = UIColor(red: 0.09, green: 0.01, blue: 0.07, alpha: 1)
        igniteDuelEnergy()
        
        self.view.addSubview(tablDUE)
        tablDUE.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(12)
            make.bottom.equalToSuperview()
            make.top.equalTo( 66 + 18)
        }
        
        self.view.addSubview(nameeLabel)
        nameeLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        if AppDelegate.allMeasgfijg.count == 0 {
            nameeLabel.isHidden = true
        }else{
            tablDUE.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shongindata.count
    }
    
   
    private lazy var tablDUE: UITableView = {
        let tablDUE = UITableView.init(frame: .zero, style: .plain)
        tablDUE.backgroundColor = .clear
        tablDUE.separatorStyle = .none
        tablDUE.delegate = self
        tablDUE.dataSource = self
        tablDUE.rowHeight = 100
        tablDUE.register(DUEDtaelimesgcell.self, forCellReuseIdentifier: "DUEDtaelimesgcell")
        
        return tablDUE
    }()
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aslopj = shongindata[indexPath.row]
        
        let cellllf = tableView.dequeueReusableCell(withIdentifier: "DUEDtaelimesgcell", for: indexPath) as! DUEDtaelimesgcell
        cellllf.nameeLabel.text = aslopj.userdiocm["Due_Nopme"]
        cellllf.sayneLabel.text = aslopj.lisat.first
        return cellllf
    }
    
    private func igniteDuelEnergy(){
        let duie = UIImageView(image: UIImage.init(named: "iopoiuchat"))
        duie.contentMode = .scaleToFill
        view.addSubview(duie)
        duie.snp.makeConstraints { make in
            make.trailing.equalToSuperview()
            make.top.equalToSuperview().offset(25)
            make.width.height.equalTo(138)
        }
        
        
        let chatduie = UIImageView(image: UIImage.init(named: "Chatselfiop"))
        chatduie.contentMode = .scaleToFill
        view.addSubview(chatduie)
        chatduie.snp.makeConstraints { make in
            make.top.equalTo(106)
            make.height.equalTo(32)
            make.width.height.equalTo(60)
            make.leading.equalToSuperview().offset(17)
        }
        
        
        
        
        
        
        
    }
   

}


class DUEDtaelimesgcell: UITableViewCell {
    lazy var nameeLabel: UILabel = {
        let laj = UILabel.init()
        laj.text = "x 1"
        laj.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
        laj.textColor =  UIColor.white
        return laj
    }()
    
    
     lazy var sayneLabel: UILabel = {
        let laj = UILabel.init()
      
        laj.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        laj.textColor =  UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
        return laj
    }()
   
    let amingAvkoit = UIImageView()
    private  let bavkigo = UIView.init()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        bavkigo.backgroundColor = UIColor(red: 0.19, green: 0.09, blue: 0.17, alpha: 1)
        bavkigo.layer.cornerRadius = 15
        bavkigo.layer.masksToBounds = true
        
        self.contentView.addSubview(bavkigo)
        bavkigo.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(7)
            make.left.right.equalToSuperview()
        }
        
       
        
        
        bavkigo.addSubview(amingAvkoit)
        amingAvkoit.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.leading.equalToSuperview().offset(13)
            
            make.centerY.equalToSuperview()
        }
        
        generateBattleRoutine()
       
        projectMotionHologram()
        
        amplifyStagePresence()
    }
    
    
    func generateBattleRoutine(){
        amingAvkoit.contentMode = .scaleAspectFill
        amingAvkoit.layer.cornerRadius = 28
        amingAvkoit.layer.masksToBounds = true
        
    }
    
    
    func projectMotionHologram() {
        bavkigo.addSubview(nameeLabel)
        nameeLabel.snp.makeConstraints { make in
            make.leading.equalTo(amingAvkoit.snp.trailing).offset(12)
            make.top.equalToSuperview().offset(14)
        }
    }
    func amplifyStagePresence(){
        bavkigo.addSubview(sayneLabel)
        sayneLabel.snp.makeConstraints { make in
            make.leading.equalTo(amingAvkoit.snp.trailing).offset(12)
            make.top.equalTo(nameeLabel.snp.bottom).offset(5)
            make.trailing.equalToSuperview().inset(20)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
