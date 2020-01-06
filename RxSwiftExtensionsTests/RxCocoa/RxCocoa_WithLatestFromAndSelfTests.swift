//
//  RxCocoa_WithLatestFromAndSelfTests.swift
//  RxSwiftExtensionsTests
//
//  Created by 윤중현 on 2018. 10. 12..
//  Copyright © 2018년 tokijh. All rights reserved.
//

import XCTest
import RxSwift
import RxCocoa

class RxCocoa_WithLatestFromAndSelfTests: XCTestCase {
    func testWithLatestFromAndSelf() {
        let source1 = PublishSubject<Int>()
        let source2 = Driver.just(10)
        let disposeBag = DisposeBag()
        
        var latest: Int = 0
        source1
            .asDriver(onErrorJustReturn: 0)
            .withLatestFromAndSelf(source2)
            .map({ $0 + $1 })
            .drive(onNext: { latest = $0 })
            .disposed(by: disposeBag)
        
        source1.onNext(1)
        XCTAssertEqual(latest, 11)
        
        source1.onNext(12)
        XCTAssertEqual(latest, 22)
        
        source1.onNext(40)
        XCTAssertEqual(latest, 50)
    }
}
