//
//  TrialNavigationStackApp.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

@main
struct TrialNavigationStackApp: App {
    @StateObject var coordinator = Coordinator()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $coordinator.path) {
                ContentView()
                    .navigationDestination(for: Destination.self) { destination in
                        // pengen dinamis
                        ViewFactory.viewForDestination(destination)
                    }
            }
            .environmentObject(coordinator)
        }
    }
}


class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
}

// custom page
enum Destination: Hashable {
    case secondPage
    case thirdPage(Int)
}

class ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: Destination) -> some View {
        switch destination {
        case .secondPage:
            SecondContentView()
        case .thirdPage(let x):
            ThirdView(requireParam: x)
        }
    }
}
