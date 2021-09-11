//
//  ResultsViewController.swift
//  Quiz 2021
//
//  Created by Владимир on 29.08.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var godLabel: UILabel!
    
    @IBOutlet weak var discriptionLabel: UILabel!
    
    let answers: [Answer]
    
    init?(coder: NSCoder, _ answers: [Answer]) {
        self.answers = answers
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("\(#line) \(#function) init(coder:) has not been implemented")
    }
    
    func calculatePersonalityResult() {
        let frequencyOfAnswers = answers.reduce(into: [:]) { counts, answer in
            counts[answer.type, default: 0] += 1
        }
        let frequencyOfAnswersSorted = frequencyOfAnswers.sorted { pair1, pair2 in
            pair1.value > pair2.value }
            let mostCommonAnswer = frequencyOfAnswersSorted.first!.key
        updateUI(with: mostCommonAnswer)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()

    }
    
    func updateUI(with god: GodType) {
        godLabel.text = "Вы - \(god.rawValue)!"
        discriptionLabel.text = god.definition
    }
}
