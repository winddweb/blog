---
layout: post
title:  "Is It Helpful or Harmful to Include Dates in the Permalink?"
categories: coding tutorial
date: 2016-05-24 05:49
tags: jekyll seo
---
The URL of your website is sometimes overlooked, but it is worth spending a little time to set it right when you start a blog.


What Does It Look Like?
---

Let's take a look at the default setting from Jekyll. 

Note: the default setting by Jekyll is

```
# Outputting
permalink:     date
```
The actual URL for a post with categories looks like this:
`/jekyll/update/2016/05/18/welcome-to-jekyll.html`
Let me interpret it, `/category/sub-category/year/month/day/file-name.extension`. This matches the [Jekyll official document] as `/:categories/:year/:month/:day/:title.html`.

There are debates over what SEO friendly URLs are. Should or shouldn't include the category? Should the URL be as short as possible? Should it be stuffed with keywords or not? 

So there is no single rule to follow, but there are some suggestions. First, be focused. That is to say, although the length of the URL does not really matter, you should try to keep the URL focus to the theme of your page. Including the date is not necessary and will not help your SEO. Only include them when they make sense. For instance, if your website is a news site and post regularly, and the time is a relevant aspect to the reader (since it's news), then you should have dates in your URL. The same rule applies to Categories. It will not help your SEO ranking, maybe it is even harmful because it will dilute the ranking power of any other word in your URL. Unless you need the categories to help you, you should omit it.

One more thing, we should omit some words from our URL, not simply use the page/post title. Words that are often left out are: and, but, or, if, that, this, these, the, a, an, in, etc. 

Here is [an article][seo-15] from MOZ that talks about SEO suggestions if you are interested.

<p class="pullquote">
So after all, I decided to contain only the title slug in my URL.
</p>


OK. Set It Up
---
We can set our own rules for the `permalink:` in `_config.yml`.

In the [document][jk-perma-built], there are 4 built in styles by Jekyll.

- `date`: the default option, `/:categories/:year/:month/:day/:title.html`
- `pretty `: `/:categories/:year/:y_day/:title.html`
- `ordinal `: `/:categories/:title.html`
- `none` : `/:categories/:title.html`

There is also a list of variables we can use to construct our own permalink schema.

```
year, month, i_month: Month without leading zeros
day, i_day, short_year, hour, minute, second
title: from the document's filename.
slug: slugified from the document's filename
categories: The specified categories for this Post. If a post has multiple categories, Jekyll will create a hierarchy 
```

So the setting I chose is very simple. `permalink: /:slug`


Additional Care
---

<p class="pullquote">
However, using title slug as permalink may lead to some troubles.
</p>

What if I have 2 articles that happen to have the same title? When you have tons of posts, this is possible. Thankfully, Jekyll provided a way to detect this kind of errors.

```bash
# use jekyll doctor to check duplicate title issue
$ bundle exec jekyll doctor                          
Configuration file: /Users/windd/Documents/develop/@github-blog/blog/_config.yml
# No problem
  Your test results are in. Everything looks fine.

# Oops
Conflict: The URL '/_site/monthly-project-update/index.html' is the destination for the following pages: _posts/2015-03-06-monthly-project-update.markdown, _posts/2015-04-07-monthly-project-update.markdown
```


Conclusion
---
Permalinks should be focused. So leave out the dates and categories and any unnecessary parts, but at same time, remember to make it more human-readable for your audience.

{% include cus_to_do.md %}

[jk-perma]: https://jekyllrb.com/docs/permalinks/
[jk-perma-built]: https://jekyllrb.com/docs/permalinks/#built-in-permalink-styles
[seo-15]: https://moz.com/blog/15-seo-best-practices-for-structuring-urls
