//: Playground - noun: a place where people can play

import UIKit

enum GameType{
    case allTrump
    case noTrump
    
}

enum CardsAndDeclarations{
    case c7, c8, c9, c10, cA, cJ, cQ, cK, k100, k200
    case belotte, tierce, quartet, quint, carre9, carre10, carreA, carreQ, carreK, carreJ
}

func points(game: GameType, card: CardsAndDeclarations) -> Int{
    switch (game, card) {
    case (_,.c7), (_, .c8), (.noTrump, .c9):
        return 0
    case (.allTrump, .c9):
        return 14
    case (_, .c10):
        return 10
    case(_, .cA):
        return 11
    case(.allTrump, .cJ):
        return 20
    case(.noTrump, .cJ):
        return 2
    case(_, .cQ):
        return 3
    case(_, .cK):
        return 4
    case(.allTrump, .belotte):
        return 20
    case(.allTrump, .tierce):
        return 20
    case(.allTrump, .quartet):
        return 50
    case(.allTrump, .quint), (.allTrump, .k100) :
        return 100
    case(.allTrump, .carre9), (.allTrump, .carreA), (.allTrump, .carreQ), (.allTrump, .carreK):
        return 100
    case(.allTrump, .carre9):
        return 150
    case(.allTrump, .carreJ), (.allTrump, .k200):
        return 200
    case(.noTrump, _):
        return 0
    default:
        return 0
    }
}

func getPoints(game: GameType, cards: [CardsAndDeclarations]) -> Int{
    var counter = 0
    for item in cards{
        counter += points(game: game, card: item)
    }
    
    switch game {
    case .noTrump:
        counter *= 2
    case .allTrump:
        break
    }
    
    return counter
}

func getWinner(game: GameType, team1: [CardsAndDeclarations], team2: [CardsAndDeclarations]) -> Int{
    
    var team1Points = 0
    var team2Points = 0
    
    for item in team1{
        team1Points += points(game: game, card: item)
    }
    
    for item in team2{
        team2Points += points(game: game, card: item)
    }
    
    switch game {
    case .noTrump:
        team1Points *= 2
        team2Points *= 2
        return 1
    case .allTrump:
        break
    }
    
    if team1Points > team2Points{
        return 1
    }
    
    if team2Points > team1Points{
        return 2
    }
    
    if team2Points == team1Points{
        return 0
    }
return 0
    
}

let teamOneCards: [CardsAndDeclarations] = [.cA, .cJ, .c9, .tierce, .belotte, .cK, .cQ, .c10]
print(getPoints(game: .noTrump, cards: teamOneCards))
print(getPoints(game: .allTrump, cards: teamOneCards))

print(getWinner(game: .allTrump, team1: [.cA, .cA, .c10, .c8, .c7, .cK], team2: [.cJ, .cJ, .c9, .c8, .c7, .c10, .cJ]))

