# Using Robot Framework with AppiumLibrary and Sauce Labs

Hello, if you are reading this README you are likely interested in using RobotFramework with Sauce Labs for testing native mobile devices. Let's learn together!

The goal of this repository and workshop is to show the following best practices:

- Starting with failing tests and working toward passing tests
- Writing custom keywords instead of directly using library keywords
- Creating appropriate setup and teardown keywords for connecting to Sauce Labs

Let's see how we can do this!

## Installation and Prerequistes

This project requires Python 3.7+ and has been developed using Python 3.9. 

First create a virtual environment running

```
python3 -m venv venv3
```

If you are on Mac/Linux you can enable this virtual environment by running

```
source venv3/bin/activate
```
and on Windows by running
```
venv3\Scripts\activate.bat
```

Install dependedencies by running
```
pip install -r requirements.txt
```


