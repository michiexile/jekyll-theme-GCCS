# jekyll-theme-GCCS

Welcome to your new Jekyll theme! In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

TODO: Delete this and the text above, and describe your gem


## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-GCCS"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-GCCS
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-theme-GCCS

## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.

The theme is built with `_data`-driven menus and footer content, and with the intention that page **content** be easy to edit without extensive knowledge of Jekyll or the theme setup.

### Navigation Top Menu

To populate the top menu, create the file `_data/nav.yml` and make sure it starts with
```yaml
items:
  - [first item]
  - [second item]
...
```

Each item has one key named `text`, and may additionally have either keys `href` (for external links), `link` (for internal links) or `dropdown` (to include a dropdown menu).

The `dropdown` key needs to point to:

* `id` - a string used to identify _this_ dropdown in the mechanics of opening and closing dropdown menus and accessibility support.
* `items` - a list of items, on the same format as above: each item has a `text` and may have `href` or `link` defined. Note: nested dropdowns are not supported.

Example:
```yaml
items:
  - link: index.md
    text: Home
  - text: Computer Science
    dropdown:
      id: cs-dropdown
      items:
        - link: admissions.md
          text: Admissions
        - link: index.md
          text: Other stuff
  - text: Data Science
    dropdown:
      id: ds-dropdown
      items:
        - link: admissions.md
          text: Admissions
        - link: index.md
          text: Other stuff
```

### Navigation Side Menu

Not yet implemented.

### Footer

The footer has the CUNY and GC logos hard-coded in place, and then allows us to fill the rest of the footer dynamically. This is done by creating the file `_data/footer.yml` and make sure it contains:

* `left` - a key pointing to a list of items to list in a left-hand footer column
* `middle` - a key pointing to a list of items to list in a middle footer column
* `right` - a key pointing to a list of items to list in  a right-hand footer column

Each items in each of the lists has a key `text`, and may also have keys `href` (for external links) or `link` (for internal links).

Example:
```yaml
left:
  - text: "Computer Science / Data Science Program"
  - text: "Room 4219"
  - text: "CUNY Graduate Center"
  - text: "365 5th Avenue"
  - text: "New York NY 10016"
middle:
  - title: CUNY Graduate Center
  - href: https://www.gc.cuny.edu
    text: Graduate Center
  - href: https://www.gc.cuny.edu/computer-science
    text: Computer Science (official)
  - href: https://www.gc.cuny.edu/data-science
    text: Data Science (official)
  - href: https://www.gc.cuny.edu/admissions
    text: Admissions
right:
  - title: Computer Science / Data Science
  - link: index.md
    text: Homepage
```


## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/michiexile/jekyll-theme-GCCS>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-GCCS.gemspec` accordingly.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

