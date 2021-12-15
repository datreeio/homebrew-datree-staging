# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.71-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.71-rc/datree-cli_0.14.71-rc_Darwin_x86_64.zip"
    sha256 "a2644f170853be48bbd0095eddf1999f5ccd42898be2075d8bc26cec31fccd9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.71-rc/datree-cli_0.14.71-rc_Linux_x86_64.zip"
    sha256 "6299c593b3fa3338a4a78c4a5f6f3d17fd9fc32a53683a8279e71ff70cf46dde"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.71-rc/datree-cli_0.14.71-rc_Linux_arm64.zip"
    sha256 "e17f1552b4917dfaa27a2670b6807107abf1d33b33d42c0b37b7cfacbbdda131"
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
