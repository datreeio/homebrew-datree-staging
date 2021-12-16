# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.72-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.72-rc/datree-cli_0.14.72-rc_Darwin_x86_64.zip"
    sha256 "4c308f8af4f81cb3f412a7b5d4befb30413822009053f4b716a0bdf1b7039f1c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.72-rc/datree-cli_0.14.72-rc_Linux_x86_64.zip"
    sha256 "c77e60c7fb066bd18026f92a4b516fae2085ca3a402990cd6f34e53e52f52e67"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.72-rc/datree-cli_0.14.72-rc_Linux_arm64.zip"
    sha256 "3d0adaad63d4ca2a98a94bbfa3f6b3a42c11779c267fc7bfba7b84a4ce388246"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
