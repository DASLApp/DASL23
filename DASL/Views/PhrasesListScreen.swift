//
//  PhrasesListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/14/22.
//

import UIKit

class PhrasesListScreen: UIViewController {

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
        
        let gifBad = Gif(title: "bad")
        let gifBut = Gif(title: "but")
        let gifCan = Gif(title: "can")
        let gifHello = Gif(title: "Hello")
        let gifHere = Gif(title: "Here")
        let gifLove = Gif(title: "I Love You")
        let gifNo = Gif(title: "No")
        let gifPlease = Gif(title: "Please")
        let gifWhen = Gif(title: "When")
        
        tempGifs.append(gifBad)
        tempGifs.append(gifBut)
        tempGifs.append(gifCan)
        tempGifs.append(gifHello)
        tempGifs.append(gifHere)
        tempGifs.append(gifLove)
        tempGifs.append(gifNo)
        tempGifs.append(gifPlease)
        tempGifs.append(gifWhen)
        
        
        
        
        return tempGifs
    }


}

extension PhrasesListScreen: UITableViewDataSource, UITableViewDelegate {
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
