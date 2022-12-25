//
//  GetProductUseCase.swift
//  Product
//
//  Created by septe habudin on 25/12/22.
//

import CorePackage

public struct GetProductUseCase: UseCaseType {
    public typealias Request = String
    public typealias Response = String

    public init() {}


    public func execute(request: Request) -> Response {
        // Example of business logic, reversing a string!

        return String(request.reversed()) // string reverse
    }

}

