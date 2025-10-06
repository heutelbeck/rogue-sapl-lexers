# Rouge SAPL Lexers

Syntax highlighting for [SAPL](https://sapl.io) and SAPL-Test in Rouge/Jekyll.

## Setup

```bash
bundle install
bundle exec rake test
```

## Use in Jekyll/Just the Docs

Copy to your Jekyll project:

```bash
mkdir _plugins
copy lib\rouge\lexers\sapl.rb _plugins\
copy lib\rouge\lexers\sapl_test.rb _plugins\
```

Use in markdown:

````markdown
```sapl
policy "example"
permit
where
  subject.role == "admin";
```
````

## Development

```bash
bundle exec rake test          # Run tests
bundle exec rackup             # Visual test at http://localhost:9292
```

## License

Apache 2.0
