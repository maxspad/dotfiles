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
	ripgrep
	jq
	yq-go
	eza
	fzf

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
}
