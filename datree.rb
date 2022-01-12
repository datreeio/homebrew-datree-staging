# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.100-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.100-rc/datree-cli_0.14.100-rc_Darwin_x86_64.zip"
    sha256 "1e2a90ec9015c19b163aa8beb5683314d0cc290624dbd8fa6dd949e8f989fda4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.100-rc/datree-cli_0.14.100-rc_Linux_x86_64.zip"
    sha256 "bae0e48fff396bdd8dffedff1d9b1ad221e1cf2307ff27fcdb2680de66be5912"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.100-rc/datree-cli_0.14.100-rc_Linux_arm64.zip"
    sha256 "bb7f01b7e93c7605acdebbef39e50eaf4be2e0730b8eee82b3939a79f391116f"
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
