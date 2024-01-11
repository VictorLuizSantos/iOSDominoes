//
//  MainViewModel.swift
//  Dominoes
//
//  Created by Victor Luiz on 28/12/23.
//

import UIKit

class MainViewModel {
 
    var counterValue1: Int = 0
    var counterValue2: Int = 0

    @objc func addTeam1(_ sender: UIButton) {
        if let title = sender.currentTitle, let value = Int(title) {
            counterValue1 += value
        }
        else {
            print("Error adding value")
        }
    }
    
    @objc func subtractTeam1(_ sender: UIButton) {
        if let title = sender.currentTitle, let value = Int(title) {
            counterValue1 -= value
        }
        else {
            print("Error subtracting value")
        }
    }
    
    @objc func addTeam2(_ sender: UIButton) {
        if let title = sender.currentTitle, let value = Int(title) {
            counterValue2 += value
        }
        else {
            print("Error adding value")
        }
    }
    
    @objc func subtractTeam2(_ sender: UIButton) {
        if let title = sender.currentTitle, let value = Int(title) {
            counterValue2 -= value
        }
        else {
            print("Error subtracting value")
        }
    }
}
