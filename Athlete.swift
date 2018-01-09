//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by martynov on 2018-01-07.
//
//

import Foundation


struct Athlete: CustomStringConvertible {
    var name: String
    var age: String
    var league: String
    var team: String
    
    
    var description: String {
        return "\(name) is \(age) years old and and plays for \(team) in the \(league)"
    }
    
}
