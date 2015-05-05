# HTML 101
- HTML is a language used to describe the structure of web pages.
- CSS is a language used to describe the appearance of web pages.
- An element is composed of three parts: an opening tag, content, and a closing
  tag. There are a few elements, like `<img>`, that are an exception to this
  rule.
- All html documents should have tags for `<html>`, `<head>`, and `<body>`.
- `<head>` is information *about* the document.
- `<body>` is the content of the document.
- Elements can have attributes as well. Attributes are written inside the
  opening tag of an element, e.g. the 'src' in `<img src="image.jpg">`
- Most whitespace (tabs, returns, spaces) is ignored by the browser, but you can
  use it to make your HTML more readable.

# Links
- You can create a link element with the `<a>` tag. You specify the location to
  link to in the `href` attribute of the tag and the title in the content, e.g.
  `<a href="http://theironyard.com">The Iron Yard</a>`
- You can use words or an image as the content for a link.

# Paths (for src and href)
- A relative path points to another file on your website, relative to the page
  that you are typing the link in.
- In a path, `..` indicates the parent directory.
- The parts of the path should be separated with the `/` character.
- Links that are pointed to an incorrect page will show an error when you click
  on them, images that are pointed to an incorrect path will show a little
  broken image icon.
- You shouldn't use spaces in the names you give to files or folders you'll be
  using in paths.

# Block vs inline
- Block level elements like `<p>`, div, ol, ul, li and `<blockquote>` appear on
  their own line and expand all the way to the left and right of their
  container.
- Inline elements like a, img, and span only take up the width and height of
  their content and appear inline with other inline elements.
- You can think of block elements as paragraphs in a book while inline elements
  are words and letters.

# Semantics
- You should always use the element that is closest to meaning to the type of
  your content, even if the appearance is incorrect. You can adjust the
  appearance with CSS.

# Void elements
- Some elements are "void", meaning they don't have a closing tag. The most
  common examples are `<img>` and `<link>`

# Lists
- If you are creating a list of items, like a navigation bar or a list of links,
  it would not be best practice to create a list manually in a `<p>`, etc.
  Instead you should always use a list element (.e.g. `<ol>`, `<ul>`) and the
  items should be contained by a list item tag (`<li>`).

# Images
- Use the `<img>` tag to add an image to your page. You specify the source of
  the image with the `src` attribute. The source can be a file on your site, or
  an external URL.

# Validation
- The validator at http://html5.validator.nu is a free online service that
  checks pages for compliance with standards.
