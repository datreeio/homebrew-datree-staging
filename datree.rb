# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.10-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.10-rc/datree-cli_1.2.10-rc_Darwin_x86_64.zip"
    sha256 "5d6733b7c7bccdc960a1910f8f819f5a39cf658f1a5751a7b8de6715c579bad6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.10-rc/datree-cli_1.2.10-rc_Darwin_arm64.zip"
    sha256 "ef9b9d6c1fe7240bce7f8a78b862a0fdc972f3e432cef63a22e954ebf0872f84"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.10-rc/datree-cli_1.2.10-rc_Linux_x86_64.zip"
    sha256 "7fd284779f4422a8150cdda826f3d8f1d60813690df34db8ba7c3e9a3827245c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.10-rc/datree-cli_1.2.10-rc_Linux_arm64.zip"
    sha256 "df337bf3c89c5c392377788912642c15cf5767fc90c815ae3a7812b00cd81893"
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
