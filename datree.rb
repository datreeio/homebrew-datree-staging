# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.67-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.67-rc/datree-cli_0.14.67-rc_Darwin_x86_64.zip"
    sha256 "60daeb1e1e9a62be7c3e3738ccfd66322338cd60aa9832194f0ec559e3b4a463"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.67-rc/datree-cli_0.14.67-rc_Linux_x86_64.zip"
    sha256 "82e654857ebeeaf27161cfa0cd9a477125b24c6dceeb63c9de79f3fd05890268"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.67-rc/datree-cli_0.14.67-rc_Linux_arm64.zip"
    sha256 "d09556b7f8bcb80fff508f0670f44b9181e3b81eb09dbaf9f3f205ea579108a2"
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
