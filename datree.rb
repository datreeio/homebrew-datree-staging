# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.91-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Darwin_x86_64.zip"
    sha256 "e9393c40a0f2ad199d4acb4540db466a065373451ae3d79b1716917f86a13da6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_x86_64.zip"
    sha256 "de1c50bb67957cafa51caba912db67d0a644eebc314066d2260267ce65b22e47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_arm64.zip"
    sha256 "60e33ae3b883d4e68dc83385d1e4ffbb5f11cccdf8e837bb83f8113d1f96188a"
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
