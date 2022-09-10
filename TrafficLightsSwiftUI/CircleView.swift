//
//  SwiftUIView.swift
//  TrafficLightsSwiftUI
//
//  Created by Светлана Сенаторова on 10.09.2022.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
       
            Circle()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
