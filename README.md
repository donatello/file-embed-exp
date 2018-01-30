# file-embed-exp

This project demonstrates high memory usage during compilation in the
Template Haskell part.

The program tries to embed a 10MB and 25MB file into the executable
using the `file-embed` package. During compilation the memory usage
appears to go over 4GB! A similar issue is observed with the
`wai-app-static` package too.

## Run

To demonstrate just clone this repo and use run `make`. It works on
linux and uses the Haskell Stack tool and the Linux `dd` utility.
