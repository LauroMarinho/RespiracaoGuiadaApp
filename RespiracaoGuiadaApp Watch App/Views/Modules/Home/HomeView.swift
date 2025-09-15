//
//  HomeView.swift
//  RespiracaoGuiadaApp Watch App
//
//  Created by Lauro Marinho on 03/09/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                
                LinearGradient(gradient: Gradient(colors: [Color.black,
                                                           Color.black,
                                                           Color.green.opacity(0.2)]), // criar o gradiente
                               startPoint: .topLeading,
                               endPoint: .bottom)
                
                .ignoresSafeArea()
                
                TabView {
                    MenuItemView(model: MenuData(section: .breaht))
                    MenuItemView(model: MenuData(section: .reflect))
                    MenuItemView(model: MenuData(section: .spirit))
                     
                    VStack (spacing: 8.0) {
                        
                        NavigationLink("configurações", // navegar para a tela
                            destination: SettingsView()) // destino
                        .buttonStyle(.bordered)
                        
                        NavigationLink("Sobre",
                            destination: AboutView())
                        .buttonStyle(.bordered)
                    }
                    .padding()
                    
                }
                .tabViewStyle(.verticalPage)
                
            }
            
        }
        
    }
}

#Preview {
    HomeView()
}
