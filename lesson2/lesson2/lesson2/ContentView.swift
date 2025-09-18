//
//  ContentView.swift
//  lesson2
//
//  Created by alex weldu on 9/14/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        
        ZStack{
          
            VStack(alignment: .leading){
                Button("Button 1") { }
                       .buttonStyle(.bordered)
                   Button("Button 2", role: .destructive) { }
                       .buttonStyle(.bordered)
                   Button("Button 3") { }
                       .buttonStyle(.borderedProminent)
                   Button("Button 4", role: .destructive) {
                       showingAlert = true
                   }
                       .buttonStyle(.borderedProminent).tint(.mint)
                       .alert("Important message", isPresented: $showingAlert) {
                           Button("OK") {
                               
                           }
                       }.glassEffect(.regular)
            }
        }
        .ignoresSafeArea()
            
             
    }
    
    
}

#Preview {
    ContentView()
}
