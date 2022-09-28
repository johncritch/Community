//
//  EventPostTableViewCell.swift
//  Community
//
//  Created by John Critchlow on 10/12/21.
//

import UIKit

final class EventPostTableViewCell: UITableViewCell {
    
    static let identifier = "EventPostTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure() {
        // configure the cell
    }
}
