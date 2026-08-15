# homebrew-tap
Homebrew Tap repository for my personal tools

[![bump](https://github.com/enuesaa/homebrew-tap/actions/workflows/bump.yaml/badge.svg)](https://github.com/enuesaa/homebrew-tap/actions/workflows/bump.yaml)

## Usage
```bash
brew install enuesaa/tap/cpbuf
```

## Dev Commands
```bash
# Install Ruby
rbenv install 4.0.6
rbenv local 4.0.6
rbenv rehash
ruby --version

# Setup
bundle install
rake rbsinstall
rake check

# Run
rake run
```
