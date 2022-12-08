# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.9-rc/datree-cli_1.8.9-rc_Darwin_x86_64.zip"
    sha256 "323bc38d05fd40dbc8d492a167b2875c8c7803154c3d8396d5ffaef7969648a1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.9-rc/datree-cli_1.8.9-rc_Darwin_arm64.zip"
    sha256 "9a331583b968a8bd79d0fbe329541334a35896d10d38f71270b5ec1f3cc47290"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.9-rc/datree-cli_1.8.9-rc_Linux_x86_64.zip"
    sha256 "b01402ba1ec57f1320377979a1d8ae4ee4ffc555ce145e29b52008cfd39b7916"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.9-rc/datree-cli_1.8.9-rc_Linux_arm64.zip"
    sha256 "d7ae4525ac1c2540fdfe8d612b13141e8de292c3b749e37e3b03a68f0c3d1251"
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
