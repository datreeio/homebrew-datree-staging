# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.58-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.58-rc/datree-cli_1.8.58-rc_Darwin_x86_64.zip"
    sha256 "deb0ec7dddb09413dda1e2932ace89b84bd8c2cffb67c386915ad0229c792190"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.58-rc/datree-cli_1.8.58-rc_Darwin_arm64.zip"
    sha256 "894c57a24374661a4a86bea4d6facf155baefda009d2d0c463b8246e7c61ef16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.58-rc/datree-cli_1.8.58-rc_Linux_x86_64.zip"
    sha256 "b1f5307f4b26b3d5629e65960fb0f34f724370a7a7d3e1df7b68e9ff1df266ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.58-rc/datree-cli_1.8.58-rc_Linux_arm64.zip"
    sha256 "08689a997cd3d1d0f4c437ec491b9fb1c8ee42d444f7a7898196cc158165d486"
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
