# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.33-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.33-rc/datree-cli_1.8.33-rc_Darwin_x86_64.zip"
    sha256 "29c47d89058a02ce22f821a9d9f515bd0c37b87665351041976097ec5a035ddd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.33-rc/datree-cli_1.8.33-rc_Darwin_arm64.zip"
    sha256 "dbbf2693a2bd0916a2998aa28f37b5802ab69e672e802e976217f9550642eaa7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.33-rc/datree-cli_1.8.33-rc_Linux_x86_64.zip"
    sha256 "82ea20d57e58499e3a7643ef2eec96baf5eb8c9898ca5d8eff7d966856e010d4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.33-rc/datree-cli_1.8.33-rc_Linux_arm64.zip"
    sha256 "de8fc24b0fd5a3e06ad8e9d512b3be1bfe6ceed5cf079177c54dba97db8a85bd"
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
