# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.3-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.3-rc/datree-cli_1.4.3-rc_Darwin_x86_64.zip"
    sha256 "073af78ac27a86155884c960a12308d9e41b1c9577fdbf0ddf3dfbc049b1d712"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.3-rc/datree-cli_1.4.3-rc_Darwin_arm64.zip"
    sha256 "8f912e3b2a5d199bfdc43b74be48c475ecd2a2ab9a29bec9d4058d40f5a40ff9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.3-rc/datree-cli_1.4.3-rc_Linux_x86_64.zip"
    sha256 "ad8093148631481e84ea1e3e79ea93cc272ae61f68804c5e2a9259ea82944072"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.3-rc/datree-cli_1.4.3-rc_Linux_arm64.zip"
    sha256 "2e19c0f078ef7c1d4fe3a1069b5d4432734bff4c9517ba016d969046d4878a63"
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
