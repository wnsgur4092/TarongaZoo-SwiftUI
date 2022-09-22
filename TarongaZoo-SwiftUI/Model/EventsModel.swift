//
//  EventsModel.swift
//  TarongaZoo-SwiftUI
//
//  Created by JunHyuk Lim on 23/9/2022.
//

import Foundation

struct Event : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
    let description : String
    
}
