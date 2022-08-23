# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.12-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.12-rc/datree-cli_1.6.12-rc_Darwin_x86_64.zip"
    sha256 "5daf2bceaa68feeaafc7156a4b1d9fb1c11917a16a62fd6c922f51ced87043b8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.12-rc/datree-cli_1.6.12-rc_Darwin_arm64.zip"
    sha256 "59b64c1b5f9e2796be63ad927a4a4d14bb0f277688d7c668f59eaeca24cd4b67"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.12-rc/datree-cli_1.6.12-rc_Linux_x86_64.zip"
    sha256 "63d293f1e4f72f034256756b18eb7ba053cdbafca9cd6701c9c8b7489945fdf5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.12-rc/datree-cli_1.6.12-rc_Linux_arm64.zip"
    sha256 "11befe93161921fa64b7b20dbb02afa64244831d5a0814b4349acb989a12ea4a"
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
