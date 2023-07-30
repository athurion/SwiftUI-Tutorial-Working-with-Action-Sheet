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
        .confirmationDialog("Select", isPresented: $isPresented, titleVisibility: .hidden) {
            Button("Send Message") {
                message = "Message Sent"
            }
            
            Button("Remove Message", role: .destructive) {
                message = "Message Removed"
            }
            
            Button("Cancel Message", role: .cancel) {}
        }

    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
