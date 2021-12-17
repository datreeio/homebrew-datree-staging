# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.80-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.80-rc/datree-cli_0.14.80-rc_Darwin_x86_64.zip"
    sha256 "879a4ab8bb4610f02f03ed5c9a8157a18ef05fc2c5759bb0a69624d0fd8fbbaa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.80-rc/datree-cli_0.14.80-rc_Linux_x86_64.zip"
    sha256 "4c1a72b27384b17a1679634eaf8fbf025d963f31a2cfa4fc5a9f4f57a7435bb5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.80-rc/datree-cli_0.14.80-rc_Linux_arm64.zip"
    sha256 "2208dc358cd9e30a78000e295180d7ae5c065d9f296548c1366ca2cea2c55f54"
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
