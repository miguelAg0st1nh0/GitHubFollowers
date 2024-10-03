//
//  GFTextField.swift
//  GitHubFollowers
//
//  Created by Miguel Agostinho on 03/10/2024.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configure() {
        
        layer.cornerRadius = 4
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray4.cgColor
        textColor = .label
        tintColor = .label
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        placeholder = "Search for a user"
        translatesAutoresizingMaskIntoConstraints = false
    }
}
