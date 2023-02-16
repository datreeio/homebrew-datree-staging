# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.24-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.24-rc/datree-cli_1.8.24-rc_Darwin_x86_64.zip"
    sha256 "10b47f71933f5f940105f6956bdcce67d2bb8b676f9a209b77610b28902af9d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.24-rc/datree-cli_1.8.24-rc_Darwin_arm64.zip"
    sha256 "0b96d73fb7b0da889fd57ca3ce0d928e423be1dc34512d52241a16130f8850b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.24-rc/datree-cli_1.8.24-rc_Linux_x86_64.zip"
    sha256 "4e1e14d60328463aa7bdc805f585893e67efbb5c4e41e920b247e2a71195fe9f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.24-rc/datree-cli_1.8.24-rc_Linux_arm64.zip"
    sha256 "52e09f79c924c7641f49f03eb1e8c1ca1775159808ba1f166f4e97159f355842"
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
