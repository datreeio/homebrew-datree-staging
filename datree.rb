# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.90-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.90-rc/datree-cli_0.14.90-rc_Darwin_x86_64.zip"
    sha256 "e40d2b6b61645e51326022c88a05a7976dc638c1956a33689c329f7a85268cc0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.90-rc/datree-cli_0.14.90-rc_Linux_x86_64.zip"
    sha256 "d113fe0bdb225e0fadc64796b7e04abc14850b88f1897e9a29821cf0ae64aa8d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.90-rc/datree-cli_0.14.90-rc_Linux_arm64.zip"
    sha256 "e6cf07185cf2a23bfc01601db5b39fbce9a7519de5f3471e72abe15de6cd7082"
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
