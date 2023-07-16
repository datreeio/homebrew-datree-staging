# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.9.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.18-rc/datree-cli_1.9.18-rc_Darwin_x86_64.zip"
    sha256 "fce44e8e715bd89162f6a335558213b46f51aaf098eac937e0ed2e72506a8f53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.9.18-rc/datree-cli_1.9.18-rc_Darwin_arm64.zip"
    sha256 "ba16e4b06ebda4bcc1188b0202e0582af40c81084b7f105164f28e68479373e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.9.18-rc/datree-cli_1.9.18-rc_Linux_x86_64.zip"
    sha256 "beb754ddc1dc688b3734814efe2ec856eeef879c6f7cb58a250d2bb9ba203827"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.9.18-rc/datree-cli_1.9.18-rc_Linux_arm64.zip"
    sha256 "63be862b9155897eb64559ed296f1259fc002f235645328ce4cab30c8c7ab648"
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
