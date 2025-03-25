//
//  ThirdView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var navRouter: NavigationRouter
    
    var requireParam: Int = 0
    
    var body: some View {
        VStack {
            Text("Page 3 - Passed data: \(requireParam)")
            
            // Navigate with button
            Button("Go to 4th Page w/ Button") {
                navRouter.gotoScreen(screen: Screen.fourthPage)
            }
            .buttonStyle(.borderedProminent)
                
            
            // Or navigate with Navigation Link
            NavigationLink(value: Screen.fourthPage) {
                Text("Go to 4th Page")
            }
            
            Button("back 1 step") {
                navRouter.back()
            }
            
            Button("back 2 step") {
                // you can do logic with the path here...
                navRouter.path.removeLast(2)
            }
            .buttonStyle(.borderedProminent)
            
            Button("pop to root") {
                navRouter.popToRoot()
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
