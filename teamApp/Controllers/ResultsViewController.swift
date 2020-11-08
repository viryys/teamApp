//
//  ResultsViewController.swift
//  teamApp
//
//  Created by Alex on 08.11.2020.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var carTipeLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.hidesBackButton = true
        
        updateResult()
    }
    

   

}
extension ResultsViewController {
    private func updateResult() {
        var frequencyOfCars: [carType: Int] = [:]
        let cars = answers.map {$0.type}
        
        for car in cars {
            if let carTypeCount = frequencyOfCars[car] {
                frequencyOfCars.updateValue(carTypeCount + 1, forKey: car)
            } else {
                frequencyOfCars[car] = 1
            }
        }
        let sortedFrequencyOfCars = frequencyOfCars.sorted { $0.value > $1.value}
        guard let mostFrequencyCar = sortedFrequencyOfCars.first?.key else {return}
        updateUI(with: mostFrequencyCar)
        
        }
    
    private func updateUI(with car: carType?) {
        carTipeLabel.text = "Твоя машина - \(car?.rawValue ?? "🚗")!"
        descriptionLabel.text = car?.definition ?? ""
    }
    
    }

   
    

