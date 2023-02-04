//
//  ContentView.swift
//  fasting
//
//  Created by Shamiya Lin on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // MARK: Background
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View{
        VStack{
            // MARK: Title
            Text("Let's get started!")
                .font(.headline)
                .foregroundColor(Color(#colorLiteral(red: 0.3654868007, green: 0.49381423, blue: 0.9517635703, alpha: 1)))
            
            
            // MARK: Fasting Plan
            Text("16:8")
                .fontWeight(.bold)
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .background(.thinMaterial)
                .cornerRadius(20)
            
            // MARK: Progress Ring
            ProgressRing()
            
            HStack(spacing: 60){
                // MARK: Start Time
                VStack(spacing: 5){
                    Text("Start")
                        .opacity(0.7)
                    
                    Text(Date(), format: .dateTime.weekday().hour().minute().second())
                        .fontWeight(.bold)
                }
                
                
                // MARK: End Time
                VStack(spacing: 5){
                    Text("End")
                        .opacity(0.7)
                    
                    Text(Date().addingTimeInterval(16), format: .dateTime.weekday().hour().minute().second())
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
