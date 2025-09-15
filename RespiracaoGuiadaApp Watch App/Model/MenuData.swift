//
//  MenuData.swift
//  RespiracaoGuiadaApp Watch App
//
//  Created by Lauro Marinho on 09/09/25.
//

import Foundation


// responsavel pelas informacoes do app
class MenuData {
    
    enum Section: String, CaseIterable {
        case spirit = "spirit"
        case breaht = "breaht"
        case reflect = "reflect"
    }
    
    let section: Section
    
    var title: String {
        switch section {
        case .spirit:
            return "Espirito"
        case .breaht:
            return "Respiração"
        case .reflect:
            return "Reflexão"
        }
    }
    
    var icon: String {
        switch section {
        case .spirit:
            return "figure.mind.and.body"
        case .breaht:
            return "aqi.medium"
        case .reflect:
            return "wind"
        }
    }
    
    var timer = "1 minuto"
    
    
    
    init(section: Section) {
        self.section = section
    }
}
