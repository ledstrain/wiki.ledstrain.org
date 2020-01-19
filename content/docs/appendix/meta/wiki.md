---
title: "LEDStrain Wiki"
description: meta information of LEDStrain Wiki
weight: 6
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

## Changes

{{< bootstrap-table >}}
|Date|Change|
|:--|:--|
|[June 13, 2017](https://ledstrain.org/d/240/5)|Wiki \| Jekyll static site [Deprecated]; Github  repo created|
|[November 20, 2018](https://ledstrain.org/d/463)|Wiki [Deprecated]|
|[December 27 2019](https://ledstrain.org/d/795-community-wiki)| Introduce Community Wiki, Github based|
{{< /bootstrap-table >}}

## Requests


## Issues


## Contributing

Contributing is easy!  
Menu's and Table of Content's are generated automatically

There are three ways,
* Using a front-end editor (similar to WordPress)
* Directly editing on GitHub
* Cloning the repo and making pull requests


### Editing

#### Front End

Go to https://wiki.ledstrain.org/contribute and login with GitHub.   
Note: be sure to set the status to `In Review` after saving. This causes a change request to be made.

{{< expand "Set Status" >}}
![Set Status to In Review](https://i.imgur.com/gDsHYS0.png)
{{< /expand >}}

#### Direct GitHub Edit
![Edit Icon](https://wiki.ledstrain.org/svg/edit.svg)
At the top and bottom of every page you can click on the edit icon to edit that page
This will bring you to the source file on GitHub and you can make your changes there.

#### Clone Repo
You will need:
* Hugo Extended {{< hugo-version >}} - [link](https://github.com/gohugoio/hugo/releases/tag/v{{< hugo-version >}})
* Git

Clone the repo, and start the hugo server.

```
git clone {{< param BookRepo >}}
git submodule init
git submodule update
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

Posts on LEDStrain Forum can be embedded. Posts are cached, so changes to the 
original will be updated over time.  
Either format can be used to identify which post:
* Post ID: `11714`
* Permalink: `https://ledstrain.org/d/795-community-wiki/1`

Length can be specififed to truncate content. {{< param "postlength" >}} is the default.  
length of `-1` will show the entire post, regardless of length.  

A domain can be specified, which can allow embedding content from other flarum
based forums. This is primarily useful with using Post ID.

{{< hint warning >}}
Positional arguments can be used, but cannot be combined with labeled arguments  
For example, this will work:
`{{</* forum-post 11714 */>}}`  
This will not:
`{{</* forum-post 11714 length=300 */>}}`
{{< /hint >}}

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

