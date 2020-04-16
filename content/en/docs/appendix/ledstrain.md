---
title: "LEDStrain"
description: Information about LEDStrain
weight: 5
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---


## LEDStrain Wiki

### Changes

{{< bootstrap-table >}}  
|Date|Change|
|:--|:--|
|[June 13, 2017](https://ledstrain.org/d/240)|Wiki \| Jekyll static site [Deprecated]; Github  repo created|
|November 20, 2018|Wiki [Deprecated]|
|[December 27 2019](https://ledstrain.org/d/795-community-wiki)| Introduce Community Wiki, Github based|
{{< /bootstrap-table >}}  

### Requests


### Issues


### Contributing

Contributing is easy!  
Menu's and Table of Content's are generated automatically

There are three ways,
* Using a front-end editor (similar to WordPress)
* Directly editing on GitHub
* Cloning the repo and making pull requests


#### Editing

##### Front End

Go to [/contribute](https://wiki.ledstrain.org/contribute) and login with GitHub.   
Note: be sure to set the status to `In Review` after saving. This causes a change request to be made.

{{< expand "Set Status" >}}  
![Set Status to In Review](https://cdn.ledstrain.org/image/set_status_to_in_review.png)
{{< /expand >}}  

##### Direct GitHub Edit
![Edit Icon](https://wiki.ledstrain.org/svg/edit.svg)
At the bottom of every page you can click on the edit icon to edit that page  
This will bring you to the source file on GitHub and you can make your changes there.

##### Clone Repo
You will need:
* Hugo Extended {{< hugo-version >}} - [link](https://github.com/gohugoio/hugo/releases/tag/v{{< hugo-version >}})
* Git

Clone the repo and its submodules, then start the hugo server.

```
git clone --recurse-submodules {{< param BookRepo >}}
cd wiki.ledstrain.org
hugo serve -wD
```

#### Linking

This site has smart internal linking.  
For example, `tests#dithering` will link to `/docs/appendix/tests#dithering`  

Sometimes, the directory structure will change to better reflect the content it holds.  
As long as linking uses the format of `pagename#section` internal urls will always work!

Additionally, internal linking is tested, to prevent urls from becoming broken if structure is changed.


### How to format content

For a introductory guide, see here  
https://www.markdownguide.org  
[Advanced formatting](https://spec.commonmark.org/0.29/)


Additionally, this site supports shortcodes.  

#### Shortcodes

##### Forum Post Embed

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
Instead, use this:
`{{</* forum-post id=11714 length=300 */>}}`
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
##### Hint

Hint shortcode can be used as hint/alerts/notification block. There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{</* hint [info|warning|danger] */>}}  
**Markdown content**  
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{</* /hint */>}}  
```

##### Buttons

Buttons are styled links to internal of external pages

```
{{</* button relref="/" */>}}Get Home{{</* /button */>}}
{{</* button href="https://github.com/alex-shpak/hugo-book" */>}}Contribute{{</* /button */>}}
```

##### Tabs

Useful if you want to show alternative information per platform or setting.

```
{{</* tabs "uniqueid" */>}}
{{</* tab "MacOS" */>}} ## MacOS Content {{</* /tab */>}}
{{</* tab "Linux" */>}} ## Linux Content {{</* /tab */>}}
{{</* tab "Windows" */>}} ## Windows Content {{</* /tab */>}}
{{</* /tabs */>}}
```

##### Multi column text

Organize text in 2 or more columns to use space efficiently.

```html
{{</* columns */>}} <!-- begin columns block -->
## Left Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

## Mid Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

## Right Content Lorem markdownum insigne...
{{</* /columns */>}}
```

##### Expand

Provides clickable panel that show extra hidden content.

```
{{</* expand */>}}
### Markdown content
{{</* /expand */>}}
```

## LEDStrain Forum

### Changes

{{< bootstrap-table >}}  
|Date|Change|
|:--|:--|
|[August 19, 2015](https://discussions.apple.com/thread/1677617?answerId=28757594022#28757594022)|LED focused forum conceptualized|
|[July 23, 2017](https://ledstrain.org/d/151-forum-changes/8) |Forum upgraded to [v0.1.0-beta.7](https://github.com/flarum/core/releases/tag/v0.1.0-beta.7)|
|[January 16, 2019](https://ledstrain.org/d/151/12)|Forum upgraded `v0.1.0-beta.8`|
|[April 30, 2019](https://ledstrain.org/d/151/18)|Styling changes: Tables, banner hidden, centered headers|
|[July 9, 2019](https://ledstrain.org/d/151/19)|SEO optimizations made|
|[July 25, 2019](https://ledstrain.org/d/151/20)|Mobile focused CSS changes; internal / external URL coloring|
|[July 26, 2019](https://ledstrain.org/d/151/23)|upgrade to `0.1.0-beta.9`|
|[July 27, 2019](https://ledstrain.org/d/151/24)|[Tutorial](https://ledstrain.org/d/715-forum-tutorial) added; [Donations](https://donorbox.org/ledstrain) added
|[Sept 24, 2019](https://ledstrain.zulipchat.com/#narrow/stream/205604-meta/topic/Forum.20Update.20-.20Version.200.2E1.2E0-beta.2E10)| Upgrade to `Version 0.1.0-beta.10`|
|[December 2 2019](https://ledstrain.org/d/151-forum-changes/28)|Upgrade to `Version 0.1.0-beta.11`|
{{< /bootstrap-table >}}  

### Requests


### Issues

##### HTTP Redirects
{{< forum-post 11584 >}}  
{{< forum-post 11381 >}}  

##### Resolution
{{< forum-post 11604 >}}  

##### You do not have permission to do that
{{< forum-post 10967 >}}  

##### Resolution
{{< forum-post 10970 >}}  


### Forum Tutorial

LEDStrain Forum takes on a minimalist approach to posting. 
However, there are some tools available to creating your posts, available in a toolbar.

![Text Editor GUI](https://cdn.ledstrain.org/image/compose-post-toolbar.png)
{{< bootstrap-table >}}  
|Function|Action|Key|
|:-|:-|:-:|
|Preview|Returns view back to post while editing|👁️|
|Attach  |Attaches image to post by uploading through imgur|📄 |
|Header |Inputs header|`H`|
|Bold      |Sets selected text to bold|`B` |
|Italic     |Sets selected text to italic|*I* |
|Quote  |Quote the selected text|![Button for quoting selected text](https://cdn.ledstrain.org/image/quote_selected_text_button.png))
|Code    |Sets the selected text in code format for easier reading / copying|![Button for Setting code format](https://cdn.ledstrain.org/image/set_code_formatting_button.png)|
|Link      |Set a clickable link. Works on images as well|🔗 |
| List|Adds a unordered list with bullet points |![Button to create a unordered list](https://cdn.ledstrain.org/image/unordered_list_button.png)|
|List | Adds a ordered list with numbers|![Button to create a ordered list](https://cdn.ledstrain.org/image/ordered_list_button.png)|
|Emoji| Insert Twemoji based emoji |![Insert Twemoji emoji](https://cdn.ledstrain.org/image/twemoji_emoji_button.png)|
|Mention|Mention a user or post. If set, will notify the user|`@`|
{{< /bootstrap-table >}}  







___

#### Creating a post

Headers of h1, h2, and h3 are centered

```
## Header 1
### Header 2
#### Header 3
```

{{< bootstrap-table >}}  
Tables can be created.
The second row, `|:-|:-:|` indicates the justification. Left-aligned: `|:-|`, Centered: `|:-:|`, Right-Aligned: `|-:|`
```markdown
|Fruit|Count|
|:-|:-:|
|Apple|5|
|Pear|6|
```
|Fruit|Count|
|:-|:-:|
|Apple|5|
|Pear|6|
{{< /bootstrap-table >}}  
___

Lines can be created to help separate a post with either 3 underscores or 3 dashes.
```
___
---
```
___
---
Inline links `[can be created](https://ledstrain.org)` to look cleaner  
Inline links [can be created](https://ledstrain.org) to look cleaner  
Images as well  

`[![Image inline link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://ledstrain.org)`  
[![Image inline link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://ledstrain.org)  
`[![Internal Link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://ledstrain.org) [![External link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://anothersite.com)`  
[![Internal Link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://ledstrain.org) [![External Link](https://cdn.ledstrain.org/image/green_lightbulb.jpg)](https://anothersite.com)  

___
Links are colored either green or purple.  
[A local link](https://ledstrain.org)  
[A external link](https://testsite.tld)  
* Green indicate the link is *internal* and points somewhere within ledstrain.org  
* Purple indicate the link is *external* and points out to the web  

Touchscreen users will have a boundary around linked images to indicate this as well  
![Image Boundary](https://cdn.ledstrain.org/image/green-purple-box-border.png)  

___

#### Moderating

We're here to help  
If there's spam, or if you wish to split a discussion to a new thread let us know by flagging the post.  
We can also help with adjusting tags or renaming discussions   

![Flag Icon](https://cdn.ledstrain.org/image/flag_button.png)

![Demo Creating Report](https://cdn.ledstrain.org/image/demo_creating_report.gif)

___ 

#### Private Messaging
[![project chat](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://ledstrain.zulipchat.com)

Messaging and Private Messaging is provided by Zulip Chat
{{< forum-post id=10562 length=-1 >}}  

{{< forum-post 10641 >}}  

### Community Guidelines

#### Posting

Write a clear title. Try make a summary of your discussion so others know what they will be reading and discussing. No post signatures

#### Conduct

The following forms of behavior will not be tolerated:  

* Messages that are obscene, vulgar, sexually-orientated, hateful, threatening, hostile or insulting.  
* Personal attacks on others.  
* Non-Constructive feedback and support
* Spam, phishing posts, and any actions intended to deface this site  
* Attempts to abuse or expose the private information of others  
* Posts intended to harass, impersonate, or defame others  

{{< hint info >}}  
Your discussion may be moved to a more appropriate tag at a moderator's discretion.
{{< /hint >}}  

#### Commercial

To help improve awareness and access to this issue, a minimal commercial presence is allowed.\
Any commercial presence must be through a personal account representing a company.\
For example, a username LEDstrain is not permitted, however a username Slacor representing LEDstrain is.\
Each commercial interest may have one discussion for their product  

#### Medical

Due to the nature of the forum advice may be given related to improving or managing your health\
Discretion is upon the user to critically evaluate all information posted on the forum\
For your safety, consult with your doctor before taking any supplements or medication.  

### Logging in / Troubleshooting

If you're having difficulty logging in, unable to post or other issues, reach out for help here\
[https://ledstrain.zulipchat.com](https://ledstrain.zulipchat.com/#narrow/stream/205604-meta)

Alternatively, support can be reached here: {{< cloakemail address="support@ledstrain.org" >}}  
{{< hint warning >}}   
This is a non-reply email  
We may reach out to you with a different email  
{{< /hint >}}  

## LEDStrain Chat

### Changes

{{< bootstrap-table >}}  
|Date|Change|
|:--|:--|
|[January 7, 2019](https://ledstrain.org/d/524)|XMPP Chat implemented [Deprecated]|
|[July 31, 2019](https://ledstrain.org/d/722)|[Chat implemented](https://ledstrain.zulipchat.com/) (Hosted by Zulip)|
{{< /bootstrap-table >}}  

### Requests

### Issues
