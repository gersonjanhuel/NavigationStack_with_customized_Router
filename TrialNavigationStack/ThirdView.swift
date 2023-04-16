//
//  ThirdView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var router: Router
    
    var requireParam: Int = 0
    
    var body: some View {
        VStack {
            Text("Page 3 - Passed data: \(requireParam)")
            
            Button("Go to 4th Page w/ Button") {
                router.path.append(Destination.fourthPage)
            }
            .buttonStyle(.borderedProminent)
                
            
            NavigationLink(value: Destination.fourthPage) {
                Text("Go to 4th Page")
            }
            
            Button("back 2 step") {
                router.path.removeLast(2)
            }
            .buttonStyle(.borderedProminent)
            
            Button("pop to root") {
                router.popToRoot()
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
