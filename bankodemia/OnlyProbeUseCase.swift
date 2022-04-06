//
//  OnlyProbeUseCase.swift
//  bankodemia
//
//  Created by Hamon on 05/04/22.
//

import Foundation

internal class OnlyProbeUseCaseImpl: OnlyProbeUseCase {
    
    init() {
        
    }
    
    func onlyProbe() {
        print("this is inly probe for di use case")
    }
    
    
}

protocol OnlyProbeUseCase {
    func onlyProbe()
}
