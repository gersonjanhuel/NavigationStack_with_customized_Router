//
//  SecondContentView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        VStack {
            Text("2nd Page!")
            
            
            Button("Go to 3rd page") {
                router.path.append(Destination.thirdPage(10))
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
