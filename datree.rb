# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.0-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.0-rc/datree-cli_1.9.0-rc_Darwin_x86_64.zip"
    sha256 "16b460ce0706ae81b609c88317e23a62e703836b255920254b242cba36165d38"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.0-rc/datree-cli_1.9.0-rc_Darwin_arm64.zip"
    sha256 "f8f325838d61b8b71fa2077a59be1b5230af1b1cf08c9ff06aa4b6d3359c4b6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.0-rc/datree-cli_1.9.0-rc_Linux_x86_64.zip"
    sha256 "0e3fbc8fdd87c828a7cc85cbf5050d5873413d34d9500cd69ddca1771ff76e49"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.0-rc/datree-cli_1.9.0-rc_Linux_arm64.zip"
    sha256 "755da8bd4b4dc81761ab44f33a72d1556eae6092ea8df1de5ea48439579cf6f2"
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
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
