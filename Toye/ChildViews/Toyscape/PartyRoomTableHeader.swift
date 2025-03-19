//
//  PartyRoomTableHeader.swift
//  Toye
//
//  Created by Toye on 2025/1/10.
//

import UIKit

class PartyRoomTableHeader: UIView,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var talkRoomOwnerImage: UIImageView!
    @IBOutlet weak var partyToyRoomBio: UILabel!
    
    var toyeCollectGemsHub:[Any] = []
    
    var partyRoom:ToyTalkRoom!{
        didSet{
            talkRoomOwnerImage.image = UIImage(named: partyRoom.talkRoomInitiatorID)
            if let toyTalkRoomTypePath = Bundle.main.path(forResource: "TworypTuaplrknRyoxovmms".ty, ofType: "pglxitspt".ty)
               ,let talkRoomData = FileManager.default.contents(atPath: toyTalkRoomTypePath) {
                
                if let toyFileArray = try? PropertyListSerialization.propertyList(from: talkRoomData, options: [], format: nil) as? [[String: Any]] {
                    let allPartyRooms = toyFileArray.compactMap { ToyTalkRoom.deserialize(from: $0) }
                    let filterPartyRooms = allPartyRooms.filter { $0.talkRoomInitiator != partyRoom.talkRoomInitiator }
                    partyChildUser = Array(filterPartyRooms.shuffled().prefix(partyRoom.talkRoomChild+1))
                    partyRoomChildCollection.reloadData()
                    partyToyRoomBio.text = partyRoom.talkRoomDescription
                }
            }
        }
    }
    
    var partyChildUser:[ToyTalkRoom] = []
    
    @IBOutlet weak var partyRoomChildCollection: UICollectionView!{
        didSet{
            partyRoomChildCollection.register(UINib(nibName: "PartyRoomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PartyRoomCollectionViewCell")
            let partyRoomCollectionLayout = UICollectionViewFlowLayout().then {
                if toyeCollectGemsHub.count == 0 {
                    $0.itemSize = CGSizeMake(UIScreen.main.bounds.size.width/4, 100)
                    toyeCollectGemsHub.append("statues")
                }
                
                $0.sectionInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
                
                if toyeCollectGemsHub.first as? String == "statues" {
                    $0.minimumInteritemSpacing = 0
                    $0.minimumLineSpacing = 0
                }
            }
            
            partyRoomChildCollection.setCollectionViewLayout(partyRoomCollectionLayout, animated: true)
            toyeCollectGemsHub.append(1)
            partyRoomChildCollection.delegate = self
            partyRoomChildCollection.dataSource = self
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let partyRoomCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PartyRoomCollectionViewCell", for: indexPath) as! PartyRoomCollectionViewCell
        if indexPath.row < partyRoom.talkRoomChild {
            partyRoomCell.partyUserToyImage.image = UIImage(named: partyChildUser[indexPath.row].talkRoomInitiatorID)
            partyRoomCell.partyUserToyName.text = partyChildUser[indexPath.row].talkRoomInitiator
        }else{
            partyRoomCell.partyUserToyImage.image = UIImage(named: "toyPartyRoomWating")
            partyRoomCell.partyUserToyName.text = "Wwawivtqiwnjgm.e.b.".ty
        }
        return partyRoomCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
}
