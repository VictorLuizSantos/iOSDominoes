//
//  MainView+Setup.swift
//  Dominoes
//
//  Created by Victor Luiz on 28/12/23.
//

import UIKit

extension MainViewController {
    
    func setStyle() {
        view.backgroundColor = UIColor.systemBackground
        navigationItem.title = "Dominoes Counter"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setConstrains() {
        NSLayoutConstraint.activate([
            
        ])
    }
    
    func addViews() {
        view.addSubview(team1)
    }
}
