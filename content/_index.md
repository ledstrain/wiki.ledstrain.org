---
title: Home
type: docs
---

## Contributing

Contributing is easy!  
Go to the page you would like to edit, and click on ![](https://wiki.ledstrain.org/svg/edit.svg) `Edit this page`  
The *first* time you change a page, there are a couple extra steps
{{< expand First-Contribution >}}
###  Edit Page
---
![](https://i.imgur.com/7utAKxT.png)  
The first time you edit a page, you will be asked to fork the repo. This allows you to make changes
---
![](https://i.imgur.com/I57TcIU.png)  
---
Change the file as you wish
![](https://i.imgur.com/v47Npur.png)  
---
When you are happy with the changes and wish to submit it, propose the file change
![](https://i.imgur.com/Yw0WWHE.png)  
---
If it's a green checkmark, create the pull request
![](https://i.imgur.com/uxFvPOm.png)  

If it looks good - it'll be accepted
{{< /expand >}}

Advanced:  
Hugo Extended v0.62.0 [release](https://github.com/gohugoio/hugo/releases) is used.  

```
git clone https://github.com/ledstrain/wiki.ledstrain.org
cd wiki.ledstrain.org
hugo serve -wD
```

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

