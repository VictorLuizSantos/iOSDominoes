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
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    func setConstrains() {
        NSLayoutConstraint.activate([
            counter1.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            counter1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            
            team1Plus5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            team1Plus5.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team1Plus10.leadingAnchor.constraint(equalTo: team1Plus5.trailingAnchor, constant: -20),
            team1Plus10.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team1Plus50.leadingAnchor.constraint(equalTo: team1Plus10.trailingAnchor, constant: -20),
            team1Plus50.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team1Minus5.leadingAnchor.constraint(equalTo: team1Plus50.leadingAnchor, constant: 20),
            team1Minus5.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team1Minus10.leadingAnchor.constraint(equalTo: team1Minus5.trailingAnchor, constant: -20),
            team1Minus10.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team1Minus50.leadingAnchor.constraint(equalTo: team1Minus10.trailingAnchor, constant: -20),
            team1Minus50.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            
            counter2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            counter2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            
            team2Plus5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            team2Plus5.centerYAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 20),
            team2Plus10.leadingAnchor.constraint(equalTo: team2Plus5.trailingAnchor, constant: -20),
            team2Plus10.centerYAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 20),
            team2Plus50.leadingAnchor.constraint(equalTo: team2Plus10.trailingAnchor, constant: -20),
            team2Plus50.centerYAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 20),
            team2Minus5.leadingAnchor.constraint(equalTo: team2Plus50.leadingAnchor, constant: 20),
            team2Minus5.centerYAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 20),
            team2Minus10.leadingAnchor.constraint(equalTo: team2Minus5.trailingAnchor, constant: -20),
            team2Minus10.centerYAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 20),
            team2Minus50.leadingAnchor.constraint(equalTo: team2Minus10.trailingAnchor, constant: -20),
            team2Minus50.centerYAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 20),
        ])
    }
    
    func addViews() {
        view.addSubview(counter1)
        view.addSubview(counter2)
        view.addSubview(team1Plus5)
        view.addSubview(team1Plus10)
        view.addSubview(team1Plus50)
        view.addSubview(team1Minus5)
        view.addSubview(team1Minus10)
        view.addSubview(team1Minus50)
        view.addSubview(team2Plus5)
        view.addSubview(team2Plus10)
        view.addSubview(team2Plus50)
        view.addSubview(team2Minus5)
        view.addSubview(team2Minus10)
        view.addSubview(team2Minus50)
    }
}
