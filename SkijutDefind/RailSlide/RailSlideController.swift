//
//  RailSlideController.swift
//  SkijutDefind
//
//  Created by SkijutDefind on 2025/6/24.
//

import UIKit

class RailSlideController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var sideBevel = Array<Dictionary<String,Any>>()
    @IBOutlet weak var pillowLineView: UIActivityIndicatorView!
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        navigateTo(ResortBoundController.init(secretSpot: .avalancheWhisper, localsOnly: "\(sideBevel[indexPath.row]["flatSpin"] ?? "")"))
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sideBevel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let RailSlideCell = tableView.dequeueReusableCell(withIdentifier: "RailSlideCell", for: indexPath) as! RailSlideCell
        
        let adcleb = sideBevel[indexPath.row]
        
        RailSlideCell.forwardLean.implementation(skillom: adcleb["frontflip"] as? String)
        
        RailSlideCell.riserPlate.text = adcleb["backflip"] as? String
        
        
        RailSlideCell.impactZone.text = adcleb["tripleCork"] as? String
        RailSlideCell.spineTransfer.text = self.cupCrystal(adcleb["pillowLine"] as? Int ?? 0)
        return RailSlideCell
    }
    
    @IBOutlet weak var userceneter: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        persistentSlab.backgroundColor = .clear
        persistentSlab.showsVerticalScrollIndicator = false
        persistentSlab.delegate = self
        persistentSlab.dataSource = self
        let riskView = AvalancheRiskView(riskLevel: .high)
        riskView.translatesAutoresizingMaskIntoConstraints = false
        
        
        persistentSlab.register(UINib.init(nibName: "RailSlideCell", bundle: nil), forCellReuseIdentifier: "RailSlideCell")
        persistentSlab.rowHeight = 120
        persistentSlab.separatorStyle = .singleLine
        persistentSlab.separatorColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
    }
    
    @IBOutlet weak var refoUjhgfk: UILabel!
    @IBOutlet weak var persistentSlab: UITableView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        flexPattern()
    }
    
    func flexPattern()  {
        pillowLineView.startAnimating()
        let riskView = AvalancheRiskView(riskLevel: .high)
        riskView.translatesAutoresizingMaskIntoConstraints = false
        
        BackcountryAPISender.sendMountainRequest(trailPath: "/uqkkghyupmgtz/hjrkqug", payload: ["kickerLine":"95578703"]) {zipperLine in
            self.pillowLineView.stopAnimating()
            guard let response = zipperLine as? [String: Any] else {
               
                return
                
            }
            
            riskView.isHidden = true
            self.view.addSubview(riskView)
            guard let detail = response[RailSlideCell.untangleMountainR(isMultiple: 2, TrailMarkers: "deaftfa")] as? Array<[String: Any]> else {
                return
            }
                
            self.sideBevel = detail.compactMap { item in
                
                let dic = (item["huck"] as? [[String: Any]])?.first ?? [:]
                return dic
            }
            
            self.persistentSlab.reloadData()
            if self.sideBevel.count == 0{
                self.refoUjhgfk.isHidden = false
            }else{
                self.refoUjhgfk.isHidden = true
            }
        
        }
    }
}


extension UIViewController{
    func cupCrystal(_ milliseconds: Int) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(milliseconds)/1000)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: date)
    }
}
