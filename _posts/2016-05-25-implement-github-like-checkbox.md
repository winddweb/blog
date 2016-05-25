---
layout: post
title:  "Implement Github Checkboxes"
categories: coding tutorial
tags: markdown jekyll github
date: 2016-05-25 04:37:56 -0700
---

When I start using Jekyll, I typed "- [ ] todo" to add a todo list item. But it is not rendered. OK, I understand, it is not a standard markdown syntax. I tried to tune the settings of Jekyll's markdown engine, kramdown, but with no luck.

So I chose another way.
<p class="pullquote">
The filters of Liquid template is very versatile.
</p>

{% raw %}`{{ content }}`{% endraw %} is the output syntax from Liquid template, which prints the post's content rendered from markdown file. After `|` symbol comes the `replace` filter. It will replace list item starts with `[ ]` with special classes and an checkbox element. Similar procedure for the `[x]`, and replace it with done-list-item.

**`_layouts/post.html`**

{% raw %}
```html
<div class="post-content markdown-body" itemprop="articleBody">
    {{ content | replace: '<li>[ ]', 
        '<li class="box task-list-item">
        <input type="checkbox" class="task-list-item-checkbox" disabled>' | 
    replace: '<li>[x]', 
        '<li class="box_done task-list-item">
        <input type="checkbox" class="task-list-item-checkbox" value="on" disabled checked>'  }}
  </div>
```
{% endraw %}

Next, let's add the corresponding styles for the checkbox. I chose to add an additional scss file, because I want to keep the original stylesheet as it is for the moment. In your case, you can simply add this to the `_sass/_base.scss`

**`css/main.scss`**

```scss
// Import partials from `sass_dir` (defaults to `_sass`)
@import
        "base",
        "layout",
        "syntax-highlighting",
        "custom-styles" // add this line
;
```

**`_sass/_custom-styles.scss`**

```scss
// styles for checkbox
.box,
.box_done,
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

Let's try it
---

**Markdown**

```md

- [ ] First todo item.
- [x] Write a blog for adding github checkbox feature.

```

**Output**

- [ ] First todo item.
- [x] Write a blog for adding github checkbox feature.

Awesome, thank you
---
Nice job. See you in next one.

{% include cus_to_do.md %}

