# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.52-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.52-rc/datree-cli_0.15.52-rc_Darwin_x86_64.zip"
    sha256 "103e5efcae6ab747dd8e44294c225372fc4b27ea423bff03ebe9770e261873c9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.52-rc/datree-cli_0.15.52-rc_Darwin_arm64.zip"
    sha256 "db02eab199c6c4a0ab69b36b75b7603cd1e5b673207f1ba5e39d5743a6c98073"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.52-rc/datree-cli_0.15.52-rc_Linux_x86_64.zip"
    sha256 "2966864c890a8e6201d378cd05f2d38398423ee60035a49be1ab727c6c5eee9d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.52-rc/datree-cli_0.15.52-rc_Linux_arm64.zip"
    sha256 "d9596b58ced0937cbc5e8dae26dc9a63923e837903e8bba5bdcbf5d90c255a4d"
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
      tput init
    EOS
  end
end
