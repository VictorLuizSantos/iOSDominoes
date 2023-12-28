//
//  MainViewController.swift
//  Dominoes
//
//  Created by Victor Luiz on 23/12/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private var counterValue1: Int = 0
    private var counterValue2: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        self.view.addSubview(dupla1)
        navigationItem.title = "Dominoes Counter"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private lazy var dupla1: UILabel = {
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

}

