{ config, pkgs, lib, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "michaell";
  home.homeDirectory = "/home/michaell";

  home.packages = [
      pkgs.kitty
      pkgs.neovim
      pkgs.scrot
	  pkgs.pfetch
	  pkgs.python39
	  pkgs.gutenprint
      pkgs.pavucontrol
	  pkgs.qbittorrent
	  pkgs.feh
	  pkgs.xfce.thunar
	  pkgs.rustc
	  pkgs.cargo
	  pkgs.spotify
	  pkgs.python39Packages.nose
	  pkgs.python39Packages.pytest
	  pkgs.pypy3
	  pkgs.klavaro
	  pkgs.gimp
	  pkgs.etcher
    ];

    
  services.picom = {
  	enable = true;
  	shadow = true;
  	shadowOpacity = "0.75";
  };


  services.redshift = {
      enable = true;
      latitude = 55.15402;
      longitude = 61.42915;
    };
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";
}
