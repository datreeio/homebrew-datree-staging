# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.22-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.22-rc/datree-cli_1.4.22-rc_Darwin_x86_64.zip"
    sha256 "80dccaf1958696dae25e48cb611be85a96f45de036140fd6ec6fb3835724c023"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.22-rc/datree-cli_1.4.22-rc_Darwin_arm64.zip"
    sha256 "2f0c16f21ca9db45d6abeeae8a1b247f1ea58a5f65e369c3ba3be8705380b2aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.22-rc/datree-cli_1.4.22-rc_Linux_x86_64.zip"
    sha256 "43f1d79be8e5b4d54952d7cd66cf632b23ca84e90c9f5c070ec8cf8fb186a667"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.22-rc/datree-cli_1.4.22-rc_Linux_arm64.zip"
    sha256 "067067794c3817262b368c5728bc61754a47b56f0cb2186180f095fcf3f8cec5"
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
