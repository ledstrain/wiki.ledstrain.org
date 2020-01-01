---
title: Home
type: docs
---

# Wiki

## Contributing

Contributing is easy!  

There are three ways,
* Using a front-end editor (similar to WordPress)
* Directly editing on GitHub
* Cloning the repo and making pull requests


**Front End**:
Go to https://wiki.ledstrain.org/contribute and login with GitHub. After you save your changes, a change request will be made to the website.

**Direct GitHub Edit**:
On every page you can click on ![](https://wiki.ledstrain.org/svg/edit.svg) `Edit this page`  
This will bring you to the source file on GitHub and you can make your changes there.

**Clone Repo**:  
You will need:
* Hugo Extended {{< hugo-version >}} - [link](https://github.com/gohugoio/hugo/releases/tag/v{{< hugo-version >}})
* Git

Clone the repo, and start the hugo server.

```
git clone {{< param BookRepo >}}
cd wiki.ledstrain.org
hugo serve -wD
```

## Forum and Wiki Changes

{{< bootstrap-table >}}
|Date|Change|
|:--|:--|
|[August 19, 2015](https://discussions.apple.com/thread/1677617?answerId=28757594022#28757594022)|LED focused forum conceptualized|
|[August 27, 2015](https://ledstrain.org/d/1) ~[2](https://discussions.apple.com/thread/1677617?answerId=28893295022#28893295022)|LED Strain Begins|
|[June 13, 2017](https://ledstrain.org/d/240/5)|Wiki \| Jekyll static site [Deprecated]; Github  repo created|
|[July 23, 2017](https://ledstrain.org/d/151-forum-changes/8) |Forum upgraded to [v0.1.0-beta.7](https://github.com/flarum/core/releases/tag/v0.1.0-beta.7)|
|[November 20, 2018](https://ledstrain.org/d/463)|Wiki [Deprecated]|
|[January 7, 2019](https://ledstrain.org/d/524)|XMPP Chat implemented [Deprecated]|
|[January 16, 2019](https://ledstrain.org/d/151/12)|Forum upgraded `v0.1.0-beta.8`|
|[April 30, 2019](https://ledstrain.org/d/151/18)|Styling changes: Tables, banner hidden, centered headers|
|[July 9, 2019](https://ledstrain.org/d/151/19)|SEO optimizations made|
|[July 25, 2019](https://ledstrain.org/d/151/20)|Mobile focused CSS changes; internal / external URL coloring|
|[July 26, 2019](https://ledstrain.org/d/151/23)|upgrade to `0.1.0-beta.9`|
|[July 27, 2019](https://ledstrain.org/d/151/24)|[Tutorial](https://ledstrain.org/d/715-forum-tutorial) added; [Donations](https://donorbox.org/ledstrain) added
|[July 31, 2019](https://ledstrain.org/d/722)|[Chat implemented](https://ledstrain.zulipchat.com/) (Hosted by Zulip)|
|[Sept 24, 2019](https://ledstrain.zulipchat.com/#narrow/stream/205604-meta/topic/Forum.20Update.20-.20Version.200.2E1.2E0-beta.2E10)| Upgrade to `Version 0.1.0-beta.10`|
|[November 19 2019](https://ledstrain.org/d/767-site-migration-transferred)|Server transition|
|[December 2 2019](https://ledstrain.org/d/151-forum-changes/28)|Upgrade to `Version 0.1.0-beta.11`|
|[December 27 2019](https://ledstrain.org/d/795-community-wiki)| Introduce Community Wiki, Github based|
{{< /bootstrap-table >}}

## How to format content

For a introductory guide, see here  
https://www.markdownguide.org  
For advanced formatting, the CommonMark Spec 0.29 is used. See [here](https://spec.commonmark.org/0.29/).  


Additionally, this site supports these shortcodes  
<sub>([source](https://github.com/alex-shpak/hugo-book/blob/master/README.md#shortcodes))</sub>
## Shortcodes

### Hint

Hint shortcode can be used as hint/alerts/notification block. There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{</* hint [info|warning|danger] */>}}
**Markdown content**  
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{</* /hint */>}}
```

### Buttons

Buttons are styled links to internal of external pages

```
{{</* button relref="/" */>}}Get Home{{</* /button */>}}
{{</* button href="https://github.com/alex-shpak/hugo-book" */>}}Contribute{{</* /button */>}}
```

### Tabs

Useful if you want to show alternative information per platform or setting.

```
{{</* tabs "uniqueid" */>}}
{{</* tab "MacOS" */>}} # MacOS Content {{</* /tab */>}}
{{</* tab "Linux" */>}} # Linux Content {{</* /tab */>}}
{{</* tab "Windows" */>}} # Windows Content {{</* /tab */>}}
{{</* /tabs */>}}
```

### Multi column text

Organize text in 2 or more columns to use space efficiently.

```html
{{</* columns */>}} <!-- begin columns block -->
# Left Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Mid Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Right Content Lorem markdownum insigne...
{{</* /columns */>}}
```

### Expand

Provides clickable panel that show extra hidden content.

```
{{</* expand */>}}
## Markdown content
{{</* /expand */>}}
```

