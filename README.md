# TriangleValidator

This project implements a class to validate triangle specifications, in the form of side lengths.

See:
http://adventofcode.com/2016/day/3

## Installation

See .ruby-version for the expected Ruby version (2.3.3).

You can install Ruby any way you wish, though [rbenv](https://github.com/rbenv/rbenv) and it's companion [ruby-build](https://github.com/rbenv/ruby-build#readme) are an easy way to do it.

Then install bundler:

```bash
gem install bundler
```

Then install the project dependencies:

```bash
bundle install
```

## Running the script

```bash
./bin/triangle_validator path/to/file.txt
```

For example:

```bash
./bin/triangle_validator data/input.txt
```

## Running tests

```bash
bundle exec rspec spec/
```
