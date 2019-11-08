self: super: rec {
  boxfort = self.callPackage ./boxfort {};
  criterion = self.callPackage ./criterion.nix {};
  iosevka-nerd = self.callPackage ./iosevka-nerd.nix {};
}
