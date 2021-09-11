//
//  GodType.swift
//  Quiz 2021
//
//  Created by Владимир on 30.08.2021.
//

enum GodType: Character {
    case love = "💛"
    case justice = "⚖️"
    case war = "⚔️"
    case excitement = "🎲"
    
    var definition: String {
        switch self {
        case .love:
            return "Любовь!!! Вы любите себя и умеете любить других, вы чувствительны, и не нуждаетесь в вопросах о любви. Окружаете себя заботливыми и внимательными людьми. Любовь"
        case .justice:
            return "Справедливость!!! Вы справедливы и стараетесь во всем искать середину. Окружаете себя взвешенными людьми."
        case .war:
            return "Война!!! Вы сами по себе, вы знаете чего хотите и не просто говорите, а делаете. Окружаете себя сильными и уверенными в себе людьми."
        case .excitement:
            return "Азарт!!! Вы любите рисковать, это делает вас сильнее. Окружаете себя энергичными и смелыми людьми."
        }
    }
}
