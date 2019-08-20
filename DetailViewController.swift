import UIKit

class DetailViewController: UIViewController {
    
    //instance
    var theFellow: Person!

    @IBOutlet weak var fellowPicture: UIImageView!
    
    @IBOutlet weak var fellowStory: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        fellowPicture.image = theFellow.photo
       fellowStory.text = theFellow.description
    }
    

    

}
