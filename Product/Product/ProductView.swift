//
//  ProductView.swift
//  Product
//
//  Created by septe habudin on 24/12/22.
//

import SwiftUI
import Common
import CorePackage

//struct ProductView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ProductView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductView()
//    }
//}

//public struct ProductView<Destination: View>: View {
//    let action: (()-> Destination) // seblum menggukan injection

public struct ProductView<
    Destination: View,
    UseCase: UseCaseType
>: View where UseCase.Request == String, UseCase.Response == String {
    let action: (()-> Destination)

    // DI
    let presenter: GetProductPresenter<String, String, UseCase>

    public init(
      presenter: GetProductPresenter<String, String, UseCase>,
      action: @escaping (() -> Destination)
    ) {
      self.action = action
      self.presenter = presenter
    }

    public var body: some View{
        VStack {

            Image("Dicoding", bundle: Bundle(identifier: "septehabudin.Common"))
                .resizable()
                .frame(width: 240, height: 240)

            Text("Hi, i'm using Quicksand as Font")
                .font(.custom("Quicksand-Regular", size: 20))
                .foregroundColor(.white)

            Text("Hi, i'm using framework's Sunny Spells as Font")
                .font(.custom("SunnySpells-Regular", size: 20))

            // Panggil kode dalam Presenter sblm pakai DI
//            Text("hi, im changing my name from Dicoding to \(getProductPresenter.execute(request: "Septehabudin"))")
//            Spacer()
//            Text("hi, im changing my name from Indonesia to \(getOtherProductPresenter.execute(request: "Indonesia"))")
//            Spacer()

            Text("hi, im changing my name from Dicoding to \(self.presenter.execute(request: "Dicoding"))")
                  Spacer()

            NavigationLink {
                self.action()
            } label: {
                Text("Open To Cart")
            }
        }.navigationTitle("product_title".localized(identifier: "septehabudin.Product"))
    }
}


// seblum menggunakan injection
//extension ProductView {
//    var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
//        GetProductPresenter(_useCase: GetProductUseCase())
//    }
//
//    var getOtherProductPresenter: GetProductPresenter<String, String, GetOtherProductUseCase> {
//        GetProductPresenter(_useCase: GetOtherProductUseCase())
//    }
//}
