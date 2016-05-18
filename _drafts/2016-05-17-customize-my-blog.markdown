---
layout: post
title:  "Customize my blog"
date:   2016-05-17 20:43:15 -0700
categories: jekyll update
---

Adding a Navigation
---

Change a Theme
---

Implement Github Checkboxes
---

```html
<!-- _layouts/post.html -->
<div class="post-content markdown-body" itemprop="articleBody">
    {{ content | replace: '<li>[ ]', '<li class = "box task-list-item"><input type="checkbox" class="task-list-item-checkbox" disabled>' | replace: '<li>[x]', '<li class = "box_done task-list-item"><input type="checkbox" class="task-list-item-checkbox" value="on" disabled checked>'  }}
  </div>

```

```scss
// Import partials from `sass_dir` (defaults to `_sass`)
@import
        "base",
        "layout",
        "syntax-highlighting",
        "custom-styles" // add this line
;
```

```scss
// _sass/_custom-styles.scss
.box {
    list-style-type: none;
}

.box_done {
    list-style-type: none;
}

.task-list-item {
  list-style-type: none;
}

.task-list-item input {
  margin: 0 0.2em 0.25em -1.6em;
  vertical-align: middle;
}

.task-list-item+.task-list-item {
  margin-top: 3px;
}
```

Fix the fenced code block inside ordered list
---

> Be careful, you need to align them perfectly.

```markdown
1. Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```

```

1. Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2. Second

```md
1. *Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2. Second
```

1.  Check Ruby version. If it's not 2.0.0 or higher, [install it][ruby].
    
    ```bash
    ruby --version
    ruby 2.X.X
    ```
2.  Second

Add image to your post
---

1.  add image.html to _includes/
2.  add css to scss
3.  add images to /assets/
