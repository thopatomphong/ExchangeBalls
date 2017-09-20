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
    var N:Int!
    var K:Int!
    var inputs = [(Ai:Int, Bi:Int)]()
    
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
    
    func exchangeBalls(N:Int, K:Int, inputs:[(Ai:Int, Bi:Int)]) -> String {
        var result:String = ""
        
        if (validateOperationsAndSets(N: N, K: K)) {
            
            //Swap Balls By Sets Times
            for _ in 1...K {
                for input in inputs {
                    //Swap Balls
                    swapBalls(input.Ai, input.Bi)
                }
            }
            
            //Get Result Text
            result = getResultText(ballNumbers)
        } else {
            result = "Incorrect Condition"
        }
        
        return result
    }
    
    func getResultText(_ array:[Int]) -> String {
        var result:String = ""
        
        for index in 1...array.count {
            
            //Add Value Ball Number To Result
            result += String(array[index - 1])
            
            //Add Space of End Value
            if array[index - 1] != array.last {
                result += " "
            }
        }

        return result
    }
}
