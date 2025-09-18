//
//  ContentView.swift
//  wwdc
//
//  Created by alex weldu on 9/16/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isExpanded: Bool = false
    
    
    var body: some View {
        ZStack (alignment: .trailing) {
            Color.gray
            // TodoView()
            ItemView()
            
//            VStack( spacing: 20) {
//                Spacer()
//                if isExpanded {
//                   
//                    Group {
//                        
//                        Image(systemName: "suit.heart.fill")
//                            .font(.title)
//                            .foregroundStyle(.white.gradient)
//                            .frame(width: 50, height: 50)
//                        
//                        Image(systemName: "iphone.gen1")
//                            .font(.title)
//                            .foregroundStyle(.red.gradient)
//                            .frame(width: 50, height: 50)
//                        
//                        Image(systemName: "person")
//                            .font(.title)
//                            .foregroundStyle(.green.gradient)
//                            .frame(width: 50, height: 50)
//                    }
//                    
//                    .glassEffect(.regular,in: .circle)
//                }
//                
//                Button {
//                    withAnimation(.smooth(duration: 2 , extraBounce:0 )){
//                        isExpanded.toggle()
//                    }
//                }label: {
//                    Image(systemName: "ellipsis")
//                        .font(.title)
//                        .foregroundStyle(.white.gradient)
//                        .frame(width: 40, height: 40)
//                }.buttonStyle(.glass)
//            }.padding(30)
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
