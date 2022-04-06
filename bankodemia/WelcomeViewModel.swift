//
//  WelcomeViewModel.swift
//  bankodemia
//
//  Created by Hamon on 05/04/22.
//

import Foundation

class WelcomeViewModel {
    
    private lazy var onlyProbeUseCase: OnlyProbeUseCase? = nil
    
    init(onlyProbeUseCase: OnlyProbeUseCase) {
        self.onlyProbeUseCase = onlyProbeUseCase
    }
    
    
    func onlyProbe() {
        onlyProbeUseCase?.onlyProbe()
    }
    
}
