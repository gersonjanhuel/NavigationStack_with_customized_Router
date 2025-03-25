//
//  FourthView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 16/04/23.
//

import SwiftUI

struct FourthView: View {
    
    @EnvironmentObject var navRouter: NavigationRouter
    
    var body: some View {
        VStack {
            Text("Hello, Fourth Page!")
            
            Button {
                navRouter.popToRoot()
            } label: {
                Text("Lets go back to root!")
            }

        }
        
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
