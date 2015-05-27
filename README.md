# Learn To Program
For submitting exercises from the Chris Pine Learn to Program Book

If you would like to run the tests associated with each chapter or even individual exercies you can do so as follows.  We use the RSpec library to test the code is working properly.  The RSpec library is available as a Ruby 'gem', which you can install in your computer by typing the following at the command line prompt:

```sh
$ gem install rspec
```

Once you have rspec installed as above, ensure that you have navigated to the root directory of this learn_to_program repo, e.g. 

```sh
cd /Users/JohnDoe/Projects/MakersAcademy/learn_to_program
```

Then if you'd like to check, say, your solution for the chapter 9 'ask' program you can run the following command:

```sh
rspec spec/ch09/ask_spec.rb
```

You might find the output of the command a little different to interpret, but in general the output will have a green colour when the test is passing, and a red colour when some part of the test is failing.  At this stage it is *not* necessary for you to understand how RSpec works, or even be able to make all the tests pass.  We just provide these notes in case you are interested in running the tests locally.

If you are curious feel free to inspect the contents of files like spec/ch09/ask_spec.rb - the contents are pure Ruby, but they use parts of the RSpec library that will make them look very unfamiliar.  You'll be covering RSpec in some detail in the week 1 of the main Makers Academy course, so if this all seems to complicated, just leave it for now, and focus on your best effort to write the code for the Learn to Program exercises.

Remember, don't spend more than an hour on each exercise.  This week the critical thing is to work through all the chapters and do your best on the exercies, but not to spend hours and hours stuck on a particular problem.  If you can't complete an exercise within a reasonable amount of time, please feel free to move on.

Of course you can always ask your mentor for help and come back to exercises later when you have an insight, but please don't feel compelled to spend time on exercises at the expense of working through the individual chapters and trying out the code within them by typing it into your own editor and running it on your own computer with Ruby.
