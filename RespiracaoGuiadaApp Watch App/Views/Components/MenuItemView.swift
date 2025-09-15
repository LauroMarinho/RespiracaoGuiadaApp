//
//  MenuItemView.swift
//  RespiracaoGuiadaApp Watch App
//
//  Created by Lauro Marinho on 08/09/25.
//

import SwiftUI

struct MenuItemView: View {
    
    var model: MenuData
    
    var body: some View {
       
        HStack {
            
            leftView
            
            Spacer()
            
            rightView
            
        }
        
        .padding()
    }
}

// MARK: - Actions

extension MenuItemView{
    
    private func tapMoreButton(){
        print("Levar para navegação da tela de informação")
    }
    
}

// MARK: - Views

extension MenuItemView {
    
    @ViewBuilder
    var leftView: some View {
        
        VStack (alignment: .leading, spacing: 8.0){
            
            Image(systemName: model.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 56, height: 56)
                .foregroundColor(Color.green.opacity(0.5))
            
            Text(model.title)
                .bold()
            
            
            Text(model.timer)
                .font(.footnote)
            
        }
    }
    
    @ViewBuilder
    var rightView: some View {
        
        Button(action: tapMoreButton){

            VStack{
                Image(systemName: "ellipsis.circle.fill")
                    .foregroundColor(Color.green.opacity(0.5))
                Spacer()
            }
        }
        
        .buttonStyle(.plain)
    }
}

#Preview {
    MenuItemView(model: MenuData(section: .spirit))
}
