//
//  GifListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 9/27/22.
//

import UIKit

class GifListScreen: UIViewController {
    
    var pics: [Pic] = []
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pics  = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func createArray() -> [Pic] {
        var tempGifs: [Pic] = []
        
        let gifA = Pic(image: UIImage(named:"letterA")!, title: "Letter A")
        let gifB = Pic(image: UIImage(named:"letterB")!, title:  "Letter B")
        let gifC = Pic(image: UIImage(named:"letterC")!, title: "Letter C")
        let gifD = Pic(image: UIImage(named:"letterD")!, title: "Letter D")
        let gifE = Pic(image: UIImage(named:"letterE")!, title: "Letter E")
        let gifF = Pic(image: UIImage(named:"letterF")!, title: "Letter F")
        let gifG = Pic(image: UIImage(named:"letterG")!, title: "Letter G")
        let gifH = Pic(image: UIImage(named:"letterH")!, title: "Letter H")
        let gifI = Pic(image: UIImage(named:"letterI")!, title: "Letter I")
        let gifJ = Pic(image: UIImage(named:"letterJ")!, title: "Letter J")
        let gifK = Pic(image: UIImage(named:"letterK")!, title: "Letter K")
        let gifL = Pic(image: UIImage(named:"letterL")!, title: "Letter L")
        let gifM = Pic(image: UIImage(named:"letterM")!, title: "Letter M")
        let gifN = Pic(image: UIImage(named:"letterN")!, title: "Letter N")
        let gifO = Pic(image: UIImage(named:"letterO")!, title: "Letter O")
        let gifP = Pic(image: UIImage(named:"letterP")!, title: "Letter P")
        let gifQ = Pic(image: UIImage(named:"letterQ")!, title: "Letter Q")
        let gifR = Pic(image: UIImage(named:"letterR")!, title: "Letter R")
        let gifS = Pic(image: UIImage(named:"letterS")!, title: "Letter S")
        let gifT = Pic(image: UIImage(named:"letterT")!, title: "Letter T")
        let gifU = Pic(image: UIImage(named:"letterU")!, title: "Letter U")
        let gifV = Pic(image: UIImage(named:"letterV")!, title: "Letter V")
        let gifW = Pic(image: UIImage(named:"letterW")!, title: "Letter W")
        let gifX = Pic(image: UIImage(named:"letterX")!, title: "Letter X")
        let gifY = Pic(image: UIImage(named:"letterY")!, title: "Letter Y")
        let gifZ = Pic(image: UIImage(named:"letterZ")!, title: "Letter Z")
        
        tempGifs.append(gifA)
        tempGifs.append(gifB)
        tempGifs.append(gifC)
        tempGifs.append(gifD)
        tempGifs.append(gifE)
        tempGifs.append(gifF)
        tempGifs.append(gifG)
        tempGifs.append(gifH)
        tempGifs.append(gifI)
        tempGifs.append(gifJ)
        tempGifs.append(gifK)
        tempGifs.append(gifL)
        tempGifs.append(gifM)
        tempGifs.append(gifN)
        tempGifs.append(gifO)
        tempGifs.append(gifP)
        tempGifs.append(gifQ)
        tempGifs.append(gifR)
        tempGifs.append(gifS)
        tempGifs.append(gifT)
        tempGifs.append(gifU)
        tempGifs.append(gifV)
        tempGifs.append(gifW)
        tempGifs.append(gifX)
        tempGifs.append(gifY)
        tempGifs.append(gifZ)
        tempGifs.append(gifH)
        
        return tempGifs
    }

    
}

extension GifListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pics.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pic = pics[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PicCell") as! PicCell
        
        cell.setPic(pic: pic)
        
        return cell
    }
    
}
