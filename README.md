# Mastery quizzes

## Setup

1. Fork this [mastery-quizzes repository](https://github.com/makersacademy/mastery-quizzes).

2. Send @maryrosecook a message on Slack to tell her that you've forked the repo.  (She needs to set you up on the admin system.)

3. Make sure you use Ruby version `2.4.1`.  To check your Ruby version, run the command below.

```
$ ruby -v
```

4. If required, use [RVM](https://rvm.io/) to install version `2.4.1`.

5. Install bundler.  To do this, run:

```
$ gem install bundler
```

6. Install the gems required by this repository. To do this, run:

```
$ cd path/to/root/of/this/repo
$ bundle install
```

## Instructions

1. Work through the numbered chapters (beginning with `chapter1`).

2. Work through a chapter.

3. When you've absorbed the content of the chapter thoroughly, [get the quiz](#get-a-quiz).

4. Complete the quiz.  Instructions [here](#how-to-complete-a-quiz).

5. If you get stuck and can't complete a quiz, contact @maryrosecook on Slack and she give you feedback to help you learn what you need to complete the quiz.

6. Once you have submitted your quiz answers, and your answers have been verified as correct, continue to the next chapter.

Your aim is to get through all the chapters, but the most important thing for your learning is to only move on from a chapter once you've completed the quiz.

## How to complete a quiz

* Each question is in a separate file e.g. `chapter1/quiz1/question_1.rb`.

* A typical question file might look like this:

```ruby
# Write a program that adds 7 to 5, multiplies that by 10, subtracts 2 from all that, divides all that by 4, adds 1,000,000 to all that and `puts`es the result.

# Your answer here.
```

* To answer a question, type code that solves the question into the question file.

* You can run the question file like a normal ruby program `e.g. ruby question_1.rb`.

### 1. Check that your answers pass the automated tests

* To check your answer for a question:

```
$ cd chapter1/quiz1
$ rspec spec/question_1_spec.rb
```

* To check your answers for all the questions in a quiz:

```
$ cd chapter1/quiz1
$ rspec
```

* In order to be judged correct, your code must pass all the automated tests for the quiz.

### 2. Commit and push your answers

* Use git to commit and push your answers to your GitHub repo.

### 3. Submit and verify your answers

* [Use the quiz server to submit and verify your answers](#submit-and-verify-quiz-answers).

## Quiz server

### Submit and verify quiz answers

```
$ cd path/to/root/of/repo
$ rake submit_and_verify_quiz_answers github-username chapter-number quiz-number
$ (e.g. rake submit_and_verify_quiz_answers timmydev 1 1)
```

* In order to be judged correct, your code must 100% of the automated tests for the quiz.
* If you get a confusing response when you run this command, just Slack @maryrosecook for help!

### Get a quiz

* You can only get a quiz after you've successfully submitted and verified answers for the previous quiz.

```
$ cd path/to/root/of/repo
$ rake get_quiz githubusername chapter-number quiz-number
$ (e.g. rake get_quiz timmydev 1 1)
```

* If you get a confusing response when you run this command, just Slack @maryrosecook for help!