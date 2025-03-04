//
//  CenterModifier.swift
//  Savanna
//
//  Created by Otabek Tuychiev on 2025/03/04.
//

import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
