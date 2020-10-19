//
//  BeanDetail.swift
//  l10n
//
//  Created by Benyamin on 10/19/20.
//

import Foundation

struct BeanDetail {
    let name: String
    let description: String
    let price: Double
    let roastDate: Date
    let likes: Int
    
    static func mock() -> BeanDetail {
        return BeanDetail(name: "Civet Coffee Bean",
                          description:
                            """
                            These gourmet coffee beans are considered by some to be the best in the world, while others won't go near them. There's controversy over the process of farming these beans, with animals being mistreated and kept in cages with a diet of force-fed coffee beans. Not only is this terrible for the creature, but without a robust diet, the digestive system doesn't create a proper "Kopi Luwak" coffee.
                            """,
                          price: 300000,
                          roastDate: Date(),
                          likes: 777)
    }
}
