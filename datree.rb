# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.4-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.4-rc/datree-cli_1.6.4-rc_Darwin_x86_64.zip"
    sha256 "3ef3beff9556016b4be69a013b7901f67ce40e41a847bbbc93fd3868deed8d43"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.4-rc/datree-cli_1.6.4-rc_Darwin_arm64.zip"
    sha256 "927e6c6fb3dc9ba0f796cfc0d0833deea18103043b67f4a966c68bcde980185d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.4-rc/datree-cli_1.6.4-rc_Linux_x86_64.zip"
    sha256 "854540b8e5ed55461052f12b8a4b1960fca500250c90c446d519f283c7e67b7a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.4-rc/datree-cli_1.6.4-rc_Linux_arm64.zip"
    sha256 "bcbf38813ee75f177ce7bef0322e6f61b22a3c74306d181c78d2bf1774684c6a"
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
