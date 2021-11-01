# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.29-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.29-rc/datree-cli_0.14.29-rc_Darwin_x86_64.zip"
    sha256 "062a2d15f62a257b2d11430da3a7525a251c2987a5f102a385d305cadf55fc74"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.29-rc/datree-cli_0.14.29-rc_Linux_x86_64.zip"
    sha256 "450deb585714fa0fd02977468d808c20be9282b7755c71d4528b881064e007fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.29-rc/datree-cli_0.14.29-rc_Linux_arm64.zip"
    sha256 "39646c713e123986b642876e1d10c65e551ec2f35d9cbb5166facd11403cb433"
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
