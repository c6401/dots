{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        bat
        btop
        clickhouse
        clickhouse-cli
      ];
    };
  };
}

