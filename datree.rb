# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.3-rc/datree-cli_1.9.3-rc_Darwin_x86_64.zip"
    sha256 "4d6ffd629353867f08ad217d8ddd84c58feb884b3c9293a91846cf5d6529f39c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.3-rc/datree-cli_1.9.3-rc_Darwin_arm64.zip"
    sha256 "cd64a69bea4c39e53bff80e05f310d0ea37934d712e111ae2a68fa6100111b96"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.3-rc/datree-cli_1.9.3-rc_Linux_x86_64.zip"
    sha256 "1380c602e0e8b02aaf0a69d52c11a479c653709210bbf52a7bd1fa6f7c0f3392"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.3-rc/datree-cli_1.9.3-rc_Linux_arm64.zip"
    sha256 "8acf3f37d7b8628f6eaa6b58398232d231a40f62b51d5e74198300eeeb06d13d"
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
