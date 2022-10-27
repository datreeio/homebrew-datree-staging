# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.44-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.44-rc/datree-cli_1.6.44-rc_Darwin_x86_64.zip"
    sha256 "602480312dd1b6e356b9b547cf6c5e7c871ae0096641795ddc67a57b84ee9765"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.44-rc/datree-cli_1.6.44-rc_Darwin_arm64.zip"
    sha256 "525176cde372426a8af8dad54f49dde126a17cc4652bd1d79715284c31708643"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.44-rc/datree-cli_1.6.44-rc_Linux_x86_64.zip"
    sha256 "b93f095da739da04a534b923c3bf260b53b4dcba316870461b766ff2826fd759"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.44-rc/datree-cli_1.6.44-rc_Linux_arm64.zip"
    sha256 "84171cab2a27662ca04f9665a806c74953e7d31cccb6cc46972861fbaccd2a1f"
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
