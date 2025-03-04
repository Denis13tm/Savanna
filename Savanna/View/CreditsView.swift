//
//  CreditsView.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/04.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
  Copyright © Otabek Tuychiev
  All right reserved 2025
  """)
        .font(.footnote)
        .multilineTextAlignment(.center)
    } //: VStack
    .padding()
    .opacity(0.4)
  }
}

struct CreditsView_Previews: PreviewProvider {
  static var previews: some View {
    CreditsView()
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
