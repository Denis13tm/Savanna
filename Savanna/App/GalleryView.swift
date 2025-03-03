//
//  GalleryView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/03.
//

import SwiftUI

struct GalleryView: View {
    
    //MARK: - Properties
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    // Dynamic Grid Layout
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 2.0
    
    func gridSwitch() {
        withAnimation(.easeIn) {
            gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
        }
    }
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
          VStack(alignment: .center, spacing: 30) {
            // MARK: - Image
            
              ZStack {
                  RoundedRectangle(cornerSize: .zero)
                      .fill(Color.white)
                      .cornerRadius(12)
                  
                  Image(selectedAnimal)
                  .resizable()
                  .scaledToFit()
                  .cornerRadius(12)
                  .padding(2)
              }
            
            // MARK: - Slider
            
            Slider(value: $gridColumn, in: 2...4, step: 1)
              .padding(.horizontal)
              .onChange(of: gridColumn, perform: { value in
                gridSwitch()
              })
            
            // MARK: - Grid
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
              ForEach(animals) { item in
                  ZStack {
                      RoundedRectangle(cornerSize: .zero)
                          .fill(Color.white)
                          .cornerRadius(12)
                      
                      Image(item.image)
                      .resizable()
                      .scaledToFit()
                      .cornerRadius(12)
                      .padding(2)
                      .onTapGesture {
                        selectedAnimal = item.image
                        haptics.impactOccurred()
                      }
                  }//: ZStack
              } //: Loop
            } //: Grid
//            .animation(.easeIn)
            .animation(.easeIn, value: gridColumn)
            .onAppear(perform: {
                DispatchQueue.main.async {
                    gridSwitch()
                }
            })
          } //: VStack
          .padding(.horizontal, 10)
          .padding(.vertical, 50)
        } //: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
        
    }
}

//MARK: - Preview
struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
