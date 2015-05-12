# Hidden files

By default, in Finder, any files that begin with a period (`.`) are hidden. For
example, a file named `.gitignore` would not appear in Finder. There is a
terminal command that allows you to show/hide these files in Finder. **You might
have to quit and relaunch Finder by holding alt and right-clicking on its app
icon to make these take effect**.

## Show hidden files

`$ defaults write com.apple.finder AppleShowAllFiles YES`

## Hide hidden files

`$ defaults write com.apple.finder AppleShowAllFiles NO`

## Additional Resources
To create shortcuts for these commands, check out this article:
http://ianlunn.co.uk/articles/quickly-showhide-hidden-files-mac-os-x-mavericks/
