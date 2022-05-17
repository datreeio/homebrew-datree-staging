# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.23-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.23-rc/datree-cli_1.4.23-rc_Darwin_x86_64.zip"
    sha256 "6d5ba785c0359b3424584735fd4b6c6032aec147cacc215003f57c04d5b37db0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.23-rc/datree-cli_1.4.23-rc_Darwin_arm64.zip"
    sha256 "bd833bd0362b19d9952cf0a89b1d6a8a2db267a13963a9ecf420284f88dabe23"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.23-rc/datree-cli_1.4.23-rc_Linux_x86_64.zip"
    sha256 "be5545a11320275a7812d6ab0b706be0bce25b44bd33a4d229d76778d1223bc5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.23-rc/datree-cli_1.4.23-rc_Linux_arm64.zip"
    sha256 "9b40d3e6156b320fafa36765cd1ed8bdae2e264c80280afe26418611095232c4"
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
