# GitHub Pages

To deploy a site to GitHub Pages, you simple need to create a branch named
`gh-pages` that points to the commit that would like to deploy. For example:

```sh
$ git checkout master
$ git checkout -b gh-pages
$ git push -u origin gh-pages
```

Or for an existing `gh-pages` branch:

```sh
$ git checkout gh-pages
$ git merge master
$ git push
```

It is imperative that there is a file named `index.html` in the `gh-pages`
branch so that GitHub Pages has a file to serve.
