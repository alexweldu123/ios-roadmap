//
//  ItemView.swift
//  wwdc
//
//  Created by alex weldu on 9/17/2025.
//

import SwiftUI

struct ItemView: View {
    @StateObject var viewModel = ItemViewModel()
    
    @State var title: String = ""
    @State private var showDeleteConfirmation: Bool = false
    @State private var pendingDeletionIndex: Int? = nil
    
    var body: some View {
        ZStack{
            Color.gray.opacity(0.3)
            
            NavigationStack{
                VStack{
                    Form{
                        
                        Section{
                            HStack{
                                TextField("Title", text: $title)
                                Button{
                                    viewModel.addItem(Item( id: UUID().uuidString ,text: title))
                                } label: {
                                    Image(systemName: "plus")
                                }
                            }
                        }
                        Section{
                            ForEach(viewModel.items.indices, id: \.self) { index in
                                Text(viewModel.items[index].text)
                                    .onTapGesture  {
                                        pendingDeletionIndex = index
                                        showDeleteConfirmation = true
                                    }
                                
                            }
                        }
                        
                        
                    }
                    .confirmationDialog("Delete Item?", isPresented: $showDeleteConfirmation, titleVisibility: .visible) {
                        
                        
                        Button("Delete", role: .destructive) {
                            if let idx = pendingDeletionIndex {
                                viewModel.deleteItem(idx)
                            }
                            pendingDeletionIndex = nil
                        }.buttonStyle(.glass)
                        Button("Cancel", role: .cancel) {
                            pendingDeletionIndex = nil
                        }.buttonStyle(.glass)
                    } message: {
                        if let idx = pendingDeletionIndex {
                            Text("Are you sure you want to delete \(viewModel.items[idx].text)?")
                        } else {
                            Text("Are you sure you want to delete this item?")
                        }
                    }
                }.navigationTitle("Form")
                
            }
        }.ignoresSafeArea()
        
    }
    
}

#Preview {
    ItemView()
}

