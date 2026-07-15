class Celestsp < Formula
  include Language::Python::Virtualenv

  desc "Celestial TSP is a Python script that calculates the optimal order of celestial bodies for observation based on their coordinates."
  homepage "https://github.com/rioriost/celestsp"
  url "https://github.com/rioriost/celestsp/releases/download/0.3.0/celestsp-0.3.0.tar.gz"
  sha256 "849340ef1c4dbbec33f248f17e0a55f362e40909619919ec380425d936c32632"
  license "MIT"

  depends_on "python@3.14"
  resource "astropy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a6/34/074f367d5699a1008b24c50acc1539f05f2cfc881b1901f4b110d57eae20/astropy-8.0.1-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "222f0b9837e79fd3d101e6d4e4579e3aa98c490000bb01e35cd32fd3e3c12bf5"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ac/80/69a84af0b35d55a859cde38e16b71553840a156bdf7dc4b767ec2b2d2829/astropy-8.0.1-cp311-abi3-macosx_10_9_x86_64.whl"
      sha256 "24813c764d5ea111e7f716127121e22a0cfe233ca1eac2ed23c4a3848390610e"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/fa/14/6f4427419f8a02e1d0a885fb64d8d4454c5d443627aa7cb1a3a36e16abb7/astropy-8.0.1-cp311-abi3-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "fa11d56855e10107ea2231a6b6a33dbf1edbea6890adf34634c1f1d8f25c5a5a"
    else
      url "https://files.pythonhosted.org/packages/a6/34/074f367d5699a1008b24c50acc1539f05f2cfc881b1901f4b110d57eae20/astropy-8.0.1-cp311-abi3-macosx_11_0_arm64.whl"
      sha256 "222f0b9837e79fd3d101e6d4e4579e3aa98c490000bb01e35cd32fd3e3c12bf5"
    end
  end
  resource "astropy-iers-data" do
    url "https://files.pythonhosted.org/packages/7b/54/121240c06fff63d358f2a96187e927d05628fdf933a84246151954e95c7a/astropy_iers_data-0.2026.7.13.0.54.2-py3-none-any.whl"
    sha256 "0f0b22f43d0917d78382f35ef13acd72600752d65289a3f91e39ea67653264cd"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ef/2f/c5464532e965badff2f4c4c1a3a83f5697f0d7c407ed0cda44aaa99bb451/certifi-2026.6.17-py3-none-any.whl"
    sha256 "2227dcbaafe0d2f59279d1762ddddc37783ed4354594f194ffc31d20f41fc3db"
  end
  resource "charset_normalizer" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7e/8d/496817fa0944239ecae662dd57ea765cfeaec6a735f9f025d4b7b72e7143/charset_normalizer-3.4.9-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0327fcd59a935777d83410750c50600ee9571af2846f71ce40f25b13da1ef380"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7e/8d/496817fa0944239ecae662dd57ea765cfeaec6a735f9f025d4b7b72e7143/charset_normalizer-3.4.9-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0327fcd59a935777d83410750c50600ee9571af2846f71ce40f25b13da1ef380"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/f4/c4/b3e049d2aa3766180c78507110543d9d50894cc97f57de543f1be521dcdc/charset_normalizer-3.4.9-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "c25fe15c70c59eb7c5ce8c06a1f3fa1da0ecc5ea1e7a5922c40fd2fa9b0d5046"
    else
      url "https://files.pythonhosted.org/packages/7e/8d/496817fa0944239ecae662dd57ea765cfeaec6a735f9f025d4b7b72e7143/charset_normalizer-3.4.9-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "0327fcd59a935777d83410750c50600ee9571af2846f71ce40f25b13da1ef380"
    end
  end
  resource "contourpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/fd/e1/3542a9cb596cadd76fcef413f19c79216e002623158befe6daa03dbfa88c/contourpy-1.3.3-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "cbedb772ed74ff5be440fa8eee9bd49f64f6e3fc09436d9c7d8f1c287b121d77"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/72/8b/4546f3ab60f78c514ffb7d01a0bd743f90de36f0019d1be84d0a708a580a/contourpy-1.3.3-cp314-cp314-macosx_10_13_x86_64.whl"
      sha256 "fde6c716d51c04b1c25d0b90364d0be954624a0ee9d60e23e850e8d48353d07a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/04/5f/9ff93450ba96b09c7c2b3f81c94de31c89f92292f1380261bd7195bea4ea/contourpy-1.3.3-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "f64836de09927cba6f79dcd00fdd7d5329f3fccc633468507079c829ca4db4e3"
    else
      url "https://files.pythonhosted.org/packages/fd/e1/3542a9cb596cadd76fcef413f19c79216e002623158befe6daa03dbfa88c/contourpy-1.3.3-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "cbedb772ed74ff5be440fa8eee9bd49f64f6e3fc09436d9c7d8f1c287b121d77"
    end
  end
  resource "cycler" do
    url "https://files.pythonhosted.org/packages/e7/05/c19819d5e3d95294a6f5947fb9b9629efb316b96de511b418c53d245aae6/cycler-0.12.1-py3-none-any.whl"
    sha256 "85cef7cff222d8644161529808465972e51340599459b8ac3ccbac5a854e0d30"
  end
  resource "fonttools" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/27/d2/23d25e3f247b328be58d04a4c9f894178a0d1eda7d42867cfb388adaf416/fonttools-4.63.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fd1e3094f42d806d3d7c79162fc59e5910fcbe3a7360c385b8da969bc4493745"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/27/d2/23d25e3f247b328be58d04a4c9f894178a0d1eda7d42867cfb388adaf416/fonttools-4.63.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fd1e3094f42d806d3d7c79162fc59e5910fcbe3a7360c385b8da969bc4493745"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/36/e1/a8933a72c45a87177fbde2696e0d0755c8c9062f8c077a961c6215fa27b1/fonttools-4.63.0-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "308f957cdeaf8abe4e5f2f124902ef405448af92c90f80e302a3b771c2e6116b"
    else
      url "https://files.pythonhosted.org/packages/27/d2/23d25e3f247b328be58d04a4c9f894178a0d1eda7d42867cfb388adaf416/fonttools-4.63.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "fd1e3094f42d806d3d7c79162fc59e5910fcbe3a7360c385b8da969bc4493745"
    end
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/1e/5e/d4e9f1a599fb8e573b7b87160658329fbf28d19eac2718f51fc3def3aa5a/idna-3.18-py3-none-any.whl"
    sha256 "7f952cbe720b688055e3f87de14f5c3e5fdaa8bc3928985c4077ca689de849a2"
  end
  resource "kiwisolver" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/e4/d7/060f45052f2a01ad5762c8fdecd6d7a752b43400dc29ff75cd47225a40fd/kiwisolver-1.5.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8df31fe574b8b3993cc61764f40941111b25c2d9fea13d3ce24a49907cd2d615"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/e4/d7/060f45052f2a01ad5762c8fdecd6d7a752b43400dc29ff75cd47225a40fd/kiwisolver-1.5.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8df31fe574b8b3993cc61764f40941111b25c2d9fea13d3ce24a49907cd2d615"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e7/f9/b06c934a6aa8bc91f566bd2a214fd04c30506c2d9e2b6b171953216a65b6/kiwisolver-1.5.0-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "80aa065ffd378ff784822a6d7c3212f2d5f5e9c3589614b5c228b311fd3063ac"
    else
      url "https://files.pythonhosted.org/packages/e4/d7/060f45052f2a01ad5762c8fdecd6d7a752b43400dc29ff75cd47225a40fd/kiwisolver-1.5.0-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "8df31fe574b8b3993cc61764f40941111b25c2d9fea13d3ce24a49907cd2d615"
    end
  end
  resource "matplotlib" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/7c/03/b8cdb625a21f710dfa11bbca1f48fb4057d2c0286975f8b415bf80942c99/matplotlib-3.11.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "25c2e5455efd8d99f41fb79871a31feb7d301569642e332ec58d72cfe9282bc3"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/57/52/a94102ac99eb78e2fe9b826674f9ef9ee23327110ea6ab4776c1b4eb6209/matplotlib-3.11.0-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "3338e3e3de128cf50d0d2fb92a122815daf9c755bd882a474343c05f8fd7ec79"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/29/dc/6377ecfaa5fef79430f74a1a16638b4e2aa30d4692bae2c19f9d76fe3b01/matplotlib-3.11.0-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "19c16c61dea63b3582918503e6b294193961261d9daa806d4ae2151f1ad05430"
    else
      url "https://files.pythonhosted.org/packages/7c/03/b8cdb625a21f710dfa11bbca1f48fb4057d2c0286975f8b415bf80942c99/matplotlib-3.11.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "25c2e5455efd8d99f41fb79871a31feb7d301569642e332ec58d72cfe9282bc3"
    end
  end
  resource "networkx" do
    url "https://files.pythonhosted.org/packages/9e/c9/b2622292ea83fbb4ec318f5b9ab867d0a28ab43c5717bb85b0a5f6b3b0a4/networkx-3.6.1-py3-none-any.whl"
    sha256 "d47fbf302e7d9cbbb9e2555a0d267983d2aa476bac30e90dfbe5669bd57f3762"
  end
  resource "numpy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bf/64/0e215f2048dd11a55bb989ed41b3585ef57452404e638d703a211a3e4157/numpy-2.5.1-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "32985c896d897419ef8da6917872d80b78ad0ea26d85b23245c7366ffde76d75"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/db/f4/731b6085a83faf6ca843394cbd5e217280c214399f7e8b21b9f552af0ae2/numpy-2.5.1-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "7c786fe9a5bbe360022e584c5a34cf6b54265c71bd7ec8ac3d8fec38968071f8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/41/5f/0f992cb24560673496c5d68de61913b57166ce530ffda07c1f280e0cc464/numpy-2.5.1-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "54ad769f17bc2d833b620851989f62054fb9ab93c969d9e1dc3c8e3d56beea21"
    else
      url "https://files.pythonhosted.org/packages/bf/64/0e215f2048dd11a55bb989ed41b3585ef57452404e638d703a211a3e4157/numpy-2.5.1-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "32985c896d897419ef8da6917872d80b78ad0ea26d85b23245c7366ffde76d75"
    end
  end
  resource "packaging" do
    url "https://files.pythonhosted.org/packages/df/b2/87e62e8c3e2f4b32e5fe99e0b86d576da1312593b39f47d8ceef365e95ed/packaging-26.2-py3-none-any.whl"
    sha256 "5fc45236b9446107ff2415ce77c807cee2862cb6fac22b8a73826d0693b0980e"
  end
  resource "pandas" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/ae/fc/a514a959eeb0a8ad0294747df5ff1c95bf364aa2f2c533d6c2a8c0720bf4/pandas-3.0.4-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "5c912d80243e4563934f34acc41cfad1a08d7af1b40597492cc6b5e6ba311404"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/da/9d/b70e2d6fd65f497a03922d0a0019a2b9ec7a40374fbd2f2cb6a697109806/pandas-3.0.4-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "45751e5d456788ca891167c6456fb5e373ad72aa82a949c9635b63e215940181"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/3e/64/01d6352e2f108045e628680f1dd0a11276489beeae580c2c9d8a74df390b/pandas-3.0.4-cp314-cp314-manylinux_2_24_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "cadb8f48ada5de3feaa735577af15f0874cd5498d6875cf17989d97d4bc2e926"
    else
      url "https://files.pythonhosted.org/packages/ae/fc/a514a959eeb0a8ad0294747df5ff1c95bf364aa2f2c533d6c2a8c0720bf4/pandas-3.0.4-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "5c912d80243e4563934f34acc41cfad1a08d7af1b40597492cc6b5e6ba311404"
    end
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/c7/da/32c752228ae345f489e3a42499d817b6c3996da7e8a3bc7a04fc806b243b/pillow-12.3.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "e158cb00350dc278f3b91551101aa7d12415a66ebf2c91d8d5ac14e56ddd3ad0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/85/e2/73c77d218410b14f5f2d565e8a998d5317b7b9c75368d29985139f7a46f0/pillow-12.3.0-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "ba54cfebe86920a559a7c4d6b9050791c20513650a1952ebe3368c7dc70306f8"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/5c/44/c85361f65dbe00eea8576ee467c768d25129989efb76e94f205e9ca9bb46/pillow-12.3.0-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "251bf95b67017e27b13d82f5b326234ca62d70f9cf4c2b9032de2358a3b12c7b"
    else
      url "https://files.pythonhosted.org/packages/c7/da/32c752228ae345f489e3a42499d817b6c3996da7e8a3bc7a04fc806b243b/pillow-12.3.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "e158cb00350dc278f3b91551101aa7d12415a66ebf2c91d8d5ac14e56ddd3ad0"
    end
  end
  resource "pyerfa" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/11/4a/31a363370478b63c6289a34743f2ba2d3ae1bd8223e004d18ab28fb92385/pyerfa-2.0.1.5-cp39-abi3-macosx_11_0_arm64.whl"
      sha256 "be1aeb70390dd03a34faf96749d5cabc58437410b4aab7213c512323932427df"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/7d/d9/3448a57cb5bd19950de6d6ab08bd8fbb3df60baa71726de91d73d76c481b/pyerfa-2.0.1.5-cp39-abi3-macosx_10_9_x86_64.whl"
      sha256 "b282d7c60c4c47cf629c484c17ac504fcb04abd7b3f4dfcf53ee042afc3a5944"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/e5/e0/050018d855d26d3c0b4a7d1b2ed692be758ce276d8289e2a2b44ba1014a5/pyerfa-2.0.1.5-cp39-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "0e43c7194e3242083f2350b46c09fd4bf8ba1bcc0ebd1460b98fc47fe2389906"
    else
      url "https://files.pythonhosted.org/packages/11/4a/31a363370478b63c6289a34743f2ba2d3ae1bd8223e004d18ab28fb92385/pyerfa-2.0.1.5-cp39-abi3-macosx_11_0_arm64.whl"
      sha256 "be1aeb70390dd03a34faf96749d5cabc58437410b4aab7213c512323932427df"
    end
  end
  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/10/bd/c038d7cc38edc1aa5bf91ab8068b63d4308c66c4c8bb3cbba7dfbc049f9c/pyparsing-3.3.2-py3-none-any.whl"
    sha256 "850ba148bd908d7e2411587e247a1e4f0327839c40e2e5e6d05a007ecc69911d"
  end
  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/ec/57/56b9bcc3c9c6a792fcbaf139543cee77261f3651ca9da0c93f5c1221264b/python_dateutil-2.9.0.post0-py2.py3-none-any.whl"
    sha256 "a8b2bc7bffae282281c8140a97d3aa9c14da0b136dfe83f850eea9a5f7470427"
  end
  resource "PyYAML" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bd/9c/4d95bb87eb2063d20db7b60faa3840c1b18025517ae857371c4dd55a6b3a/pyyaml-6.0.3-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "34d5fcd24b8445fadc33f9cf348c1047101756fd760b4dacb5c3e99755703310"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/9d/8c/f4bd7f6465179953d3ac9bc44ac1a8a3e6122cf8ada906b4f96c60172d43/pyyaml-6.0.3-cp314-cp314-macosx_10_13_x86_64.whl"
      sha256 "8d1fab6bb153a416f9aeb4b8763bc0f22a5586065f86f7664fc23339fc1c1fac"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/88/f9/16491d7ed2a919954993e48aa941b200f38040928474c9e85ea9e64222c3/pyyaml-6.0.3-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "c458b6d084f9b935061bc36216e8a69a7e293a2f1e68bf956dcd9e6cbcd143f5"
    else
      url "https://files.pythonhosted.org/packages/bd/9c/4d95bb87eb2063d20db7b60faa3840c1b18025517ae857371c4dd55a6b3a/pyyaml-6.0.3-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "34d5fcd24b8445fadc33f9cf348c1047101756fd760b4dacb5c3e99755703310"
    end
  end
  resource "requests" do
    url "https://files.pythonhosted.org/packages/a0/f4/c67b0b3f1b9245e8d266f0f112c500d50e5b4e83cb6f3b71b6528104182a/requests-2.34.2-py3-none-any.whl"
    sha256 "2a0d60c172f83ac6ab31e4554906c0f3b3588d37b5cb939b1c061f4907e278e0"
  end
  resource "scipy" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/d7/88/b72def7262e150d16be13fca37a96481138d624e700340bc3362a7588929/scipy-1.18.0-cp314-cp314-macosx_12_0_arm64.whl"
      sha256 "2ef3abc54a4ffc53765374b0d5728532dfdd2585ed23f6b11c206a1f0b1b9af8"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/78/b5/915a19b3de2f7430062b509653563db1633ddbb6f021b06731521115d4e2/scipy-1.18.0-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "4c256ee70c0d1a8a2ace807e199ccd4e3f57037433842abb3fb36bc17eaa9578"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/7f/c4/bc41eb19b0fd0db868f4132920879019318d80cc522ad8f2bca4611af808/scipy-1.18.0-cp314-cp314-manylinux_2_27_x86_64.manylinux_2_28_x86_64.whl"
      sha256 "8ca01e8ae69f1b18e9a58d91afead31be3cef0dd905a10249dac559ee15460a0"
    else
      url "https://files.pythonhosted.org/packages/d7/88/b72def7262e150d16be13fca37a96481138d624e700340bc3362a7588929/scipy-1.18.0-cp314-cp314-macosx_12_0_arm64.whl"
      sha256 "2ef3abc54a4ffc53765374b0d5728532dfdd2585ed23f6b11c206a1f0b1b9af8"
    end
  end
  resource "six" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end
  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/7f/3e/5db95bcf282c52709639744ca2a8b149baccf648e39c8cc87553df9eae0c/urllib3-2.7.0-py3-none-any.whl"
    sha256 "9fb4c81ebbb1ce9531cce37674bbc6f1360472bc18ca9a553ede278ef7276897"
  end

  def install
    if OS.mac?
      ENV.append "LDFLAGS", "-Wl,-headerpad_max_install_names"
      ENV.append "RUSTFLAGS", "-C link-arg=-Wl,-headerpad_max_install_names"
    end

    venv = virtualenv_create(libexec, "python3.14")

    resource("astropy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("astropy-iers-data").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("certifi").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("charset_normalizer").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("contourpy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("cycler").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("fonttools").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("idna").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("kiwisolver").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("matplotlib").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("networkx").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("numpy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("packaging").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pandas").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pillow").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyerfa").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyparsing").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("python-dateutil").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("PyYAML").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("requests").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("scipy").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("six").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("urllib3").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath
    bin.install_symlink libexec/"bin/celestsp"
  end

  test do
    system "#{bin}/celestsp", "--help"
  end
end
