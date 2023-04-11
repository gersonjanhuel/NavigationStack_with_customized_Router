//
//  SecondContentView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct SecondContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            NavigationLink("Go to 3rd page", value: Destination.thirdPage(10))
        }
    }
}

struct SecondContentView_Previews: PreviewProvider {
    static var previews: some View {
        SecondContentView()
    }
}
