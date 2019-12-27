Netlify Build Status  
[![Netlify Status](https://api.netlify.com/api/v1/badges/a106316a-79b7-4e17-b5cb-afd4a92c112f/deploy-status)](https://app.netlify.com/sites/peaceful-hawking-b271df/deploys)

The LED Strain Wiki uses a static site generator called [Hugo](https://gohugo.io/) with the [Book](https://themes.gohugo.io/hugo-book/) theme

## Contributing

Contributing is easy!  
Go to the page you would like to edit, and click on ![](https://wiki.ledstrain.org/svg/edit.svg) `Edit this page`


## How to format content

Goldmark Markdown is used so for advanced formatting, see [here](https://spec.commonmark.org/0.29/).  
For a introductory guide, see here  
https://www.markdownguide.org


Additionally, this site supports these shortcodes  
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

