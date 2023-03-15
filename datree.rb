# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.42-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.42-rc/datree-cli_1.8.42-rc_Darwin_x86_64.zip"
    sha256 "f4bb2b0f4cef4b03c17fe994f971de889d118233a2611d361237ae0a21913db6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.42-rc/datree-cli_1.8.42-rc_Darwin_arm64.zip"
    sha256 "527dd4d1495715ac0d80f380aaed8d9e27b2b8d1ea8e45bd61a87061b1ae7813"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.42-rc/datree-cli_1.8.42-rc_Linux_x86_64.zip"
    sha256 "77f154e26ec60031ecd857c360708ea94d5692f899b659d28e199ee1daf600f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.42-rc/datree-cli_1.8.42-rc_Linux_arm64.zip"
    sha256 "9a7a3b0d7d10e101d318d206b89e502d8ad77b6701c7807ab9a57f974181a81a"
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
