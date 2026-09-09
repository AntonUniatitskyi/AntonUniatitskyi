{
  description = "Development environment for github profile";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
      pkgsFor = system: import nixpkgs { inherit system; };
    in {
      devShells = forAllSystems (system:
        let
          pkgs = pkgsFor system;
        in {
          default = pkgs.mkShell {
            buildInputs = with pkgs; [
              nodejs
            ];

            shellHook = ''
              export NPM_CONFIG_PREFIX="$PWD/.npm-global"
              export NPM_CONFIG_CACHE="$PWD/.npm-cache"
              export PATH="$PWD/.npm-global/bin:$PATH"

              mkdir -p "$NPM_CONFIG_PREFIX/lib" "$NPM_CONFIG_PREFIX/bin" "$NPM_CONFIG_CACHE"

              echo "❄️ Окружение для readme-aura готово."
              echo "Для старта пиши: npx readme-aura init"
            '';
          };
        }
      );
    };
}