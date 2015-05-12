# Most common CSS selectors
## Child Selector
The 'child selector' (`>`) will select a direct descendant that matches, but only go one level deep.

Given the following HTML:

```html
<div class="outer">
  <div class="inner">
    <div class="very-inner"></div>
  </div>
</div>
```

```css
// targets inner, but not very-inner
.outer > div {

}
```

## Descendent Selector
The 'descendent selector' (` ` i.e. a space) will select any descendent that matches, infinite levels deep.

```css
// targets both inner and very-inner
.outer div {

}
```

- [selectors](https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started/Selectors)

# More common CSS selectors
- `*` selects all elements
- `*, *::before, *::after` selects all elements and pseudoelements
- `#an-id` selects the single element with that id
- `.a-class` selects all of the elements with that class
- `X, Y` selects elements that match selector X or selector Y
- `X Y` selects the elements matching Y that are descendants of X
- tag name: selects the elements of that tag
- `a:visited`
- `a:link`
- `X:hover`
- `X + Y`:  It will select only the specified element that immediately follows the former specified element.
- `X > Y`: direct descendant, child
- `X ~ Y`: general sibling selector

