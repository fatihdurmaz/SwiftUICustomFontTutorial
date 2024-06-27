//
//  DetailView.swift
//  CustomFontTutorial
//
//  Created by Fatih Durmaz on 24.06.2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    let index: Int
    
    var body: some View {
        NavigationStack {
            VStack{
                List {
                    Section("Section 1") {
                        Text( """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis facilisis velit. Nunc justo lorem, feugiat molestie faucibus ac, consequat nec magna. Praesent convallis tortor et tortor dapibus, a tincidunt felis finibus. Quisque purus nisl, malesuada id lacinia nec, sollicitudin ut eros. Mauris mollis mauris in felis viverra, eget pulvinar lorem porta. Sed id ullamcorper massa, eget tempus libero. Proin eu rhoncus mauris. Mauris ac pharetra turpis.
                        """)
                        .font(.customHeadlineFont(size: 18))
                    }
                    .textCase(.none)
                    
                    Section("Section 2") {
                        Text("""
                    Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse mattis, enim ut sodales bibendum, purus tellus aliquam felis, vel placerat lectus massa vitae justo. Curabitur pellentesque a quam vel aliquam. In ornare ultricies nunc, nec eleifend est fringilla nec. Cras vestibulum eros ultricies fringilla laoreet. Suspendisse sodales odio risus, et ultricies leo elementum consequat. Fusce metus enim, tristique eu velit eleifend, fringilla tristique purus. Mauris pharetra posuere mauris, id auctor nunc eleifend eget. Maecenas in justo sit amet est volutpat lobortis vitae id nisl. Praesent in quam ut massa fermentum tempus. In porttitor magna et justo ullamcorper consectetur. Nullam in ante a elit maximus eleifend. Nunc neque sem, dapibus a viverra ac, sodales volutpat tortor.
                    """)
                        .font(.system(size: 20, weight: .light))
                    }
                    .textCase(.none)
                    
                    Section("Section 3") {
                        Text( """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque quis facilisis velit. Nunc justo lorem, feugiat molestie faucibus ac, consequat nec magna. Praesent convallis tortor et tortor dapibus, a tincidunt felis finibus. Quisque purus nisl, malesuada id lacinia nec, sollicitudin ut eros. Mauris mollis mauris in felis viverra, eget pulvinar lorem porta. Sed id ullamcorper massa, eget tempus libero. Proin eu rhoncus mauris. Mauris ac pharetra turpis.
                        """)
                    }
                    .textCase(.none)
                }
                .contentMargins(10)
            }
            .navigationTitle("Detail View \(index)")
        }
    }
}

#Preview {
    DetailView(index: 23)
}
