---
layout: post
title:  "Fix the fenced code block inside ordered list"
date:   2016-05-25 03:45 
categories: coding tutorial
tags: jekyll markdown
---

<p class="pullquote">
TL;DR: Be careful, you need to align them perfectly.
</p>

> What I want to archive is the nested code snippet inside ordered list item, so the numbers count continuously.

First version
---

This is when I just type normally as I always do in other markdown files. 

**Markdown**

```md
1. Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2. Second sentence. Bla bla bla.

    ```bash
    ruby --version
    ruby 2.X.X
    ```
```

**Output**

1. Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2. Second sentence. Bla bla bla.

    ```bash
    ruby --version
    ruby 2.X.X
    ```

The structure I used was `number` + `dot` + `space` + `content`. But the output is rendered as an inline code like this, `bash ruby --version ruby 2.X.X`

The correct way
---

**Markdown**

<p class="pullquote" markdown="1">
Note: ^ points out a space I added, to align the list item with the fenced code block precisely which starts with <mark>4</mark> spaces.
</p>

```md
1.  Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
   ^    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2.  Second sentence. Bla bla bla.
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
```

**Output**

1.  Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2.  Second bla bla

    ```bash
    ruby --version
    ruby 2.X.X
    ```

Conclusion
---
I don't know if this is a common issue (or maybe it is the standard?). Anyway, I got what I want. Perfect.

{% include cus_to_do.md %}
