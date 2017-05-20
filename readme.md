# Toy Robot

## References

- https://codereview.stackexchange.com/questions/96181/robot-toy-simulator
- https://leanpub.com/toyrobot

## Run the tests

For individual test file:

```
  $ ruby test/robot.rb
```

To run all the tests:

```
  $ rake
```

## How to play

```
  $ ./bin/robot
  $ report
  $ move
  $ report
  $ exit
```

## FIX

- Fix an issue with bin script that doesn't place robot properly

# Next to do

- Allow for custom board size (or do we really need that?)
- Refactor so `Position` class uses named variables again
