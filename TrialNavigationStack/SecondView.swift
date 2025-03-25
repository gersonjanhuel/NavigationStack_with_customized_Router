//
//  SecondContentView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var navRouter: NavigationRouter
    
    var body: some View {
        VStack {
            Text("2nd Page!")
            
            // Navigate using button, access to router
            Button("Go to 3rd page") {
                navRouter.gotoScreen(screen: Screen.thirdPage(10))
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
