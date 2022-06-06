# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.40-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc/datree-cli_1.4.40-rc_Darwin_x86_64.zip"
    sha256 "15c63b5c816155a043a99f0a69887029e18e0e8c0eaf6fbc355530b398ac3010"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc/datree-cli_1.4.40-rc_Darwin_arm64.zip"
    sha256 "e605ff00673bb0ec765a953678b4b39aa66a9f5ccc0fd13bb0e534d72fcf5ede"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc/datree-cli_1.4.40-rc_Linux_x86_64.zip"
    sha256 "1d6840f544bbc30f36202f123dbc1b5baa250808f62b96538ec8ab6098a74509"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.40-rc/datree-cli_1.4.40-rc_Linux_arm64.zip"
    sha256 "2e446a963153cc1d940e1c2cb12f3132f76ce0a3dc329b4e95b00c6ad18b2747"
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
