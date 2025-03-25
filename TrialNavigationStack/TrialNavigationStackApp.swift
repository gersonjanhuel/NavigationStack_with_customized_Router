//
//  TrialNavigationStackApp.swift
//  TrialNavigationStack
//
//  Created by Gerson Janhuel on 07/12/22.
//

import SwiftUI

@main
struct TrialNavigationStackApp: App {
    
    @StateObject var navRouter = NavigationRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navRouter.path) {
                ContentView()
                    .navigationDestination(for: Screen.self) { screen in
                        
                        if screen == .fourthPage { // handle destination logic here...
                            FourthView()
                        } else {
                            // or separate send it View Builder class
                            NavigationViewFactory.viewForDestination(screen)
                        }
                        
                        
                    }
            }
            .environmentObject(navRouter)
        }
    }
}

// this is the object that manage the logic for navigation route and path
class NavigationRouter: ObservableObject {
    @Published var path = NavigationPath()
    
    func gotoScreen(screen: Screen) {
        path.append(screen)
    }
    
    func back() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

// custom page
enum Screen: Hashable {
    case secondPage(CustomData)
    case thirdPage(Int)
    case fourthPage
}

class NavigationViewFactory {
    @ViewBuilder
    static func viewForDestination(_ screen: Screen) -> some View {
        switch screen {
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
