//
//  RxSwift_WithLatestFrom.swift
//  RxSwiftExtensions
//
//  Created by 윤중현 on 2018. 10. 12..
//  Copyright © 2018년 tokijh. All rights reserved.
//

import RxSwift

extension ObservableType {
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType>
        (_ source1: O1, _ source2: O2) -> Observable<(O1.Element, O2.Element)> {
        return self.withLatestFrom(source1)
            .withLatestFrom(source2) { ($0, $1) }
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               ResultType>
        (_ source1: O1, _ source2: O2, resultSelector: @escaping (O1.Element, O2.Element) throws -> ResultType) -> Observable<ResultType> {
        return self.withLatestFrom(source1, source2)
            .map({ try resultSelector($0.0, $0.1) })
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType>
        (_ source1: O1, _ source2: O2, _ source3: O3) -> Observable<(O1.Element, O2.Element, O3.Element)> {
        return self.withLatestFrom(source1, source2)
            .withLatestFrom(source3) { ($0.0, $0.1, $1) }
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType,
                               ResultType>
        (_ source1: O1, _ source2: O2, _ source3: O3, resultSelector: @escaping (O1.Element, O2.Element, O3.Element) throws -> ResultType) -> Observable<ResultType> {
        return self.withLatestFrom(source1, source2, source3)
            .map({ try resultSelector($0.0, $0.1, $0.2) })
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter source4: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType,
                               O4: ObservableConvertibleType>
        (_ source1: O1, _ source2: O2, _ source3: O3, _ source4: O4) -> Observable<(O1.Element, O2.Element, O3.Element, O4.Element)> {
        return self.withLatestFrom(source1, source2, source3)
            .withLatestFrom(source4) { ($0.0, $0.1, $0.2, $1) }
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter source4: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType,
                               O4: ObservableConvertibleType,
                               ResultType>
        (_ source1: O1, _ source2: O2, _ source3: O3, _ source4: O4, resultSelector: @escaping (O1.Element, O2.Element, O3.Element, O4.Element) throws -> ResultType) -> Observable<ResultType> {
        return self.withLatestFrom(source1, source2, source3, source4)
            .map({ try resultSelector($0.0, $0.1, $0.2, $0.3) })
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter source4: Observable source.
     - parameter source5: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType,
                               O4: ObservableConvertibleType,
                               O5: ObservableConvertibleType>
        (_ source1: O1, _ source2: O2, _ source3: O3, _ source4: O4, _ source5: O5) -> Observable<(O1.Element, O2.Element, O3.Element, O4.Element, O5.Element)> {
        return self.withLatestFrom(source1, source2, source3, source4)
            .withLatestFrom(source5) { ($0.0, $0.1, $0.2, $0.3, $1) }
    }
    
    /**
     Merges observable sequences into one observable sequence by combining each element from self with the latest element from the sources, if any.
     
     - seealso: [combineLatest operator on reactivex.io](http://reactivex.io/documentation/operators/combinelatest.html)
     
     - parameter source1: Observable source.
     - parameter source2: Observable source.
     - parameter source3: Observable source.
     - parameter source4: Observable source.
     - parameter source5: Observable source.
     - parameter resultSelector: Function to invoke for each element from the self combined with the latest element from the second source, if any.
     - returns: An observable sequence containing the result of combining elements of the self with the latest elements from the sources, if any, using the specified result selector function.
     */
    public func withLatestFrom<O1: ObservableConvertibleType,
                               O2: ObservableConvertibleType,
                               O3: ObservableConvertibleType,
                               O4: ObservableConvertibleType,
                               O5: ObservableConvertibleType,
                               ResultType>
        (_ source1: O1, _ source2: O2, _ source3: O3, _ source4: O4, _ source5: O5, resultSelector: @escaping (O1.Element, O2.Element, O3.Element, O4.Element, O5.Element) throws -> ResultType) -> Observable<ResultType> {
        return self.withLatestFrom(source1, source2, source3, source4, source5)
            .map({ try resultSelector($0.0, $0.1, $0.2, $0.3, $0.4) })
    }
}
