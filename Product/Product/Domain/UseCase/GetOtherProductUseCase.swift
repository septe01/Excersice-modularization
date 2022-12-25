//
//  GetOtherProductUseCase.swift
//  Product
//
//  Created by septe habudin on 25/12/22.
//

import CorePackage


// buat sebuah abstraction di mana sebuah kelas tidak perlu tahu implementasi dari kelas lain
public struct GetOtherProductUseCase: UseCaseType {
    public typealias Request = String
    public typealias Response = String

    public init() {}


    public func execute(request: Request) -> Response {
        return request.uppercased() // string to uppercase
    }

}
