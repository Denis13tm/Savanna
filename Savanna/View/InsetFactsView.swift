//
//  InsetFactsView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import SwiftUI

struct InsetFactsView: View {
    
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}


//MARK: - Preview
struct InsetFactsView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactsView(animal: animals[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
