//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Светлана Сенаторова on 10.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = "Start"
    @State private var redOpacity = 0.1
    @State private var yellowOpacity = 0.1
    @State private var greenOpacity = 0.1
    @State private var currentLight = ViewColor.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.1
    
    var body: some View {
        ZStack(alignment: .top) {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                CircleView()
                    .foregroundColor(.red.opacity(redOpacity))
                CircleView()
                    .foregroundColor(.yellow.opacity(yellowOpacity))
                CircleView()
                    .foregroundColor(.green.opacity(greenOpacity))
                Spacer()
                Button(action: { switchingButtonTapped() }) {
                    Text(title)
                        .font(.title.bold())
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
            }
            .padding()
        }
    }
    
    private func switchingButtonTapped() {
        
        title = "Next"
        switch currentLight {
        case .red:
            redOpacity = lightIsOn
            greenOpacity = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowOpacity = lightIsOn
            redOpacity = lightIsOff
            currentLight = .green
        case .green:
            greenOpacity = lightIsOn
            yellowOpacity = lightIsOff
            currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    
    enum ViewColor {
        case red, yellow, green
    }
    
}
