# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.87-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.87-rc/datree-cli_0.14.87-rc_Darwin_x86_64.zip"
    sha256 "28e3a89a20bf18bff6a214f065cc4fdcbf8190b34df21e7df350939a2428af70"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.87-rc/datree-cli_0.14.87-rc_Linux_x86_64.zip"
    sha256 "47dd62140246f4c00e17fcf148b28d424b3b519a06445b5c652957bfc079bf3c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.87-rc/datree-cli_0.14.87-rc_Linux_arm64.zip"
    sha256 "d6279a0950041594ad0b946172c5cc933c676e2bd55ffa3d5c4b98fbc23cdafc"
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
