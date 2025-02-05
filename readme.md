
# Project Title

Night Writer

## Description

In this project we’ll implement systems for generating Braille-like text from English characters and the reverse.

The general pattern is that we will run the program, providing an existing file for input, and the name of a nonexistent file for output, and the program will provide us with a confirmation:

This will all be run from the command line.

## Areas of Focus

- Practice breaking a program into logical components
- Testing components in isolation and in combination
- Applying Enumerable techniques in a real context
- Reading text from and writing text to files


## Challenges

1. Writing and reading to a .txt file
2. Working with and converting to/from strings, arrays, multidimensional arrays
3. Formatting the output, to match braille convention(keeping letters together)
4. Limited time to complete project
5. Fully solo project

## Growth

1. Use of modules when no state is required
2. Used a for loop to loop through a slice! method automatically
3. Extensive testing of specific display patterns including \n
4. Use of Pry to troubleshoot code, and not to use !!! to exit all the time
5. Passing arguments from methods to methods
6. FileIO and reading/writing to files
7. Chunking problems into smaller(helper) issues

### Executing program

Program is run from your command line
```
ruby lib/night_writer message.txt braille.txt
```

```
ruby lib/night_reader message.txt braille.txt
```

## Authors

Contributors names and contact info

Daniel Halverson
GitHub: dhalverson

## Version History

* 0.1
    * Initial Release
