# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.73-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.73-rc/datree-cli_0.14.73-rc_Darwin_x86_64.zip"
    sha256 "b52e4c6eebcb317f085f01b6fceb534164511e24b6934f9ee0d9b6e6ca2cf4ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.73-rc/datree-cli_0.14.73-rc_Linux_x86_64.zip"
    sha256 "767b1cc6c600f9a78aa8087a714bf3e072476e9bf22d66b89be7471656c557f9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.73-rc/datree-cli_0.14.73-rc_Linux_arm64.zip"
    sha256 "8bc2fa771f90c2c878dcdc51ef71b701fc5b91bca6e6ce17a470bafcc353ee88"
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
