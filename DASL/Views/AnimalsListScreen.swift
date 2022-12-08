import UIKit

class AnimalsListScreen: UIViewController {
    
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
        
        let gifAlligator = Gif(title: "alligator")
        let gifCat = Gif(title: "cat")
        let gifChicken = Gif(title: "chicken")
        let gifCow = Gif(title: "Cow")
        let gifDog = Gif(title: "dog")
        let gifFish = Gif(title: "fish")
        let gifGoat = Gif(title: "goat")
        let gifHorse = Gif(title: "horse")
        let gifLion = Gif(title: "Lion")
        let gifMonkey = Gif(title: "monkey")
        let gifMouse = Gif(title: "mouse")
        let gifPig = Gif(title: "pig")
        let gifRabbit = Gif(title: "rabbit")
        let gifShark = Gif(title: "shark")
        let gifSheep = Gif(title: "sheep")
                
                
                
        tempGifs.append(gifAlligator)
        tempGifs.append(gifCat)
        tempGifs.append(gifChicken)
        tempGifs.append(gifCow)
        tempGifs.append(gifDog)
        tempGifs.append(gifFish)
        tempGifs.append(gifGoat)
        tempGifs.append(gifHorse)
        tempGifs.append(gifLion)
        tempGifs.append(gifMonkey)
        tempGifs.append(gifMouse)
        tempGifs.append(gifPig)
        tempGifs.append(gifRabbit)
        tempGifs.append(gifShark)
        tempGifs.append(gifSheep)

        
        return tempGifs
    }

    
}

extension AnimalsListScreen: UITableViewDataSource, UITableViewDelegate {
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
