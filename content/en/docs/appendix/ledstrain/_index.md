---
title: "LEDStrain"
description: Information about LEDStrain
weight: 5
# bookFlatSection: false
# bookToc: 6
# bookHidden: false
---

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

Length can be specified to truncate content. {{< param "postlength" >}} is the default.  
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

There is a internal PMing system available. Once logged in, click on Private Discussions -> Discuss privately in order to PM another member

[![project chat](https://img.shields.io/badge/zulip-join_chat-brightgreen.svg)](https://ledstrain.zulipchat.com)

Alternatively, Zulip Chat can be used
{{< forum-post id=10562 length=-1 >}}  

{{< forum-post 10641 >}}  

### Community Guidelines

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
However, these conditions are required:
* Personal account representing a commercial interest.
* One discussion for each commerical presence to advertise from.
* Engagement with community. Only posting promotional links is not permitted.


#### Medical

Due to the nature of the forum advice may be given related to improving or managing your health\
Discretion is upon the user to critically evaluate all information posted on the forum\
For your safety, consult with your doctor before taking any supplements or medication.  

### Account Deletion
Users may [request](#logging-in--troubleshooting--requests) to have their account deleted.  
To request for an account to be deleted, the User **must** email from their listed email address
 as well as verify understanding of the below information. Requests in forum will be referred here.

Deleting a user account includes the following personal identifying information
* Email
* Username
* Profile picture
* Bio or other "profile meta information"
* Posts that contain User personal information (upon request and User must provide permalinks)

This does not include
* Discussions the User created
* Posts the User created

### Logging in / Troubleshooting / Requests

Support can be reached here: {{< cloakemail address="admin@support.xyzz.work" query="subject=Support with LEDStrain&body=Hi,%0D%0A%0D%0AMy username is:%0D%0A%0D%0A%0D%0AI need help with:%0D%0A%0D%0A%0D%0AThank you!" >}}  
