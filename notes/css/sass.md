# Sass

CSS "pre-processors" such as LESS, Sass and Compass compile a language into CSS.

CSS, which can be read by a browser, doesn't provide all the features we want as
web developers, and thus programs were created to turn higher-level languages
into CSS.

This creates a happy balance between developer tools and support in browsers;
thus we get to code with some more tools in our toolbelt, and the browser still
gets to just interpret CSS.

The (arguably) most popular of these CSS preprocessors is SCSS ("Sassy CSS"),
which is a derivative of the original Sass language.

## Rule #1: SCSS provides variables

```scss
$font-stack:    Helvetica, sans-serif;
$primary-color: #333;

body {
    font: 100% $font-stack;
    color: $primary-color;
}
```

## Rule #2: SCSS lets you nest CSS declarations

```scss
nav {
    ul {
        margin: 0;
        padding: 0;
        list-style: none;
    }

      li { display: inline-block; }

    a {
        display: block;
        padding: 6px 12px;
        text-decoration: none;
    }
}
```

## Rule #3: partials and import

You can create SCSS files that have small, dedicated uses. For instance, imagine
using one file to exclusively store font styles. This is a great way to
modularize your CSS so this module can be reused in other projects.

A partial is simply a SCSS file named with a leading underscore. You might name
it something like `_partial.scss`, and is imported into other files with the
@import directive.

```scss
// _reset.scss

html,
body,
ul,
ol {
    margin: 0;
    padding: 0;
}
```

```scss
/* base.scss */

@import 'reset';

body {
    font: 100% Helvetica, sans-serif;
    background-color: #efefef;
}
```

## Rule #4: mixins and extensions

Mixins exist to avoid repeating a lot of stuff.

```scss
@mixin border-radius($radius) {
  -webkit-border-radius: $radius;
     -moz-border-radius: $radius;
      -ms-border-radius: $radius;
          border-radius: $radius;
}

.box { @include border-radius(10px); }
```

Extensions exist to create subclasses of classes, etc.

```scss
.message {
    border: 1px solid #ccc;
    padding: 10px;
    color: #333;
}

.success {
    @extend .message;
    border-color: green;
}

.error {
    @extend .message;
    border-color: red;
}

.warning {
    @extend .message;
    border-color: yellow;
}
```
