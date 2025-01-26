# spellcheck-cli

A tiny command line script to check the spelling of text on macOS

## Benefits

- Uses native spell-checking service built into macOS
- Implemented as a single file shell script (only 62 lines)

## System Requirements

- macOS
- Swift

## Installation

```
git clone git@github.com:Tinder/spellcheck-cli.git
cd spellcheck-cli
make install
```

## Usage Example

```
echo "This sentance has two mispelled words." | spellcheck
```

Output:

```
sentance -> sentence
mispelled -> misspelled dispelled
```

### JSON Format

Provide the `--json` argument to format output as JSON.

```
echo "This sentance has two mispelled words." | spellcheck --json
```

Output:

```
[
  {
    "word" : "sentance",
    "guesses" : [
      "sentence"
    ]
  },
  {
    "word" : "mispelled",
    "guesses" : [
      "misspelled",
      "dispelled"
    ]
  }
]
```

## Language Support

Compare the following results of using `en` (English) versus `es` (Spanish) to see how the language choice affects the word guesses.

**English**

```
echo "lllamo" | spellcheck --language en
```

Output:

```
lllamo -> llama
```

**Spanish**

```
echo "lllamo" | spellcheck --language es
```

Output:

```
lllamo -> llamó llamo
```

### Available Languages

To output the list of available languages:

```
spellcheck --help
```

### Environment

The `SPELLCHECK_CLI_LANGUAGE` environment variable may be set to specify the language.

## Contributing

While interest in contributing to this project is appreciated, it has been open 
sourced solely for the purpose of sharing with the community. This means we are 
unable to accept outside contributions at this time and pull requests will not 
be reviewed or merged. To report a security concern or vulnerability, please 
submit a GitHub issue.

## License

Licensed under the [Match Group Modified 3-Clause BSD License](
https://github.com/Tinder/spellcheck-cli/blob/main/LICENSE
).
