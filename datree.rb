# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.18-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.18-rc/datree-cli_1.8.18-rc_Darwin_x86_64.zip"
    sha256 "6b73319dc20c570158be7c5b0596f705e1bb15943e690c24c258c97af28a1015"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.18-rc/datree-cli_1.8.18-rc_Darwin_arm64.zip"
    sha256 "514fec49dba1aa60a55ec58d811b62ecfba7065952c96d7bce0497a92f7eb5c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.18-rc/datree-cli_1.8.18-rc_Linux_x86_64.zip"
    sha256 "04f6ea61ba3311ad9ce717614123ccda3c38a4a4e414f5b8a130f445abc55199"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.18-rc/datree-cli_1.8.18-rc_Linux_arm64.zip"
    sha256 "3f6402883fa84b917321ee1bac2f03f7ec4d7f2304537ffe1e57c718ab7aa0a9"
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
