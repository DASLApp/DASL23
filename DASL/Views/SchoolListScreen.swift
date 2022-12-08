//
//  SchoolListScreen.swift
//  DASL
//
//  Created by Aziz Rmadi on 11/9/22.
//

import UIKit

class SchoolListScreen: UIViewController {

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
        
        let gifBackpack = Gif(title: "backpack")
        let gifBook = Gif(title: "book")
        let gifComputer = Gif(title: "computer")
//        let gifDraw = Gif(title: "Draw")
        let gifLunch = Gif(title: "lunch")
        let gifMap = Gif(title: "map")
        let gifMath = Gif(title: "math")
        let gifPaper = Gif(title: "paper")
        let gifPencil = Gif(title: "pencil")
        let gifReading = Gif(title: "reading")
        let gifScience = Gif(title: "science")
        let gifScissors = Gif(title: "scissors")
        let gifStudent = Gif(title: "student")
        let gifTeacher = Gif(title: "teacher")
        let gifWrite = Gif(title: "write")
        
        
        tempGifs.append(gifBackpack)
        tempGifs.append(gifBook)
        tempGifs.append(gifComputer)
//        tempGifs.append(gifDraw)
        tempGifs.append(gifLunch)
        tempGifs.append(gifMap)
        tempGifs.append(gifMath)
        tempGifs.append(gifPaper)
        tempGifs.append(gifPencil)
        tempGifs.append(gifReading)
        tempGifs.append(gifScience)
        tempGifs.append(gifScissors)
        tempGifs.append(gifStudent)
        tempGifs.append(gifTeacher)
        tempGifs.append(gifWrite)

        
        return tempGifs
    }


}

extension SchoolListScreen: UITableViewDataSource, UITableViewDelegate {
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
