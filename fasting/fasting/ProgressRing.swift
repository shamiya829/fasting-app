//
//  ProgressRing.swift
//  fasting
//
//  Created by Shamiya Lin on 2/3/23.
//

import SwiftUI

struct ProgressRing: View {
    @State var progress = 0.0
    var body: some View {
        ZStack {
            // MARK: Placeholder Ring
            
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            
            // MARK: Colored Ring
            
            Circle()
                .trim(from:0.0, to: min(progress, 1.0))
                .stroke(AngularGradient(gradient:Gradient(colors:[Color(#colorLiteral(red: 0.3654868007, green: 0.49381423, blue: 0.9517635703, alpha: 1)), Color(#colorLiteral(red: 0.9349500537, green: 0.4073915482, blue: 0.663169086, alpha: 1)), Color(#colorLiteral(red: 0.809135139, green: 0.6528449655, blue: 0.8100649714, alpha: 1)), Color(#colorLiteral(red: 0.5456955433, green: 0.7949220538, blue: 0.821295619, alpha: 1)), Color(#colorLiteral(red: 0.3654868007, green: 0.49381423, blue: 0.9517635703, alpha: 1))]), center: .center), style: StrokeStyle(lineWidth: 15.0, lineCap: .round, lineJoin: .round))
                .rotationEffect((Angle(degrees: 270)))
                .animation(.easeInOut(duration: 1.0), value: progress)
            
            VStack(spacing: 30){
                // MARK: Elapsed Time
                
                VStack(spacing: 5){
                    Text("Elapsed Time")
                        .opacity(0.7)
                    
                    Text("0:00")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.top)
                
                // MARK: Remaining Time

                VStack(spacing: 5){
                    Text("Remaining Time")
                        .opacity(0.7)
                    
                    Text("0:00")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }
        }
        .frame(width: 250, height: 250)
        .padding()
        .onAppear(){
            progress = 1
        }
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
    }
}
