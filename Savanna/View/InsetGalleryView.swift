//
//  InsetGalleryView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import SwiftUI

struct InsetGalleryView: View {
    
    //MARK: - Properties
    
    let animal: Animal
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}


//MARK: - Preview
struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetGalleryView(animal: animals[4])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
