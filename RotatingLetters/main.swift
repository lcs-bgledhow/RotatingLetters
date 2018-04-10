//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT

// Loop forever until we get good input
while 1 == 1 {
    
    // Prompt the user
    print("Input word is? ")
    
    // Wait for input
    // Test #1 Make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we get here, input is nil
        // Prompt again
        continue   // continue with the next iteration of while loop
        
    }

    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30  {
        
        //If we got here, input is too short or it's too long
        continue // prompt again
   
    }
    
    // If we got to this point we know the input is good
    break    // quit the while loop and begin the PROCESS section

}













