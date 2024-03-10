//
//  ContentView.swift
//  Shiren6
//
//  Created by Shibata Toshiki on 2024/03/08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text = ""
    @State private var buy: [String] = []
    @State private var sale: [String] = []
    
    var body: some View {
            TextField("半角数字で入力", text: $text)
                .font(.system(size: 20))
                .keyboardType(.numberPad)
                .padding()
        ScrollView {

            HStack {
                buyingPrice
                sellingPrice
            }
        }
        .padding(.all, 16)
    }
    
    var buyingPrice: some View {
        VStack {
            Text("\(text)ギタンで買えるアイテム")
            // 草
            let filteredGrassItem = Price.itemArray.filter { item in
                item.buyingPrive == Int(text) && item.kind == .grass
            }
            Text("草")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredGrassItem.isEmpty ? 0 : 1)
            
            
            ForEach(filteredGrassItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 巻物
            let filteredScrollItem = Price.itemArray.filter { item in
                item.buyingPrive == Int(text) && item.kind == .scroll
            }
            Text("巻物")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredScrollItem.isEmpty ? 0 : 1)
            
            ForEach(filteredScrollItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 腕輪
            let filteredBangleItem = Price.itemArray.filter { item in
                item.buyingPrive == Int(text) && item.kind == .bangle
            }
            
            Text("腕輪")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredBangleItem.isEmpty ? 0 : 1)
            
            ForEach(filteredBangleItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 壺
            let filteredPotItem = Price.itemArray.filter { item in
                item.buyingPrive == Int(text) && item.kind == .pot
            }
            
            Text("壺")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredPotItem.isEmpty ? 0 : 1)
            
            
            ForEach(filteredPotItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 杖
            
            let filteredCaneItem = Price.itemArray.filter { item in
                item.buyingPrive == Int(text) && item.kind == .cane
            }
            
            Text("杖")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredCaneItem.isEmpty ? 0 : 1)
            
            ForEach(filteredCaneItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            Spacer()
        }
    }
    
    private var sellingPrice: some View {
        VStack {
            Text("\(text)ギタンで売れるアイテム")
            // 草
            let filteredGrassItem = Price.itemArray.filter { item in
                item.sellingPrice == Int(text) && item.kind == .grass
            }
            Text("草")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredGrassItem.isEmpty ? 0 : 1)
            
            
            ForEach(filteredGrassItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 巻物
            let filteredScrollItem = Price.itemArray.filter { item in
                item.sellingPrice == Int(text) && item.kind == .scroll
            }
            Text("巻物")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredScrollItem.isEmpty ? 0 : 1)
            
            ForEach(filteredScrollItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 腕輪
            let filteredBangleItem = Price.itemArray.filter { item in
                item.sellingPrice == Int(text) && item.kind == .bangle
            }
            
            Text("腕輪")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredBangleItem.isEmpty ? 0 : 1)
            
            ForEach(filteredBangleItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 壺
            let filteredPotItem = Price.itemArray.filter { item in
                item.sellingPrice == Int(text) && item.kind == .pot
            }
            
            Text("壺")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredPotItem.isEmpty ? 0 : 1)
            
            
            ForEach(filteredPotItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            // 杖
            
            let filteredCaneItem = Price.itemArray.filter { item in
                item.sellingPrice == Int(text) && item.kind == .cane
            }
            
            Text("杖")
                .font(.title3)
                .border(Color.red, width: 2.0)
                .opacity(filteredCaneItem.isEmpty ? 0 : 1)
            
            ForEach(filteredCaneItem, id: \.self) { item in
                Text(item.name)
            }
            .padding(.bottom, 16)
            
            Spacer()
        }
    }
    
}

#Preview {
    ContentView()
}

