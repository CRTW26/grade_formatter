Spec:

School reports- how students have done on tests
string of csv grades
use strings to compose summary report 


Input | Output 

Traffic light grading

Green Amber Red | count the number of occurences 

Green: 3  
Amber: 1 
Red: 2 
Uncounted: 2

Seperated on new lines- returning single string 

Input could be capitalized, but not always 
Invalid input- could be mispelled- false category with sum of invalid inputs 

### Plan ###

> seperate that into an array 
> iterate through each element in that list 
> count for each grade 
> if element in that list matches one of the grades add to the count 
> if no match add to uncounted 
> return the counts formatted as string

### Considerations ###

>case sensitivity 
