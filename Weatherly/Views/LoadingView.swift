//
//  LoadingView.swift
//  Weatherly
//
//  Created by Adil Rahmani on 12/4/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(width: .infinity, height: .infinity)
    }
}

#Preview {
    LoadingView()
}

