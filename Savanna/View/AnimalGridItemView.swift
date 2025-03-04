//
//  AnimalGridItemView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/04.
//

import SwiftUI


import SwiftUI

struct AnimalGridItemView: View {
  // MARK: - Properties
  
  let animal: Animal

  // MARK: - Body

  var body: some View {
    Image(animal.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

// MARK: - Preview

struct AnimalGridItemView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    AnimalGridItemView(animal: animals[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
