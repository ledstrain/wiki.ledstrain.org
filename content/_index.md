---
title: LEDStrain Wiki
description: Wiki for LEDStrain
type: docs
---

Welcome to the LEDStrain Wiki!  
If we have a green badge, the site should be ok!  
[![Actions Status](https://github.com/ledstrain/wiki.ledstrain.org/workflows/github-pages/badge.svg)](https://github.com/ledstrain/wiki.ledstrain.org)

Interested in contributing? [See below](#contributing)  

#### What is LEDStrain?

The [Forum](https://ledstrain.org/), Wiki and [Chat](https://ledstrain.zulipchat.com/) are all here to help with the impact electrical devices have on our health.  
All are free to use and are community based!  


#### Existing Content  

A lot of useful information is available on the [forum](https://ledstrain.org). Selected content is [embedded through shortcodes](#forum-post-embed) to make it more accessible and ease access.  
You can identify existing content with a light blue background. Every post has its discussion title and author provided, to allow you to jump into any post on the forum!  

{{< forum-post id=11714 length=60 >}}


## Contributing

Contributing is easy!  

There are three ways,
* Using a front-end editor (similar to WordPress)
* Directly editing on GitHub
* Cloning the repo and making pull requests

### Editing

#### Front End

{{< hint danger >}}
Currently not functioning - [Issue](https://github.com/ledstrain/wiki.ledstrain.org/issues/11)
{{< /hint >}}

Go to https://wiki.ledstrain.org/contribute and login with GitHub.   
Note: be sure to set the status to `In Review` after saving. This causes a change request to be made.

{{< expand "Set Status" >}}
![Set Status to In Review](https://i.imgur.com/gDsHYS0.png)
{{< /expand >}}

#### Direct GitHub Edit
On every page you can click on ![Edit Icon](https://wiki.ledstrain.org/svg/edit.svg) `Edit this page`  
This will bring you to the source file on GitHub and you can make your changes there.

#### Clone Repo
You will need:
* Hugo Extended {{< hugo-version >}} - [link](https://github.com/gohugoio/hugo/releases/tag/v{{< hugo-version >}})
* Git

Clone the repo, and start the hugo server.

```
git clone {{< param BookRepo >}}
cd wiki.ledstrain.org
hugo serve -wD
```

### Linking

This site has smart internal linking.  
For example, `tests#dithering` will link to `/docs/appendix/tests#dithering`  

Sometimes, the directory structure will change to better reflect the content it holds.  
As long as linking uses the format of `pagename#section` internal urls will always work!

Additionally, internal linking is tested, to prevent urls from becoming broken if structure is changed.


## How to format content

For a introductory guide, see here  
https://www.markdownguide.org  
[Advanced formatting](https://spec.commonmark.org/0.29/).


Additionally, this site supports shortcodes.  

### Shortcodes

#### Forum Post Embed

Posts for LEDStrain Forum can be embedded  
`length="-1"` will show the entire post, regardless of length  
Posts are cached, so changes to the original comment will be updated over time  

Either format can be used
* Post ID: `11714`
* Permalink: `https://ledstrain.org/d/795-community-wiki/1`
```
{{</* forum-post 11714  */>}}
{{</* forum-post id=11714 domain="https://ledstrain.org" length="300"  */>}}
{{</* forum-post id=11714 length="-1"  */>}}
{{</* forum-post "https://ledstrain.org/d/795-community-wiki/1"  */>}}
```
{{< forum-post 11714  >}}


Extra shortcodes
___

<sub>([source](https://github.com/alex-shpak/hugo-book/blob/master/README.md#shortcodes))</sub>
#### Hint

Hint shortcode can be used as hint/alerts/notification block. There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{</* hint [info|warning|danger] */>}}
**Markdown content**  
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{</* /hint */>}}
```

#### Buttons

Buttons are styled links to internal of external pages

```
{{</* button relref="/" */>}}Get Home{{</* /button */>}}
{{</* button href="https://github.com/alex-shpak/hugo-book" */>}}Contribute{{</* /button */>}}
```

#### Tabs

Useful if you want to show alternative information per platform or setting.

```
{{</* tabs "uniqueid" */>}}
{{</* tab "MacOS" */>}} # MacOS Content {{</* /tab */>}}
{{</* tab "Linux" */>}} # Linux Content {{</* /tab */>}}
{{</* tab "Windows" */>}} # Windows Content {{</* /tab */>}}
{{</* /tabs */>}}
```

#### Multi column text

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

#### Expand

Provides clickable panel that show extra hidden content.

```
{{</* expand */>}}
## Markdown content
{{</* /expand */>}}
```

