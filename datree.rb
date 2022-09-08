# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.17-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.17-rc/datree-cli_1.6.17-rc_Darwin_x86_64.zip"
    sha256 "934b09d670546ca10b77f6378a9c78203f04bcd1dda007896b06ca680faf9567"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.17-rc/datree-cli_1.6.17-rc_Darwin_arm64.zip"
    sha256 "e05f5d95330e0cd6e52c1116140251f38d90f1cc22517694c99530ae16daa1a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.17-rc/datree-cli_1.6.17-rc_Linux_x86_64.zip"
    sha256 "1cb952100956cedf54a17fff7853bee0ff7fcb186ff340eabfdef458fd45d932"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.17-rc/datree-cli_1.6.17-rc_Linux_arm64.zip"
    sha256 "aa6ce1f698894fc5e49286d9da8e73af8dbb1daf07d81e48baf9ffb5fbe7b88d"
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
