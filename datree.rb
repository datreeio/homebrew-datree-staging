# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.1-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.1-rc/datree-cli_1.6.1-rc_Darwin_x86_64.zip"
    sha256 "db2450aca91c306c478d994af2ddcdcfee492e1fb0ba3e33536058636c21949d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.1-rc/datree-cli_1.6.1-rc_Darwin_arm64.zip"
    sha256 "e9bcd34abf0f7a14b0277bb8863d7ccd4392b34b0ae15a6213d958fc2ad3c135"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.1-rc/datree-cli_1.6.1-rc_Linux_x86_64.zip"
    sha256 "7dc01705e4ee495dfbd426de6e5e69ff0c84af38e1a91b3efd7b90b5f0dc0f85"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.1-rc/datree-cli_1.6.1-rc_Linux_arm64.zip"
    sha256 "a33612c7fe2112bf8d84995563aacd420f4af3ef57eedff512231f46a627ff89"
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
