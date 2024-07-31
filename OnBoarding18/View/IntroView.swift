//
//  IntroView.swift
//  OnBoarding18
//
//  Created by Benji Loya on 31.07.2024.
//

import SwiftUI

struct IntroView: View {
    
    /// View Properties
    @State private var activePage: Page = .page1
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack {
                MorphingSymbolView(
                    symbol: activePage.rawValue,
                    config: .init(
                        font: .system(size: 150, weight: .bold),
                        frame: .init(width: 250, height: 200),
                        radius: 30,
                        foregroudColor: .white
                    )
                )
                .onTapGesture {
                    activePage = activePage.nextPage
                }
            }
            .frame(maxWidth: .infinity)
        }
        .background {
            Rectangle()
                .fill(.black.gradient)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
