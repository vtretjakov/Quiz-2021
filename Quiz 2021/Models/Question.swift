
struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
    
    static let all: [Question] = [
        Question(text: "Какую еду вы предпочитаете?", type: .single, answers: [
        Answer(text: "Это не важно. Все одно", type: .love),
        Answer(text: "Очень по-разному, люблю эксперементаторовать", type: .excitement),
        Answer(text: "Мясо!", type: .war),
        Answer(text: "Переодически голодаю, во всем знаю меру", type: .justice),
        ]),
        
        Question(text: "Что вы любите делать?", type: .multiple, answers: [
            Answer(text: "Рисковать", type: .excitement),
            Answer(text: "Настаивать на своем", type: .war),
            Answer(text: "Наслаждаться", type: .love),
            Answer(text: "Думать и наблюдать", type: .justice),
        ]),
        
        Question(text: "Любите ли вы путешествовать?", type: .range, answers: [
            Answer(text: "Не важно", type: .war),
            Answer(text: "Иногда", type: .justice),
            Answer(text: "Везде хорошо", type: .love),
            Answer(text: "Всегда", type: .excitement),
        ]),
    ]
    
}
