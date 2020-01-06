//
//  UIScrollView.swift
//  RxSwiftExtensions
//
//  Created by tokijh on 2018. 8. 14..
//  Copyright © 2018년 tokijh. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UIScrollView {
    public var contentSize: Observable<CGSize> {
        return self.observeWeakly(keyPath: \.contentSize, options: [.initial, .new]).compactMap({ $0 })
    }
    
    public var scrollableVertical: Observable<Bool> {
        return Observable.combineLatest(bounds, contentSize) { $0.height < $1.height }
    }
    
    public var scrollableHorizontal: Observable<Bool> {
        return Observable.combineLatest(bounds, contentSize) { $0.width < $1.width }
    }
}
