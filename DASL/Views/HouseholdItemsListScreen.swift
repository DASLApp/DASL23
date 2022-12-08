import UIKit

class HouseholdItemsListScreen: UIViewController {
    
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
        
        let gifbathTub = Gif(title: "bathtub")
        let gifChair = Gif(title: "chair")
        let gifClock = Gif(title: "clock")
        let gifCouch = Gif(title: "couch")
        let gifGarbage = Gif(title: "garbage")
        let gifTable = Gif(title: "table")
        
        tempGifs.append(gifbathTub)
        tempGifs.append(gifChair)
        tempGifs.append(gifClock)
        tempGifs.append(gifGarbage)
        tempGifs.append(gifCouch)
        tempGifs.append(gifTable)
//        tempGifs.append(gifC)
//        tempGifs.append(gifD)
//        tempGifs.append(gifE)
//        tempGifs.append(gifF)
//        tempGifs.append(gifG)
//        tempGifs.append(gifH)
//        tempGifs.append(gifI)
//        tempGifs.append(gifJ)
//        tempGifs.append(gifK)
//        tempGifs.append(gifL)
//        tempGifs.append(gifM)
//        tempGifs.append(gifN)
//        tempGifs.append(gifO)
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

extension HouseholdItemsListScreen: UITableViewDataSource, UITableViewDelegate {
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
