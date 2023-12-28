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
    
    private lazy var team1: UILabel = {
        var label = UILabel()
        label.text = "Teste"
        label.font = .systemFont(ofSize: 22)
        label.textColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var counter1: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.textColor = .green
        label.text = String(counterValue1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var counter2: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 22)
        label.textColor = .green
        label.text = String(counterValue2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var team1Plus5: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Plus10: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Plus50: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Plus5: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Plus10: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Plus50: UIButton = {
       var button = UIButton()
        button.setImage(UIImage(named: ""), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
}
