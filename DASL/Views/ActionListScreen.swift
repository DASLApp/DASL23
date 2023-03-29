//
//  ActionListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//



import UIKit

class ActionListScreen: UIViewController {
    
    var gifs: [Gif] = []
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        gifs = createArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Gif] {
        var tempGifs: [Gif] = []
        
        let gifA = Gif(title: "cook")
        let gifB = Gif(title: "cry")
        let gifC = Gif(title: "dance")
        let gifD = Gif(title: "draw")
        let gifE = Gif(title: "drink")
        let gifF = Gif(title: "eat")
        let gifG = Gif(title: "jump")
        let gifH = Gif(title: "laugh")
        let gifI = Gif(title: "play")
        let gifJ = Gif(title: "read")
        let gifK = Gif(title: "run")
        let gifL = Gif(title: "sleep")
        let gifM = Gif(title: "study")
        let gifN = Gif(title: "walk")
        let gifO = Gif(title: "write")
        
//        let gifC = Gif(gif: UIImage(named:"letterC")!, title: "Letter C")
//        let gifD = Gif(gif: UIImage(named:"letterD")!, title: "Letter D")
//        let gifE = Gif(gif: UIImage(named:"letterE")!, title: "Letter E")
//        let gifF = Gif(gif: UIImage(named:"letterF")!, title: "Letter F")
//        let gifG = Gif(gif: UIImage(named:"letterG")!, title: "Letter G")
//        let gifH = Gif(gif: UIImage(named:"letterH")!, title: "Letter H")
//        let gifI = Gif(gif: UIImage(named:"letterI")!, title: "Letter I")
//        let gifJ = Gif(gif: UIImage(named:"letterJ")!, title: "Letter J")
//        let gifK = Gif(gif: UIImage(named:"letterK")!, title: "Letter K")
//        let gifL = Gif(gif: UIImage(named:"letterL")!, title: "Letter L")
//        let gifM = Gif(gif: UIImage(named:"letterM")!, title: "Letter M")
//        let gifN = Gif(gif: UIImage(named:"letterN")!, title: "Letter N")
//        let gifO = Gif(gif: UIImage(named:"letterO")!, title: "Letter O")
//        let gifP = Gif(gif: UIImage(named:"letterP")!, title: "Letter P")
//        let gifQ = Gif(gif: UIImage(named:"letterQ")!, title: "Letter Q")
//        let gifR = Gif(gif: UIImage(named:"letterR")!, title: "Letter R")
//        let gifS = Gif(gif: UIImage(named:"letterS")!, title: "Letter S")
//        let gifT = Gif(gif: UIImage(named:"letterT")!, title: "Letter T")
//        let gifU = Gif(gif: UIImage(named:"letterU")!, title: "Letter U")
//        let gifV = Gif(gif: UIImage(named:"letterV")!, title: "Letter V")
//        let gifW = Gif(gif: UIImage(named:"letterW")!, title: "Letter W")
//        let gifX = Gif(gif: UIImage(named:"letterX")!, title: "Letter X")
//        let gifY = Gif(gif: UIImage(named:"letterY")!, title: "Letter Y")
//        let gifZ = Gif(gif: UIImage(named:"letterZ")!, title: "Letter Z")
        
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
//        tempGifs.append(gifP)
//        tempGifs.append(gifQ)
//        tempGifs.append(gifR)
//        tempGifs.append(gifS)
//        tempGifs.append(gifT)
//        tempGifs.append(gifU)
//        tempGifs.append(gifV)
//        tempGifs.append(gifW)
//        tempGifs.append(gifX)
//        tempGifs.append(gifY)
//        tempGifs.append(gifZ)
//        tempGifs.append(gifH)
        
        return tempGifs
    }
}

extension ActionListScreen: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gifs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gif = gifs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "GifCell") as! GifCell
        
        cell.setGif(gif: gif)
        
        return cell
    }
    
}
