//
//  ContentView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, 1st Page!")
            
            NavigationLink("Go to next page", value: Destination.secondPage(CustomData()))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
