//
//  ContentView.swift
//  NavigateBetweenModule
//
//  Created by septe habudin on 24/12/22.
//

import SwiftUI
import Common
import Product
import Cart

struct ContentView: View {
    var body: some View {
        //        VStack {
        //            Image(systemName: "globe")
        //                .imageScale(.large)
        //                .foregroundColor(.accentColor)
        //            Text(hello)
        //        }
        //        .padding()

        NavigationStack {
            VStack{
                Image("Dicoding", bundle: Bundle(identifier: "septehabudin.Common"))
                    .resizable()
                    .frame(width: 240, height: 240)

                Text("Hi, im Quicksand-Bold").font(.custom("Quicksand-Bold", size: 20))

                Text("Hi, im open sans italic").font(.custom("SunnySpells-Regular", size: 20))

               // Perbarui kode untuk memanggil ProductView yang setelah pakai DI
                NavigationLink {
                    ProductView(presenter: getProductPresenter) {
                        CartView {
                            ProductDetailView()
                        }
                    }
                } label: {
                    Text("Open Product")
                }

            }
        }.navigationTitle("Modular")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
  var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
    GetProductPresenter(_useCase: GetProductUseCase())
  }
}
