
import Foundation

// INPUT
// Loop forever until we get good input
var validInput = "" // Outside the loop -- we can use it later
prompt: while 1 == 1 {
    
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
    
    // Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    checking: for individualCharacter in givenInput {
        
        // Print the character were looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" :
            continue checking   // OK go to next character in the string
        default:
            continue prompt     // Stop looking, we've found bad input
            
        }
        
    }
    
    // If we got to this point we know the input is good
    validInput = givenInput
    break    // quit the while loop and begin the PROCESS section

}

// PROCESS
// Now we have valid input that can be processed according tp
// the remaining requirements of the scenario
print(validInput)
var countOfGoodLetters = 0
for letter in validInput {
    
    // Check each letter to make sure its IHOSZXN
    print(letter)
    if letter == "I" || letter == "O" || letter == "H" || letter == "S" || letter == "X" || letter == "N"  {
    
    // Good - keep checking (continue the loop)
        countOfGoodLetters += 1
        continue
 
        }
    
}

// OUTPUT
// If we got here, guaranteed this is a word with only acceptable letters
if countOfGoodLetters == validInput.count {
    print("YES")
} else {
    print("NO")
}















