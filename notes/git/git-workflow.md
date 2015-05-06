Git Workflow
============

A guide for programming within version control.

Create a Repo
-------------

To create a repo, you can start either locally or on GitHub. If you already have
files you've created, you might want to start locally. Otherwise, it's nice to
start on GitHub because it allows you to easily add a `.gitignore`, a
`README.md`, and a license.

## Starting a new repo locally

1. Make sure that your present working directory (`pwd`) is the project
   directory where you want to work on your files.
2. `$ git init .`. This will create a repository in the current directory.
3. `$ hub create <project-name>`. This will create a repository on GitHub with
   the name you specify. E.g. `$ hub create 1.0-My-Project`.
4. Create a README.md (it can be empty, or just have the name of the project) in
   your text editor.
5. `$ git add .`
6. `$ git commit -m "Initial commit"`
7. `$ git push -u origin master`

## Starting a new repo on GitHub
1. Click the + > New Repository button in the GitHub interface.
2. Give the repository a good name, a "Node" `.gitignore`, and an MIT license.
3. Copy the "SSH URL" that is on the right hand side of the repository page.
   ![](copy-ssh-url.png)
4. `$ git clone <url>`, pasting the url you just copied to clone the repository
   to your computer.

Maintain a Repo
---------------

* Avoid including files in source control that are specific to your
  development machine or process (e.g. `.DS_Store`). You can ignore these files
  with [`.gitignore`](https://help.github.com/articles/ignoring-files/).
* Don't work on the master branch after the initial commit, do all work in a
  feature branch.
* Only merge a branch into master once you have received a :+1:.
* Delete local and remote feature branches after merging.
* Rebase frequently to incorporate upstream changes.
* Use a [pull request] for code reviews.

[pull request]: https://help.github.com/articles/using-pull-requests/

Write a Feature
---------------

Create a local feature branch based off master.

    git checkout master
    git pull
    git checkout -b <branch-name>

Prefix the branch name with your initials.

When feature is complete, stage the changes.

    git add --all

When you've staged the changes, commit them.

    git status
    git commit

Write a [good commit message]. Example format:

    Present-tense summary under 50 characters

    * More information about commit (under 72 characters).
    * More information about commit (under 72 characters).

    http://project.management-system.com/ticket/123

Share your branch.

    git push origin <branch-name>

Submit a [GitHub pull request].

[good commit message]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[GitHub pull request]: https://help.github.com/articles/using-pull-requests/

## Summary
1. `$ git checkout -b <branch-name>`
2. Do your work
3. `$ git add --all`
4. `$ git status`
5. `$ git commit`
6. `$ git push` or `$ git push -u origin <branch-name>`
