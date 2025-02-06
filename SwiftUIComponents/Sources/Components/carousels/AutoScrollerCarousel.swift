//
//  AutoScrollerCarousel.swift
//  SwiftUIComponents
//
//  Created by Jonathan Muñoz on 05-02-25.
//

import SwiftUI

struct AutoScrollerCarousel: View {
    
    var imageNames: [String]
       let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
       
       @State private var selectedImageIndex: Int = 0

    var body: some View {
        ZStack {
               Color.secondary
                   .ignoresSafeArea()

               TabView(selection: $selectedImageIndex) {
                   ForEach(0..<imageNames.count, id: \.self) { index in
                       ZStack(alignment: .topLeading) {
                           Image("\(imageNames[index])")
                               .resizable()
                               .tag(index)
                               .frame(width: 350, height: 200)
                       }
                       .background(VisualEffectBlur())
                       .shadow(radius: 20)
                       .onTapGesture {
                           print("is tappable now! \(index)")
                       }
                   }
               }
               .frame(height: 300)
               .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
               .ignoresSafeArea()
               

               HStack {
                   ForEach(0..<imageNames.count, id: \.self) { index in
                       Capsule()
                           .fill(Color.white.opacity(selectedImageIndex == index ? 1 : 0.33))
                           .frame(width: 35, height: 8)
                           .onTapGesture {
                               selectedImageIndex = index
                           }
                   }
                   .offset(y: 130)
               }
           }
           .onReceive(timer) { _ in
               withAnimation(.default) {
                   selectedImageIndex = (selectedImageIndex + 1) % imageNames.count
               }
           }
       }
    
}

#Preview {

    AutoScrollerCarousel(imageNames: ["\(1)","\(2)","\(3)","\(4)","\(5)","\(6)","\(7)"])
}
