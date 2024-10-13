//
//  File.swift
//  
//
//  Created by Ahmed alnaqah on 2024-10-13.
//

import Foundation

let breeds = [
            DogBreed(id: 1, name: "Golden Retriever", size: "Large"),
            DogBreed(id: 2, name: "French Bulldog", size: "Small"),
            DogBreed(id: 3, name: "German Shepherd", size: "Large")
        ]

let breedDetails = [
            DogBreedDetails(
                id: 1,
                name: "Golden Retriever",
                size: "Large",
                lifeExpectancy: "10-12 years",
                temperament: "Friendly, Intelligent, Devoted",
                origin: "Scotland",
                activityLevel: "High"
            ),
            DogBreedDetails(
                id: 2,
                name: "French Bulldog",
                size: "Small",
                lifeExpectancy: "10-12 years",
                temperament: "Playful, Adaptable, Alert",
                origin: "France",
                activityLevel: "Low"
            ),
            DogBreedDetails(
                id: 3,
                name: "German Shepherd",
                size: "Large",
                lifeExpectancy: "9-13 years",
                temperament: "Confident, Courageous, Intelligent",
                origin: "Germany",
                activityLevel: "High"
            )
        ]
