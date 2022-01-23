# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.9-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Darwin_x86_64.zip"
    sha256 "f7a581839e9f00a5870d685b9094281d6485b8c868cef4c0013afea66a22a749"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Linux_x86_64.zip"
    sha256 "7f79da95964aa590e8da1f4f180c86f7da8af0c3dd7c4f54ab07da174a630c44"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.9-rc/datree-cli_0.15.9-rc_Linux_arm64.zip"
    sha256 "52a2b8de9ab7c43a1d6778d05b743faf2cb9a1355bab5aa33c3071facb64700e"
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
