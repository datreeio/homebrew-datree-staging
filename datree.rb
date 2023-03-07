# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.36-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.36-rc/datree-cli_1.8.36-rc_Darwin_x86_64.zip"
    sha256 "bb49e3b7d0527dd75583f8f2d7a339ab535d09732e0cc2d3ed01183fee3672c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.36-rc/datree-cli_1.8.36-rc_Darwin_arm64.zip"
    sha256 "ec31c6d744800f4a3b3a5799215ad1e2711cb5f17e7cd08714010c3175a531f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.36-rc/datree-cli_1.8.36-rc_Linux_x86_64.zip"
    sha256 "93c73414ab8140ec1d9f0166ba76e2ed5b0d50e8c0effeddeb5fc1e668270741"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.36-rc/datree-cli_1.8.36-rc_Linux_arm64.zip"
    sha256 "9fca34047f25add96973992ddbeffa096df290444d72e5a8c55b612b31fcfe1c"
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
