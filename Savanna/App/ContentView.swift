//
//  ContentView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: NavLink
                }//: Loop   
            } // : List
            .listStyle(.plain)
            .navigationBarTitle("Africa", displayMode: .large)
            
        } //: Navigation
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
