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
            
            // navigate using Navigation Link value
            NavigationLink("Go to next page", value: Screen.secondPage(CustomData()))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
