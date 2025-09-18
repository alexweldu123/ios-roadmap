//
//  TodoView.swift
//  wwdc
//
//  Created by alex weldu on 9/16/2025.
//

import SwiftUI

struct TodoView: View {
    
    @StateObject private var viewModel = TodoViewModel()
    @State private var newTodoTitle = ""
    @State private var isExpanded: Bool = false
    
    var body: some View {
        ZStack (alignment: .trailing) {
           
            NavigationStack {
                
                
                VStack () {
                    Color.gray.opacity(0.5)
                    Spacer()
                    Group{
                        
                        if isExpanded{
                            
                            
                            Button{
                                print("number one")
                            }label: {
                                Text("One")
                            }.buttonStyle(.glass)
                            Button{
                                print("Number two")
                            }label: {
                                Text("Two")
                            }.buttonStyle(.glass)
                            Button{
                                print("Number three")
                            }label: {
                                Text("Three")
                            }.buttonStyle(.glass)
                        }
                        Button{
                            isExpanded.toggle()
                            
                        }label: {
                            Image(systemName: "plus")
                        }
                    }
                }.navigationTitle("Todo")
                
            }
        }
    }
}


#Preview {
    TodoView()
}
