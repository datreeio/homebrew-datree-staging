# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.74-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.74-rc/datree-cli_0.14.74-rc_Darwin_x86_64.zip"
    sha256 "b9845241f9f985c10502a0190a4eae585ee5cbe4419e3b4345f30b1de79f4945"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.74-rc/datree-cli_0.14.74-rc_Linux_x86_64.zip"
    sha256 "33620361d922683ff22bd6ad9047294cdd014cde72f8a58430fd50ff96b802aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.74-rc/datree-cli_0.14.74-rc_Linux_arm64.zip"
    sha256 "d6799f9eff0cddcf45af01285fa800954483dbcbff871e0f4ff6267e98f44e61"
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
