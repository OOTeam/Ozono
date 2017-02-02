I am the object that is used to execute code from the lesson. On top of me is executed both:
- the code from the workspace
- the tests

Every time some code is going to be executed, the following steps are followed:

- put all the objects from the lesson variables into my instance variables
- run the code
- put the objects referenced by my instance variables into the lesson variables, in case they were assigned