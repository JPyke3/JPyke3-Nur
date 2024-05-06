{ fetchFromGitHub, rustPlatform, lib }:
{
	rustPlatform.buildRustPackage rec {
		pname = "kanata";
		version = "v1.6.1";
		
		src = fetchFromGitHub {
			owner = "jtroo";
			repo = "kanata";
			rev = "v1.6.1";
			sha256 = "";
		};

		cargoHash = "";

		meta = {
			description = "Improve keyboard comfort and usability with advanced customization";
			homepage = "https://github.com/jtroo/kanata";
			license = lib.licences.lgpl3Only;
			maintainers = [
				jpyke3
			];
		};
	};
}
