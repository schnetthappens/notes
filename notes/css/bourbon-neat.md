# Bourbon and Neat
## Install the Bourbon and Neat files into your project
**Note: you must be in your project directory when you use these commands**

```sh
$ bower install --save bourbon
$ bower install --save neat
```

Then, in your main sass stylesheet:

```scss
@import '../bower_components/bourbon/app/assets/stylesheets/bourbon';
@import '../bower_components/neat/app/assets/stylesheets/neat';
```

## Bourbon
Bourbon is a collection of SASS mixins. It is especially useful when using CSS
properties that require vendor prefixes (i.e. `-webkit-...`).

### A selection of bourbon functions and mixins
The complete list of functions and mixins is available at http://bourbon.io.

- [`em()`, `rem()`](http://bourbon.io/docs/#px-to-em)
- [`modular-scale()`](http://bourbon.io/docs/#modular-scale)
- [`tint()`, `shade()`](http://bourbon.io/docs/#tint-shade)
- [`clearfix`](http://bourbon.io/docs/#clearfix)
- [font families](http://bourbon.io/docs/#font-family)
- [HTML5 input types](http://bourbon.io/docs/#html5-input-types)
- [position shorthand](http://bourbon.io/docs/#position)
- [animation timing functions](http://bourbon.io/docs/#timing-functions)
- [CSS triangle](http://bourbon.io/docs/#triangle)

## Neat
Neat is a grid framework built on top of Bourbon.

The [examples page](http://neat.bourbon.io/examples/) shows the common usages of
the library.

### A selection of neat functions and mixing

- [outer-container](http://thoughtbot.github.io/neat-docs/latest/#outer-container):
  Used to set up the container for your grid.
- [span-columns](http://thoughtbot.github.io/neat-docs/latest/#span-columns):
  Used to make an element take up a certain number of grid columns
- [omega](http://thoughtbot.github.io/neat-docs/latest/#omega): Used to remove
  the gutter from an element or set of elements so they can fit neatly in the
  grid.
- [new-breakpoint](http://thoughtbot.github.io/neat-docs/latest/#new-breakpoint)
- [media](http://thoughtbot.github.io/neat-docs/latest/#media)
