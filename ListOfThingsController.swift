//
//  ListOfThingsController.swift
//  TableViewCellExample
//
//  Created by Sridevi Panyam on 8/11/18.
//  Copyright © 2018 SP. All rights reserved.
//

import UIKit

class ListOfThingsController: UIViewController {
    
    @IBOutlet weak var ListOfThingsTableView: UITableView!
    var things: [ListOfThings] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ListOfThingsTableView.delegate = (self as UITableViewDelegate)
        ListOfThingsTableView.dataSource = (self as UITableViewDataSource)
        
        things = createArray()
       
    }
    
    func createArray() -> [ListOfThings] {
    
        var tempArray: [ListOfThings] = []
        
        let thing1 = ListOfThings(thingImage: #imageLiteral(resourceName: "bowl"), thingDescription: "Bowl", imageAlignment: "Left" )
        let thing2 = ListOfThings(thingImage: #imageLiteral(resourceName: "chair1"), thingDescription: "Chair1", imageAlignment: "Right")
        let thing3 = ListOfThings(thingImage: #imageLiteral(resourceName: "chair2"), thingDescription: "Chair2", imageAlignment: "Center")
        let thing4 = ListOfThings(thingImage: #imageLiteral(resourceName: "chair3"), thingDescription: "Chair3", imageAlignment: "Left")
        let thing5 = ListOfThings(thingImage: #imageLiteral(resourceName: "chair4"), thingDescription: "Chair4", imageAlignment: "Right")
        let thing6 = ListOfThings(thingImage: #imageLiteral(resourceName: "coat"), thingDescription: "Coat", imageAlignment: "Center")
        let thing7 = ListOfThings(thingImage: #imageLiteral(resourceName: "cup1"), thingDescription: "Cup1", imageAlignment: "Left")
        let thing8 = ListOfThings(thingImage: #imageLiteral(resourceName: "cup2"), thingDescription: "Cup2", imageAlignment: "Right")
        let thing9 = ListOfThings(thingImage: #imageLiteral(resourceName: "cup3"), thingDescription: "Cup3", imageAlignment: "Center")
        let thing10 = ListOfThings(thingImage: #imageLiteral(resourceName: "cup4"), thingDescription: "Cup4", imageAlignment: "Left")
        let thing11 = ListOfThings(thingImage: #imageLiteral(resourceName: "fork1"), thingDescription: "Fork", imageAlignment: "Right")
        let thing12 = ListOfThings(thingImage: #imageLiteral(resourceName: "hat"), thingDescription: "Hat", imageAlignment: "Center")
        let thing13 = ListOfThings(thingImage: #imageLiteral(resourceName: "jug1"), thingDescription: "Jug", imageAlignment: "Left")
        let thing14 = ListOfThings(thingImage: #imageLiteral(resourceName: "kettle"), thingDescription: "Kettle", imageAlignment: "Right")
        let thing15 = ListOfThings(thingImage: #imageLiteral(resourceName: "knife1"), thingDescription: "Knife", imageAlignment: "Center")
        let thing16 = ListOfThings(thingImage: #imageLiteral(resourceName: "meal"), thingDescription: "Meal1", imageAlignment: "Left")
        let thing17 = ListOfThings(thingImage: #imageLiteral(resourceName: "meal2"), thingDescription: "Meal2", imageAlignment: "Right")
        let thing18 = ListOfThings(thingImage: #imageLiteral(resourceName: "meal3"), thingDescription: "Meal3", imageAlignment: "Center")
        let thing19 = ListOfThings(thingImage: #imageLiteral(resourceName: "meal4"), thingDescription: "Meal4", imageAlignment: "Left")
        let thing20 = ListOfThings(thingImage: #imageLiteral(resourceName: "napkin"), thingDescription: "Napkin", imageAlignment: "Right")
        let thing21 = ListOfThings(thingImage: #imageLiteral(resourceName: "shoe"), thingDescription: "Shoe", imageAlignment: "Center")
        let thing22 = ListOfThings(thingImage: #imageLiteral(resourceName: "table2"), thingDescription: "Table2", imageAlignment: "Left")
        let thing23 = ListOfThings(thingImage: #imageLiteral(resourceName: "plate1"), thingDescription: "plate", imageAlignment: "Right")
        let thing24 = ListOfThings(thingImage: #imageLiteral(resourceName: "table"), thingDescription: "Table1", imageAlignment: "Center")
        let thing25 = ListOfThings(thingImage: #imageLiteral(resourceName: "tumbler1"), thingDescription: "Tumbler1", imageAlignment: "Left")
        let thing26 = ListOfThings(thingImage: #imageLiteral(resourceName: "tumbler2"), thingDescription: "Tumbler2", imageAlignment: "Right")
        
        tempArray.append(thing1)
        tempArray.append(thing2)
        tempArray.append(thing3)
        tempArray.append(thing4)
        tempArray.append(thing5)
        tempArray.append(thing6)
        tempArray.append(thing7)
        tempArray.append(thing8)
        tempArray.append(thing9)
        tempArray.append(thing10)
        tempArray.append(thing11)
        tempArray.append(thing12)
        tempArray.append(thing13)
        tempArray.append(thing14)
        tempArray.append(thing15)
        tempArray.append(thing16)
        tempArray.append(thing17)
        tempArray.append(thing18)
        tempArray.append(thing19)
        tempArray.append(thing20)
        tempArray.append(thing21)
        tempArray.append(thing22)
        tempArray.append(thing23)
        tempArray.append(thing24)
        tempArray.append(thing25)
        tempArray.append(thing26)
        
        return tempArray
        
    }


    

}

extension ListOfThingsController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return things.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if things[indexPath.row].imageAlignment == "Left" {
            let cellLeft = Bundle.main.loadNibNamed("ListOfThingsCellLeft", owner: self, options: nil)?.first as! ListOfThingsCellLeft
            //let cellLeft = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as! ListOfThingsCellLeft
            cellLeft.leftListImage.image = things[indexPath.row].thingImage
            cellLeft.leftListText.text = things[indexPath.row].thingDescription
            return cellLeft
            
        }
        
        else if things[indexPath.row].imageAlignment == "Center" {
            let cellCenter = tableView.dequeueReusableCell(withIdentifier: "cellThings", for: indexPath) as! ListOfThingsCell
            cellCenter.listOfThingImage.image = things[indexPath.row].thingImage
            cellCenter.listOfThingLabel.text = things[indexPath.row].thingDescription
            return cellCenter
            
        }
        
        else {
            let cellUnknown = Bundle.main.loadNibNamed("RightTableViewCell", owner: self, options: nil)?.first as! RightTableViewCell
            
            cellUnknown.rightCellImage.image = things[indexPath.row].thingImage
            cellUnknown.rightCellLabel.text = things[indexPath.row].thingDescription
            return cellUnknown
        }
        
        
        
        
        
        
        
        
    }
    

}
