# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.55-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.55-rc/datree-cli_1.8.55-rc_Darwin_x86_64.zip"
    sha256 "414969c6176b047859d9e04fcfb2d33d964104c8fa282319e51e59796bf4262d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.55-rc/datree-cli_1.8.55-rc_Darwin_arm64.zip"
    sha256 "6868d2000249a3ba97b507b2fad03927230007959f9d66dcbf06d6905f466977"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.55-rc/datree-cli_1.8.55-rc_Linux_x86_64.zip"
    sha256 "315669127af9c5990a3cc5294bc3f704445ee1ac8a9bb069f29487e46032f4ec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.55-rc/datree-cli_1.8.55-rc_Linux_arm64.zip"
    sha256 "eb7a27d4aa5e84f26e74cf25810fcf2f01ea0d31b741560c853018e01099a8c5"
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
