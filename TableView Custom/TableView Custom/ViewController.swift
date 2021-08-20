//
//  ViewController.swift
//  TableView Custom
//
//  Created by Matheus de Sousa Matos on 16/08/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row > 5{
            let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
            customCell.configure(with: "Custom Cell", imageNamed: "gear")
            return customCell
        }
        
        if indexPath.row > 2{
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
            
            return fieldCell
        }
        
        //Create cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        
        //Create Switch
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwith(_:)), for: .valueChanged)
        //Switch On(true) or Off(false)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
        
        return cell
    }
    
    //Rezibla size gear example
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    @objc func didChangeSwith(_ sender: UISwitch){
        if sender.isOn{
            print("User turned on")
        }
        else{
            print("Its now off")
        }
    }

}

