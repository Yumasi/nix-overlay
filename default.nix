self: super: rec {
  boxfort = self.callPackage ./boxfort.nix {};
  criterion = self.callPackage ./criterion.nix {};
}
