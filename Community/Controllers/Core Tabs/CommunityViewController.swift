//
//  ViewController.swift
//  Community
//
//  Created by John Critchlow on 9/8/21.
//

import FirebaseAuth
import UIKit

class CommunityViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(EventPostTableViewCell.self,
                           forCellReuseIdentifier: EventPostTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Community"
        configureNavigationBar()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated() {
        //Check Auth Status
        if Auth.auth().currentUser == nil {
            //Show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
    
    private func configureNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapOrganizeButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSearchButton))
    }
    
    @objc private func didTapOrganizeButton() {
        let vc = OrganizeViewController()
//        present(vc, animated: true)
        vc.title = "Organize Event"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func didTapSearchButton() {
        let vc = SearchViewController()
//        present(vc, animated: true)
//        vc.title = "Search Event"
        navigationController?.pushViewController(vc, animated: true)
    }


}

extension CommunityViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EventPostTableViewCell.identifier, for: indexPath) as! EventPostTableViewCell
        
        return cell
    }
}

