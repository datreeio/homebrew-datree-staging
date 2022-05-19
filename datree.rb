# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.26-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.26-rc/datree-cli_1.4.26-rc_Darwin_x86_64.zip"
    sha256 "d7d0a50154727663237db10497c3f1546b0dfd6b19be3ffd8f6b80eea1fe636d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.26-rc/datree-cli_1.4.26-rc_Darwin_arm64.zip"
    sha256 "d945ea75c7f4e934ac075eea3bde5852fee52ba767a57ca50386abb7370e6d9f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.26-rc/datree-cli_1.4.26-rc_Linux_x86_64.zip"
    sha256 "8806343124fb06d16a3de7ae2edc198f9a10c2ee5c6b7778dc9a6bd3db150f9b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.26-rc/datree-cli_1.4.26-rc_Linux_arm64.zip"
    sha256 "a8125ebbca305035c9aae7ac14d4361972ee4a86975888b093403884874e51a9"
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
