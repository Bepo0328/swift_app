//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView(frame: self.view.bounds)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        self.view.addSubview(tableView)
    }
}

extension MyViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 5
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        
        cell?.textLabel?.text = "\(indexPath.row)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(section)"
    }
}

extension MyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.section) - \(indexPath.row)")
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

protocol LunchMenuSelectable {
    func selectMenu() -> String
}

class Boss {
    var delegate: LunchMenuSelectable!
    
    func goHaveLunch() {
        let menu = delegate.selectMenu()
        print("\(menu) 먹으러 가자")
    }
}

class Employee: LunchMenuSelectable {
    var menu: String
    
    func selectMenu() -> String {
        menu
    }
    
    init(with menu: String) {
        self.menu = menu
    }
}

let boss = Boss()
let me = Employee(with: "카레")
let myFriend = Employee(with: "소고기")

boss.delegate = myFriend
boss.goHaveLunch()
