//
//  MainViewController.swift
//  Dominoes
//
//  Created by Victor Luiz on 23/12/23.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Atributes
    
    private var viewModel = MainViewModel()
    
    // MARK: - UI Components
    
    private lazy var counter1: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        label.text = String(viewModel.counterValue1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var counter2: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .white
        label.text = String(viewModel.counterValue2)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - TEAM 1 PLUS
    private lazy var team1Plus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Plus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Plus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - TEAM 1 MINUS
    private lazy var team1Minus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Minus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team1Minus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam1(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var stackView1: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            team1Plus5, team1Plus10, team1Plus50, team1Minus5, team1Minus10, team1Minus50
        ])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // MARK: - TEAM 2 PLUS
    private lazy var team2Plus5: UIButton = {
       var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Plus10: UIButton = {
       var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Plus50: UIButton = {
       var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.addTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - TEAM 2 MINUS
    private lazy var team2Minus5: UIButton = {
        var button = UIButton()
        button.setTitle("5", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Minus10: UIButton = {
        var button = UIButton()
        button.setTitle("10", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var team2Minus50: UIButton = {
        var button = UIButton()
        button.setTitle("50", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        button.layer.cornerRadius = 12
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(viewModel.subtractTeam2(_ :)), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var stackView2: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [
            team2Plus5, team2Plus10, team2Plus50, team2Minus5, team2Minus10, team2Minus50
        ])
        stack.axis = .horizontal
        stack.alignment = .center
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setConstrains()
        setStyle()
    }

    // MARK: - Methods

    private func setStyle() {
        navigationItem.title = "Dominoes counter"
        view.backgroundColor = .black
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
    }
    
    private func setConstrains() {
        NSLayoutConstraint.activate([
            counter1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            counter1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            team1Plus5.widthAnchor.constraint(equalToConstant: 50),
            team1Plus5.heightAnchor.constraint(equalToConstant: 50),
            
            team1Plus10.widthAnchor.constraint(equalToConstant: 50),
            team1Plus10.heightAnchor.constraint(equalToConstant: 50),
            
            team1Plus50.widthAnchor.constraint(equalToConstant: 50),
            team1Plus50.heightAnchor.constraint(equalToConstant: 50),
            
            team1Minus5.widthAnchor.constraint(equalToConstant: 50),
            team1Minus5.heightAnchor.constraint(equalToConstant: 50),
            
            team1Minus10.widthAnchor.constraint(equalToConstant: 50),
            team1Minus10.heightAnchor.constraint(equalToConstant: 50),
            
            team1Minus50.widthAnchor.constraint(equalToConstant: 50),
            team1Minus50.heightAnchor.constraint(equalToConstant: 50),
            
            team2Plus5.widthAnchor.constraint(equalToConstant: 50),
            team2Plus5.heightAnchor.constraint(equalToConstant: 50),
            
            team2Plus10.widthAnchor.constraint(equalToConstant: 50),
            team2Plus10.heightAnchor.constraint(equalToConstant: 50),
            
            team2Plus50.widthAnchor.constraint(equalToConstant: 50),
            team2Plus50.heightAnchor.constraint(equalToConstant: 50),
            
            team2Minus5.widthAnchor.constraint(equalToConstant: 50),
            team2Minus5.heightAnchor.constraint(equalToConstant: 50),
            
            team2Minus10.widthAnchor.constraint(equalToConstant: 50),
            team2Minus10.heightAnchor.constraint(equalToConstant: 50),
            
            team2Minus50.widthAnchor.constraint(equalToConstant: 50),
            team2Minus50.heightAnchor.constraint(equalToConstant: 50),
            
            stackView1.topAnchor.constraint(equalTo: counter1.bottomAnchor, constant: 30),
            stackView1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            counter2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            counter2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 80),
            
            stackView2.topAnchor.constraint(equalTo: counter2.bottomAnchor, constant: 30),
            stackView2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    private func addViews() {
        view.addSubview(counter1)
        view.addSubview(counter2)
        view.addSubview(stackView1)
        view.addSubview(stackView2)
    }
}
