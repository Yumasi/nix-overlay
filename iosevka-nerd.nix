{ lib, fetchzip }:

fetchzip {
  name = "iosevka-nerdfonts-2.0.0";

  url = https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Iosevka.zip;

  sha256="1b8agwll5safqzxcf80sinxwhgqmrh3jh2arvskshvll29dzigp2";

  postFetch = ''
    mkdir -p $out/share/fonts/truetype
    unzip -j $downloadedFile \*.ttf -d $out/share/fonts/truetype
  '';

  meta = with lib; {
    description = ''
      Nerd Fonts is a project that attempts to patch as many developer targeted
      and/or used fonts as possible. The patch is to specifically add a high
      number of additional glyphs from popular 'iconic fonts' such as Font
      Awesome, Devicons, Octicons, and others.
    '';
    homepage = https://github.com/ryanoasis/nerd-fonts;
    license = licenses.mit;
    maintainers = with maintainers; [ ];
  };
}
