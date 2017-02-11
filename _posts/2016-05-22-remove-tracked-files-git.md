---
layout: post
title:  "How to Remove Tracked Files in Git"
date:   2016-05-22 17:47:16
categories: blog
tags: coding git
---

There are times that you want to ignore a file at some point but it has already been tracked by git. So you will add the ignore-rules in `.gitignore`. Then you find that your git just won't stop reminding you that the file has been changed.

Here's the command to remove it from the cache.

```bash
git rm -r --cached .

git add .

git commit -m "fixing .gitignore"
```


Simple and Stupid Way
---

Well, if somehow git still tracks your file. Just try to backup the local changes you have, then remove the repository and clone it back from the remote repo. The `.gitignore` should work correctly. 
