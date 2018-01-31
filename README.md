# file-embed-exp

This project demonstrates high memory usage during compilation in the
Template Haskell part.

The program tries to embed a 10MB and 25MB file into the executable
using code from the `file-embed` package. During compilation the
memory usage appears to go over 4GB! A similar issue is observed with
the `wai-app-static` package too.

## Run

To demonstrate just clone this repo and in the checkout directory run
`make && cabal build && cabal run`. It works on Linux and uses `dd`
utility.

The repo uses cabal 2.0.0.1 and GHC 8.2.2
