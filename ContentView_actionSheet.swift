//
//  ContentView.swift
//  SwiftUI Tutorial: Working with Action Sheet
//
//  Created by Alvin Sosangyo on 07/29/23.
//


import SwiftUI

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    @State private var message: String = ""
    
    var body: some View {
        
        VStack(spacing: 15) {
            Text(message)
            
            Button(action: {
                isPresented = true
            }) {
                Text("Show")
            }
        }
        .actionSheet(isPresented: $isPresented) {
            ActionSheet(
                title: Text("Select"),
                buttons: [
                    .default(Text("Send Message")) {
                        message = "Message Sent"
                    },
                    .destructive(Text("Remove Message")) {
                        message = "Message Removed"
                    },
                    .cancel(Text("Cancel Message")) {}
                ]
            )
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
