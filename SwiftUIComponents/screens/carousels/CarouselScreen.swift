//
//  CarouselScreen.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 06-02-25.
//

import SwiftUI

struct CarouselScreen: View {
    var body: some View {
        
        VStack {
            NavigationLink(destination: CarouselAutoScrollScreen()) {
                Text("Auto Scrolling".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }
            Divider()
        }
        
        
    }
}

#Preview {
    CarouselScreen()
}
