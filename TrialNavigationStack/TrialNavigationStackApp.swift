//
//  TrialNavigationStackApp.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

@main
struct TrialNavigationStackApp: App {
    @StateObject var router = Router()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                ContentView()
                    .navigationDestination(for: Destination.self) { destination in
                        // logic to handle destination can be here...
                        if destination == .fourthPage {
                            FourthView()
                        } else {
                            // or separate it to a separate View Builder class
                            ViewFactory.viewForDestination(destination)
                        }
                        
                        
                    }
            }
            .environmentObject(router)
        }
    }
}


class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    // example function inside router 
    func popToRoot() {
        path.removeLast(path.count)
    }
    
}

// custom page
enum Destination: Hashable {
    case secondPage(CustomData)
    case thirdPage(Int)
    case fourthPage
}

class ViewFactory {
    @ViewBuilder
    static func viewForDestination(_ destination: Destination) -> some View {
        switch destination {
        case .secondPage:
            SecondView()
        case .thirdPage(let x):
            ThirdView(requireParam: x)
        case .fourthPage:
            FourthView()
        }
    }
}

struct CustomData: Equatable, Hashable {
    let x: Int = 0
}
