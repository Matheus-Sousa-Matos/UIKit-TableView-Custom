//
//  FieldTableViewCell.swift
//  TableView Custom
//
//  Created by Matheus de Sousa Matos on 16/08/21.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {

    static let identifier = "FieldTableViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    @IBOutlet var field: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        field.placeholder = "Enter something..."
        field.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Reuse the cell whenever the scroll ends
        //textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
