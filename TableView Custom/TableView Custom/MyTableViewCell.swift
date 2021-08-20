//
//  MyTableViewCell.swift
//  TableView Custom
//
//  Created by Matheus de Sousa Matos on 16/08/21.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    public func configure(with title: String, imageNamed: String){
        myLabel.text = title
        myImageView.image = UIImage(systemName: imageNamed)
    }
    
    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
