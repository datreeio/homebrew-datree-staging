# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.59-rc"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.59-rc/datree-cli_0.14.59-rc_Darwin_x86_64.zip"
    sha256 "8dd314c79bdc26cc33f3ead873e32cf7b42a2cf29498d4691ea088eda619efe7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.59-rc/datree-cli_0.14.59-rc_Linux_x86_64.zip"
    sha256 "8748b9bfc27c8f59fdb7aae25281330697f028adb1a6822d9b4ad92f8457fb85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.59-rc/datree-cli_0.14.59-rc_Linux_arm64.zip"
    sha256 "9fc8eb9357181096dd42065f24d2923f8f3e0581c37fceb1688a632377385a20"
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
