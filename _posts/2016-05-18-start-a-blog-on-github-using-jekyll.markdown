---
layout: post
title:  "How this blog is set up"
date:   2016-05-17 22:26:10 -0700
categories: coding tutorial
tags: jekyll meta-blog
---

Before I acutally write any blogs, I decide to record all the steps to set up this blog. It will be helpful for who wants to do this in the future (or even for myself if I want to start another blog).

OK. Without discussing why I chose Github plus jekyll as the blog platform, let's go ahead and create the blog.

Hosting with github pages
---
First of all, I am going to use github pages to host my blog. So if you don't know what is github pages and how it works, check out [this link][git-pages]. 

In a nutshell, github provides hosting service, one website as user's page and one website per project.

- `{username}/{username}.github.io` is the repo for your user's page at link https://username.github.io (although in my case I have the repo name in `winddweb.github.com` becasue I created it before github changed its hosting domain to `.io`)
- in your Repo `{username}/{repo-name}`, create a `gh-pages` branch and it will serve as the container for your project website at [https://username.github.io/repo-name]().

I will create my blog at a new repo named `blog`. So it will be [https://winddweb.github.io/blog](https://winddweb.github.io/blog)


What is Jekyll
---
[Jekyll][jekyll] is an open source tool that builds **static** website from text(markdown) renderer, dynamic templates/partials and even some powerful third party plugins. It is the engine behind Githhub Pages, that's why it is perfect for building our pages and **blogs** hosted by Github's server for free.


Requirements
---

1.  Check your Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```

2.  Install [bundler][bundler], which is a Ruby gem package manager.

    ```bash
    gem install bundler
    # Installs the Bundler gem
    ```

Create a new Repository
---

1.  If for some reason you don't have git installed, get it [here][get-git]

2.  Create a repo called `blog`

    ```bash
    git init blog
    Initialized empty Git repository in /Users/windd/develop/blog/.git/
    # Creates a new file directory on your local computer, initialized as a Git repository
    ```

3.  Change directories to the new repository I just created:

    ```bash
    cd blog
    # Changes the working directory
    ```
    
4.  Since my local repository is a Project pages site, create a new gh-pages branch:

    ```bash
    git checkout -b gh-pages
    Switched to a new branch 'gh-pages'
    # Creates a new branch called 'gh-pages', and checks it out
    ```

Install Jekyll using Bundler
---

1.  Create a `Gemfile` in my local Jekyll site repo with the following contents `~/blog/Gemfile
    
    ```
    source 'https://rubygems.org'
gem 'github-pages', group: :jekyll_plugins
    ```

2.  Install dependencies.
    
    ```bash
    bundle install
    Fetching gem metadata from https://rubygems.org/............
    Fetching version metadata from https://rubygems.org/...
    Fetching dependency metadata from https://rubygems.org/..
    Resolving dependencies...
    ```

Generate Jekyll site
---
    
1.  Push the local repo to remote repo.
    You can do it using a Github GUI app, such as `SouceTree` or using command line tools. Here I already created my `blog` repository in github, the link is `https://github.com/winddweb/blog.git`
    
    ```bash
    # stage all files
    git add .
    # commit staged changes
    git commit -m "First commit"  
    # add remote origin
    git remote add origin https://github.com/winddweb/blog.git
    # push changes to remote
    git push origin gh-pages 
    
    Counting objects: 5, done.
    Delta compression using up to 8 threads.
    Compressing objects: 100% (4/4), done.
    Writing objects: 100% (5/5), 1.36 KiB | 0 bytes/s, done.
    Total 5 (delta 0), reused 0 (delta 0)
    To https://github.com/winddweb/test-to-delete.git
     * [new branch]      gh-pages -> gh-pages

    ```


2.  Initiate a new Jekyll site

    ```bash
    bundle exec jekyll new . --force
    New jekyll site installed in /Users/windd/develop/blog.
    ```
    
3.  Build/serve the Jekyll site
    
    ```bash
    # cd into the root dir, /blog/ in my case
    # run this command
    bundle exec jekyll serve
    
    Configuration file: /Users/octocat/my-site/_config.yml
           Source: /Users/octocat/my-site
      Destination: /Users/octocat/my-site/_site
Incremental build: disabled. Enable with --incremental
     Generating...
                   done in 0.309 seconds.
Auto-regeneration: enabled for '/Users/octocat/my-site'
Configuration file: /Users/octocat/my-site/_config.yml
   Server address: http://127.0.0.1:4000/
 Server running... press ctrl-c to stop.

    ```
    
    Now if you go to the browser and type in http://127.0.0.1:4000/. Ta-da, the website is there. 

{% include image.html
            img="/assets/Screen Shot 2016-05-18 at 12.55.38 AM.png"
            title=""
            caption="Screen Shot of the default website from Jekyll at http://127.0.0.1:4000/"
            url="" %}


> If you have any problems regarding setting up Jekyll, you may find it helpful here: [Github's help page for Jekyll][github-jekyll].
> Remeber to run `bundle update` from time to time, since the world is changing fast and the `github-pages` may be updated frequently that you need to keep up with it.


Next Stop
---

To prevent this post getting to long, I will stop here, as I already have the working website locally.  


However, if I push the gh-pages branch to the remote repository at this point, I will be able to see a working website at address [https://winddweb.github.io/blog](https://winddweb.github.io/blog), maybe with some problems(such as incorrect CSS style). Because there's some settings we need to change, for example, the site_baseurl). I will discuss it in the next post.

See you in the next one.


---

Mission in Progress
---

- [x] Create the Repository & Website
    - [x] Install Dependencies
    - [x] Create a repository
    - [x] Build a Jekyll website
- [ ] Customize the Blog
    - [ ] Modify config YML
        - [ ] Modify base URL
    - [ ] Add _drafts folder
    - [ ] Fix the Checkbox 
    - [ ] Add images to my post
    - [ ] Change the About page
    - [ ] Change a theme
    - [ ] Add comments functionality
    - [ ] Custom 404 page

[get-git]: https://help.github.com/articles/set-up-git/
[git-pages]: https://pages.github.com
[jekyll]: http://jekyllrb.com/docs/home/
[github-jekyll]: https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/
[ruby]: https://www.ruby-lang.org/en/downloads/
[bundler]: http://bundler.io/
