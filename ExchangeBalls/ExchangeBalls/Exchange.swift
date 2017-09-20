//
//  Exchange.swift
//  ExchangeBalls
//
//  Created by Patomphong Wongkalasin on 9/20/2560 BE.
//  Copyright © 2560 ReedUs TechReedUS. All rights reserved.
//

import Foundation

class Exchange {
    
    var ballNumbers : [Int] = [1, 2, 3, 4, 5, 6, 7, 8]
    
    func validateOperationsAndSets(N:Int, K:Int) -> Bool {
        return (N >= 1 && N <= 50) && (K >= 1 && K <= Int(pow(Double(10), Double(9))))
    }
    
    func validateAiAndBi(_ Ai:Int, _ Bi:Int) -> Bool {
        return ((Ai >= 1 && Ai <= 8) && (Bi >= 1 && Bi <= 8) && Ai != Bi)
    }
    
    func swapBalls(_ indexA:Int, _ indexB:Int) {
        if validateAiAndBi(indexA, indexB) {
            swap(&ballNumbers[indexA - 1], &ballNumbers[indexB - 1])
        }
    }
}
