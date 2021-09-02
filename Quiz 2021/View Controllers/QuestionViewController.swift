//
//  QuestionViewController.swift
//  Quiz 2021
//
//  Created by Владимир on 26.08.2021.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    var questionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    updateUI()
        
        
    }
    
    func updateUI() {
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        navigationItem.title = "Вопрос № \(questionIndex + 1)"
        
        let question = Question.all[questionIndex]
        switch question.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .range:
            rangedStackView.isHidden = false
        }
        
        // TODO: change to segue to results screen
        questionIndex = (questionIndex + 1) % Question.all.count
        
    }
}
