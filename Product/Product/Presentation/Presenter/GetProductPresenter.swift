//
//  GetProductPresenter.swift
//  Product
//
//  Created by septe habudin on 25/12/22.
//

import CorePackage

public struct GetProductPresenter<
    Request,
    Response,
    Usecase: UseCaseType
> where Usecase.Request == Request, Usecase.Response == Response {
    private let _useCase: Usecase

    public init(_useCase: Usecase) {
        self._useCase = _useCase
    }

    func execute(request: Request) -> Response {
        return _useCase.execute(request: request)
    }
}
