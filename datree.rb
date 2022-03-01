# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.31-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.31-rc/datree-cli_0.15.31-rc_Darwin_x86_64.zip"
    sha256 "b80baf98eb7c4d7f894d6c81e6a04bb0428c514e1b3f0f16dde090c64b283c19"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.31-rc/datree-cli_0.15.31-rc_Darwin_arm64.zip"
    sha256 "6bfd3fe867e6737c97ab80a6e5d592085f87575087ab8c9d91fa58dbad7d085a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.31-rc/datree-cli_0.15.31-rc_Linux_x86_64.zip"
    sha256 "af4a4858aa5b3a2fa9111a32b7ecfce894533c629f78034d68867461df40dadf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.31-rc/datree-cli_0.15.31-rc_Linux_arm64.zip"
    sha256 "083ade887cbfe71f283391c16dabeb2f377ffbbc93bda7aa5877eec4a17f1ac8"
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
