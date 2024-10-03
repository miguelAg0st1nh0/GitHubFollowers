//
//  SearchVC.swift
//  GitHubFollowers
//
//  Created by Miguel Agostinho on 03/10/2024.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImageView = UIImageView()
    let userName = GFTextField()
    let searchButton = GFButton(backgroundColor: .systemGreen, title: "Search")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureLogoImage()
        configureUserName()
        configureSearchButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImage() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "gh-logo")
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150)
        ])
    }
    
    func configureUserName() {
        view.addSubview(userName)
        
        NSLayoutConstraint.activate([
            userName.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 100),
            userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            userName.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureSearchButton() {
        view.addSubview(searchButton)
        
        NSLayoutConstraint.activate([
            searchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            searchButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            searchButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
}
