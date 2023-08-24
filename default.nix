{ pname, version, stdenv, pkgs, qtbase, wrapQtAppsHook, qt5compat, qtpositioning, qtserialport }: 

let
   zip_name = "qtdesignstudio-2.3.1.zip";
in
stdenv.mkDerivation {
  
  inherit pname version; 

  src = ./.;

  buildInputs = with pkgs; [

    gcc-unwrapped
    cairo
    pango
    gtk3
    atk
    gdk-pixbuf
    pulseaudio
    alsa-lib

    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-bad

    xorg.libxkbfile
    xorg.libxshmfence

    nss_latest
    mysql80

  ] ++ [ 

    qt5compat
    qtbase
    qtpositioning
    qtserialport 

  ];

  unpackPhase = "true";

  nativeBuildInputs = with pkgs; [ 
    autoPatchelfHook 
    unzip
  ] ++ 
  [ wrapQtAppsHook ]; 

  installPhase = ''
    mkdir -p $out
    unzip $src/${zip_name} -d $out
  '';

}

