# TriangleValidator

This project provides a script that counts the number of valid triangles in a file, where

> In a valid triangle, the sum of any two sides must be larger than the remaining side. For example, the "triangle" given above is impossible, because 5 + 10 is not larger than 25.

See:
http://adventofcode.com/2016/day/3

See data/input.txt for an example of the file format.

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
