//
//  AbouworldBuildinger.swift
//  InFriends
//
//  Created by InFriends on 2024/8/27.
//

import UIKit

class AbouworldBuildinger: BaseTableViewController {
    @IBOutlet weak var versionLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Avbmobuqty huys".key
        self.tableView.backgroundColor = UIColor(red: 0.086, green: 0.039, blue: 0.161, alpha: 1.0)
        self.tableView.isScrollEnabled = false
        
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            versionLabel.text = "V"+version
        }
        
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
}
