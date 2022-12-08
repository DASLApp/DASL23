//
//  PeopleListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//

import UIKit

class PeopleListScreen: UIViewController {
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
         
         let gifA = Gif(title: "aunt")
//         let gifB = Gif(title: "Brother")
         let gifC = Gif(title: "child")
         let gifD = Gif(title: "dad")
//         let gifE = Gif(title: "Daughter")
         let gifF = Gif(title: "grandma")
         let gifG = Gif(title: "grandpa")
         let gifH = Gif(title: "man")
         let gifI = Gif(title: "mom")
         let gifJ = Gif(title: "sister")
         let gifK = Gif(title: "son")
         let gifL = Gif(title: "student")
         let gifM = Gif(title: "teacher")
         let gifN = Gif(title: "uncle")
         let gifO = Gif(title: "woman")
         

         
         tempGifs.append(gifA)
//         tempGifs.append(gifB)
         tempGifs.append(gifC)
         tempGifs.append(gifD)
//         tempGifs.append(gifE)
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

         
         return tempGifs
     }
 }

 extension PeopleListScreen: UITableViewDataSource, UITableViewDelegate {
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
