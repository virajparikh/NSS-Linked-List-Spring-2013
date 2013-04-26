The following is our first Ruby test-driven development exercise in Nashville Software School, taught by Eliza Brock.  It involves thinking about linked lists as a data structure and passing a series of pre-defined tests to make the data structure work.

test/test__linked__list__item.rb:

tests 1-5: storing a payload in an item, adding items, defining new items and the last item, and comparing items for sorting purposes.

test/test__linked__list.rb:


tests 6-8: adding and getting items

tests 9-15: defining size, last and to_string methods

tests 16-25, bonus round: removing items

tests 26-32: indexing

tests 33-46: sorting  

The problems are solved in lib/linked__list__item.rb and lb/linked_list.rb

-Viraj Parikh


NSS-Linked-List
===============

This is the exercise for week 2 day 3.

Instructions
-----------

  1. Read about unit testing at the following links:
    * http://en.wikipedia.org/wiki/Test-driven_development
    * http://www.extremeprogramming.org/rules/unittests.html
  2. Fork this repository and clone your fork
  3. cd into the NSS-Linked-List folder on your computer
  4. Run `rake` to run the test suite
  5. Make the test suite pass by implementing the LinkedList and LinkedListItem classes
    * Choose one test at a time to work on
    * Once the tests pass, you should refactor and clean up your code
  6. Push your implementation up to github *after* we've gone over it in class.


More Information
----------------

The tests for the project are in the /tests directory.

The stubbed classes that you are to implement are in the /lib directory.

I have numbered the unit tests to give you a hint at the easiest implementation order.
