# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.0-rc/datree-cli_1.1.0-rc_Darwin_x86_64.zip"
    sha256 "15439330a20281fc3e00d14024612a4c2dc1e4690f49621ee07b08cbe4e54cec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.0-rc/datree-cli_1.1.0-rc_Darwin_arm64.zip"
    sha256 "10523daf85c1e824209e35f69031d582a3e6f94e952887675f0d741cd5eb9a74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.0-rc/datree-cli_1.1.0-rc_Linux_x86_64.zip"
    sha256 "5404aea96e3c5a4cb5ea0cd8daec611f5b2d74bace95c152fdc3240d12cd03df"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.0-rc/datree-cli_1.1.0-rc_Linux_arm64.zip"
    sha256 "2407155585a8fe227540c7679b9cd3c9f08fb0ee1eb1967e678dbb7efe051cc2"
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
      tput init
    EOS
  end
end
