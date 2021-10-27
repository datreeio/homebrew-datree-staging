# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.20-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.20-rc/datree-cli_0.14.20-rc_Darwin_x86_64.zip"
    sha256 "2fa251d5a6e366acc931d77178201e68c341aa37ce55e1e23b73b78c81f12f28"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.20-rc/datree-cli_0.14.20-rc_Linux_x86_64.zip"
    sha256 "330d73236866459c6f75295deeb57564dd1329b64df7aae007deae82d1d804c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.20-rc/datree-cli_0.14.20-rc_Linux_arm64.zip"
    sha256 "a0f36967af26ef52d90852aaf7f60793bb6455e39f33c48238bc47f65925b0d6"
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
