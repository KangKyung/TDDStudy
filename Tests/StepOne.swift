//
//  SomeTest.swift
//  TestDrivenDevelopmentTests
//
//  Created by 강경 on 2022/01/15.
//

import XCTest
@testable import TestDrivenDevelopment

/*
 요구 사항

 - 주문 추가
     - 메뉴는 상수로 구성 되어 있습니다.
     - 메뉴 외에 있는 주문은 받지 않습니다.
     - 주문을 추가하고 해당 손님의 주문의 합계를 볼 수 있게 합니다.
 - 주문 계산
     - 주문을 계산하면 해당 가계의 매출이 추가됩니다.
     - 해당 주문 계산한 목록을 확인 할 수 있습니다. (?)
     - 손님의 돈이 더 많이 지불 될 시 거스름돈을 받고 가게 매출의 마이너스를 시킵니다.
     - 손님이 지불한 돈이 적을 경우 요청 메시지를 리턴 합니다.
 */

extension TestDrivenDevelopmentTests {
    
    // MARK: 주문 추가
    
    func test_주문을_추가하면_지금까지의_주문_합계를_출력() {
        let guest = Guest()
        // 지금까지의 주문 합계
        let sumOfOldOrdersPrice = guest.sumOfOrdersPrice()
        let newOrder = Order()
        // 새로운 주문 추가
        guest.addOrder(of: newOrder)
        
        // 기존 주문합계 + 새주문 가격 == 새로운 주문 추가후의 주문합계
        XCTAssertEqual(sumOfOldOrdersPrice + newOrder.price, guest.sumOfOrdersPrice())
    }
    func test_주문이_계산되면_가계의_매출이_상승() {
    }
    func test_주문이_계산되면_주문목록에_추가() {
    }
    func test_손님이_지불하는_액수가_더_많을경우_거스름돈_반환() {
    }
    func test_손님이_지불하는_액수가_더_많을경우_상승시킨_매출의_일부를_차감() {
    }
    func test_손님이_지불하는_액수가_더_적을경우_요청_메시지_리턴() {
    }
}
