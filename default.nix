with import <nixpkgs> {}; {
    trisEnv = stdenv.mkDerivation {
        name = "tris-env";
        buildInputs = [ stdenv
                        # Haskell dependencies
                        ghc
                        stack
                        cabal-install
                        mesa
                        freeglut
                      ];
        LD_LIBRARY_PATH="${mesa}/lib:${freeglut}/lib";
    };
}
