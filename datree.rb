# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.26-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.26-rc/datree-cli_0.15.26-rc_Darwin_x86_64.zip"
    sha256 "750ce6574e8303c876f0e567fa06606a59d4b4ffb5a76647dc4e6afa76d8d08a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.26-rc/datree-cli_0.15.26-rc_Darwin_arm64.zip"
    sha256 "f8df1ddb8b75a92831852faac8971269db93b5f7dfdd8b75716a151dc9c8e6f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.26-rc/datree-cli_0.15.26-rc_Linux_x86_64.zip"
    sha256 "b507e4c5fba72a5e05a927389aa078ff4ef6e046998a2668fdac5ae705bdafa2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.26-rc/datree-cli_0.15.26-rc_Linux_arm64.zip"
    sha256 "f7c24972ada1b6f3fe00cedf314d0310c202bdb3e1866d75fb56c4e83b473b89"
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
