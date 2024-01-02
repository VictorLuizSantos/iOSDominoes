//
//  MainViewController.swift
//  Dominoes
//
//  Created by Victor Luiz on 23/12/23.
//

import UIKit

final class MainViewController: UIViewController {
    
    // Model ou ViewModel?
    private var counterValue1: Int = 0
    private var counterValue2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        setConstrains()
        addViews()
        setStyle()
    }
    
    lazy var counter1: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.textColor = .green
        label.text = String(counterValue1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var counter2: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.textColor = .green
        label.text = String(counterValue2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - TEAM 1 PLUS
    lazy var team1Plus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team1Plus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team1Plus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - TEAM 1 MINUS
    lazy var team1Minus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team1Minus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team1Minus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - TEAM 2 PLUS
    lazy var team2Plus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team2Plus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team2Plus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - TEAM 2 MINUS
    lazy var team2Minus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team2Minus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var team2Minus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
}
