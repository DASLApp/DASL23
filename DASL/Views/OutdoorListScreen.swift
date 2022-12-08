//
//  OutdoorListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//

import UIKit

class OutdoorListScreen: UIViewController {
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
         
         let gifA = Gif(title: "autumn")
         let gifB = Gif(title: "building")
         let gifC = Gif(title: "Dirt")
         let gifD = Gif(title: "flower")
         let gifE = Gif(title: "grass")
         let gifF = Gif(title: "moon")
         let gifG = Gif(title: "mountain")
         let gifH = Gif(title: "river")
         let gifI = Gif(title: "road")
         let gifJ = Gif(title: "spring")
         let gifK = Gif(title: "star")
         let gifL = Gif(title: "summer")
         let gifM = Gif(title: "sun")
         let gifN = Gif(title: "tree")
//         let gifO = Gif(title: "winter")
         
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
//         tempGifs.append(gifO)
 
         return tempGifs
     }
 }

 extension OutdoorListScreen: UITableViewDataSource, UITableViewDelegate {
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


