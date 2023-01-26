# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.8.20-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.20-rc/datree-cli_1.8.20-rc_Darwin_x86_64.zip"
    sha256 "8c57f71b92814dda0d97bf360b6f90bc7731f392189ba975114ad7c00f50c310"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.8.20-rc/datree-cli_1.8.20-rc_Darwin_arm64.zip"
    sha256 "3970d28f561f48bac996197589673db21baab68bc259783e5784e7fc1b745c28"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.8.20-rc/datree-cli_1.8.20-rc_Linux_x86_64.zip"
    sha256 "e111442378c91697109e4d41f71e7e3a700a7c8dfce0286a8183001a80333fc4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.8.20-rc/datree-cli_1.8.20-rc_Linux_arm64.zip"
    sha256 "955f443c05adacfc95e8030efaaf456fc2a8a520098a063d67fd4b5086b871f1"
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
