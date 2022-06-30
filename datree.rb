# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.22-rc/datree-cli_1.5.22-rc_Darwin_x86_64.zip"
    sha256 "1c5ecd521612ceff3c3e1dc40bb0ea24aa1d6f5d95a1cb0bed13ae2cac717dd4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.22-rc/datree-cli_1.5.22-rc_Darwin_arm64.zip"
    sha256 "51c0c3f7571cbd136c2a6ae88ef0400029fce4bd9cd8e93fdfd36e310483a8ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.22-rc/datree-cli_1.5.22-rc_Linux_x86_64.zip"
    sha256 "2cb7f231d09ea3f8bdcb351cd1608fdf3bd93cc9a12f68bbe12b534934d8c4ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.22-rc/datree-cli_1.5.22-rc_Linux_arm64.zip"
    sha256 "63bf33fe808ad0dceb3619ff12d6bdee51a2cb32f681d696f0fdd90793630fdc"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
