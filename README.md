## [LED Strain Wiki](https://wiki.ledstrain.org)

Github Pages Build Status  
[![Actions Status](https://github.com/ledstrain/wiki.ledstrain.org/workflows/github-pages/badge.svg?branch=gh-pages)](https://github.com/ledstrain/wiki.ledstrain.org/actions)

The LED Strain Wiki uses a static site generator called [Hugo](https://gohugo.io/) with the [Book](https://themes.gohugo.io/hugo-book/) theme. It is deployed with netlify.

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
* Hugo Extended Latest Version - [link](https://github.com/gohugoio/hugo/releases/)
* Git

Clone the repo, and start the hugo server.

```
git clone https://github.com/ledstrain/wiki.ledstrain.org
cd wiki.ledstrain.org
hugo serve -wD
```

## How to format content

For a introductory guide, see here  
https://www.markdownguide.org  
For advanced formatting, the CommonMark Spec 0.29 is used. See [here](https://spec.commonmark.org/0.29/).  


Additionally, this site supports shortcodes.  

### Shortcodes

#### Forum Post Embed

Posts for LEDStrain Forum can be embedded  
`length="-1"` will show the entire post, regardless of length  
Posts are cached, so changes to the original comment will be updated over time  
```
{{</* forum-post 11714  */>}}
{{</* forum-post id=11714 domain="https://ledstrain.org" length="300"  */>}}
{{</* forum-post id=11714 length="-1"  */>}}
```

Extra shortcodes
___

<sub>([source](https://github.com/alex-shpak/hugo-book/blob/master/README.md#shortcodes))</sub>
## Shortcodes

### Hint

Hint shortcode can be used as hint/alerts/notification block. There are 3 colors to choose: `info`, `warning` and `danger`.

```tpl
{{< hint [info|warning|danger] >}}
**Markdown content**  
Lorem markdownum insigne. Olympo signis Delphis! Retexi Nereius nova develat
stringit, frustra Saturnius uteroque inter! Oculis non ritibus Telethusa
{{< /hint >}}
```

### Buttons

Buttons are styled links to internal of external pages

```
{{< button relref="/" >}}Get Home{{< /button >}}
{{< button href="https://github.com/alex-shpak/hugo-book" >}}Contribute{{< /button >}}
```

### Tabs

Useful if you want to show alternative information per platform or setting.

```
{{< tabs "uniqueid" >}}
{{< tab "MacOS" >}} # MacOS Content {{< /tab >}}
{{< tab "Linux" >}} # Linux Content {{< /tab >}}
{{< tab "Windows" >}} # Windows Content {{< /tab >}}
{{< /tabs >}}
```

### Multi column text

Organize text in 2 or more columns to use space efficiently.

```html
{{< columns >}} <!-- begin columns block -->
# Left Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Mid Content Lorem markdownum insigne...

<---> <!-- magic sparator, between columns -->

# Right Content Lorem markdownum insigne...
{{< /columns >}}
```

### Expand

Provides clickable panel that show extra hidden content.

```
{{< expand >}}
## Markdown content
{{< /expand >}}
```

