import UIKit

class ViewController: UIViewController {
    var person = Person.allFellows()

    @IBOutlet weak var fellowsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        fellowsTableView.delegate = self
        fellowsTableView.dataSource = self
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = fellowsTableView.indexPathForSelectedRow,
            let detailVC = segue.destination as? DetailViewController else { return }
            let fellowToSendOverToDVC = person[indexPath.row]
        detailVC.theFellow = fellowToSendOverToDVC

        
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "fellowsCell", for: indexPath) as? FellowsCell else {return UITableViewCell() }
        var fellow = person[indexPath.row]
        
        cell.nameLabel.text = fellow.name
        return cell
        
    }
    
    
}
