{ config, pkgs, ...}:

{
  home.username = "max";
  home.homeDirectory = "/home/max";
  home.stateVersion = "23.11";

  # let home-manager install and enable itself
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
	neofetch
	nnn

	#archives
	zip
	xz
	unzip
	p7zip

	#utils
	ripgrep # recursive grep
	jq #json
	yq-go # yaml
	eza # better ls
	fzf
	glow # markdown in terminal

	#networking
	mtr
	dnsutils
	ldns
	
	#misc
	cowsay
	file
	which
	tree
	gnused
	gnutar
	gawk
	zstd
	gnupg

	# nix-related
	nix-output-monitor # provides "nom" for nix but with more details

	# system tools
	btop # replaces htop
	iotop
	iftop
	strace
	ltrace
	lsof # list open files
	sysstat
	lm_sensors # for "sensors" command
	ethtool
	pciutils # lspci
	usbutils # lsusb
  ];

  # git configuration
  programs.git = {
	enable = true;
	userName = "Maxwell Spadafore";
	userEmail = "maxspad@umich.edu";
  };

  # starship config
  programs.starship = {
	enable = true;
	# TODO: Add more custom settings here
  };

  # TODO: Alacritty

  # TODO: some type of window manager/desktop
  # wayland.windowManager.hyprland.enable = true;

  # bash config
  programs.bash = {
	enable = true;
	enableCompletion = true;
	shellAliases = {
		ls = "eza";
	};
  };
}
