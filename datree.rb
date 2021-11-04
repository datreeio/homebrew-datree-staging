# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.34-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.34-rc/datree-cli_0.14.34-rc_Darwin_x86_64.zip"
    sha256 "d80d23f9b7d224a6cad439bd945a010af37b1a6bee43c82d46ebb0b6451d8311"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.34-rc/datree-cli_0.14.34-rc_Linux_x86_64.zip"
    sha256 "28da1dbda1c1afb11885bee841e0fe16be90e59c94e54e4bb981ffecc6e40c2c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.34-rc/datree-cli_0.14.34-rc_Linux_arm64.zip"
    sha256 "d2afeb968323de42adb9196b66e5d32a48864ec3ee6b7ab348453f9783bbd1a6"
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
