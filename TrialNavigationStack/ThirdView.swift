//
//  ThirdView.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var coordinator: Coordinator
    
    var requireParam: Int = 0
    
    var body: some View {
        VStack {
            Text("Page 3 - Passing data: \(requireParam)")
            
            Button("pop to root") {
                coordinator.popToRoot()
            }
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
