# Factorials, combined #

## Intro ##

I started hearing about the “Y combinator” from many directions. Since functional programming is appealing to me, I’d like to get to know more about this mythical beast.

There is [an exhaustive article][link] on this topic. It explains the idea on a factorial function, mostly using Scheme. I started with the two approaches using Ruby, going only one bit at a time.

## Howto ##

Install the dependencies.

```
$ bundle install
```

Run the tests.

```
$ ruby test.rb
```

Run the non-recursive factorial.

```
$ ruby run.rb 20
```

## Progress ##

* [x] Write a non-recursive factorial using a loop
* [x] Write a recursive factorial using a named function
* [ ] Write a recursive factorial using only lambdas
* [ ] ???
* [ ] Profit

## Links ##

* [The Y Combinator (Slight Return)][link] by Mike Vainer

[link]: https://mvanier.livejournal.com/2897.html