# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.91-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Darwin_x86_64.zip"
    sha256 "0a5439a86442f216018f5e362075f5f1880824191201efa0092976cde669b63b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_x86_64.zip"
    sha256 "9a08d58b3a62e33bc1e81b86408b49163cff879ad1a52a4763271a5e3f9ec9a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.91-rc/datree-cli_0.14.91-rc_Linux_arm64.zip"
    sha256 "58abd5823e7a4817bef4e9c6d9acbda3ccd67fe4d19d0d8368719e9f618f870c"
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
