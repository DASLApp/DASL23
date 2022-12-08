//
//  ClothingListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//
import UIKit

class ClothingListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var gifs: [Gif] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        gifs = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func createArray() -> [Gif] {
        var tempGifs: [Gif] = []
        
        let gifBelt = Gif(title: "belt")
         let gifCoat = Gif(title: "coat")
         let gifDress = Gif(title: "dress")
         let gifGlasses = Gif(title: "Glasses")
         let gifHat = Gif(title: "Hat")
         let gifPajamas = Gif(title: "Pajamas")
         let gifPants = Gif(title: "pants")
         let gifShirt = Gif(title: "Shirt")
         let gifShoes = Gif(title: "shoes")
         let gifShorts = Gif(title: "Shorts")
         let gifSocks = Gif(title: "socks")
         let gifSwimsuit = Gif(title: "Swimsuit")
         let gifTie = Gif(title: "Tie")
         let gifUnderwear = Gif(title: "underwear")
         let gifVest = Gif(title: "Vest")
      
         
         tempGifs.append(gifBelt)
         tempGifs.append(gifCoat)
         tempGifs.append(gifDress)
         tempGifs.append(gifGlasses)
         tempGifs.append(gifHat)
         tempGifs.append(gifPajamas)
         tempGifs.append(gifPants)
         tempGifs.append(gifShirt)
         tempGifs.append(gifShoes)
         tempGifs.append(gifShorts)
         tempGifs.append(gifSocks)
         tempGifs.append(gifSwimsuit)
         tempGifs.append(gifTie)
         tempGifs.append(gifUnderwear)
         tempGifs.append(gifVest)

        
        return tempGifs
    }


}

extension ClothingListScreen: UITableViewDataSource, UITableViewDelegate {
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
