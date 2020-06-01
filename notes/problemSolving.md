Notes from Problem Solving Videos
=================================
#### PEDAC
| Objective | Step | Description|
| :--- | :---  | :-----      |
| Process the Problem | Understand the Problem | <ul><li>Identify expected input and output</li><li>Make the requirements explicit</li><li>Identify rules</li><li>Mental model of the problem (optional)</li></ul> |
| | Examples/Test Case | Validate understanding of the problem |
| | Data Structure | How we represent data that we will work with when converting the input to output. |
| | Algorithm | Steps for converting input to output |
| Code with Intent | Code | Implementation of Algorithm |

* Understand the Problem:
  * Take notes while you read through and understand the problem
  * Break down the problem into individual pieces of information/requirements
  * If there are parts of the problem that are not made explicit, figure out exactly what needs to be made explicit and break it down into pieces and ask the interviewer how they should be addressed
  * Model the problem and break it down into computational language

* Examples/Test Cases:
  * Write out a number of example input cases and their corresponding expected outputs
  * helps understand the problem AND verify your solution
  * Make sure to cover all requirements
  * Think out edge cases:
    * emptiness (nil/null, "", [], {})
    * boundary conditions
    * repetition / duplication
    * upper case vs lower case (when working with strings)
    * data types
  * Consider invalid input and failures:
    * raise exceptions / report errors
    * return a special value?
  * if this is an interview problem, feel free to ask questions to further understaning or specify how a particular value or issue should be addressed

* Data Structure
  * figure out input data
  * usually will be working with strings, arrays, hashes/objects, or numbers
    * Strings:
      * concat, strip, reverse, etc
      * Regular Expression!: split, replace, match
    * Arrays:
      * iterate through the array (#each)
      * index
      * abstractions (map, reduce, select/filterr, all, etc)
    * Hashes/Objects
      * Lookup Table or dictionary
      * partition data for more efficient access downstream
    * numbers
      * math operations
  * Compound data structures (arrays within arrays, hash with array/object values, etc)

* Algorithm
  * Should be described in the language of the chosen data structure(s)
  * Need to be fluent with 
    * Strings / Regex
    * Array
      * Ruby: Enumerable
      * JavaScript: Higher Order Functions
    * Hash / Object
      * Creation (default values)
      * Access (default values)
      * Iteration
  * Verify your algorithm with your examples/test cases

* Abstraction
  * rely on language built-in abstractions: string/regex, array, hash/object
  * Avoid solving big problems - break bigger problems into small problems
  * Express the problem in 1-2 sentences, if you can't, break the problem down further until each individual chunk/small problem can be expressed in 1-2 sentences

* Interview Tips:
  * Be communicative
  * Getting to a working solution >> no solution (get it to work rather than try to impress with fancy stuff)
  * De-risking
    * check your building blocks as you progress (run code often and debug locally)
  * Manage your energy (find the hardest part of the problem and attack it first)