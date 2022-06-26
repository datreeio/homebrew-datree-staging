# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.19-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.19-rc/datree-cli_1.5.19-rc_Darwin_x86_64.zip"
    sha256 "6e3d33985c01e2a7a6180de2d9c8f54791aec1cba9b8a19fb75d25279c67b290"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.19-rc/datree-cli_1.5.19-rc_Darwin_arm64.zip"
    sha256 "a159f17fca9dad349702fd9be1fc257e7ae9e10e01bfa997ebfbe0d04c98a934"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.19-rc/datree-cli_1.5.19-rc_Linux_x86_64.zip"
    sha256 "ed549dca985701c9ff1cf692c809933c97f6a34f7d3fb0502d8246404bbc1e57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.19-rc/datree-cli_1.5.19-rc_Linux_arm64.zip"
    sha256 "3f6cf940bad3329fcabe0de77b1052c19f4b2cd1eed38756f202374319c3e665"
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
