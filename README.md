# homebrew-taps

Single Homebrew tap for StevenJPx2's brew-distributed tools.

## Install

```sh
# sourcefed — monitor service CLI
brew install stevenjpx2/taps/sourcefed

# audiobook-studio — turn a book PDF into a chaptered .m4b audiobook (macOS / Apple Silicon)
brew install stevenjpx2/taps/audiobook-studio
abs doctor

# Audiobook Studio GUI (.app; model downloads on first run)
brew install --cask stevenjpx2/taps/audiobook-studio-app
```

## Maintenance

The `audiobook-studio` formula and `audiobook-studio-app` cask have their
`url`/`sha256` bumped automatically by the [audiobook-studio release
workflow](https://github.com/StevenJPx2/audiobook-studio/blob/main/.github/workflows/release.yml)
on each `v*` tag. Do not hand-edit them.
