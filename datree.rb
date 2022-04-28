# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.9-rc"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.9-rc/datree-cli_1.3.9-rc_Darwin_x86_64.zip"
    sha256 "51a56f723a1b599dc55d5bade7f567c8e7eca648563ac0ac6b926fe8259f0246"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.9-rc/datree-cli_1.3.9-rc_Darwin_arm64.zip"
    sha256 "1fcbd4818f5fc253a4ff66bd7ce08cfa07f9f4affeb985e4cbd6a860247cb9b5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.9-rc/datree-cli_1.3.9-rc_Linux_x86_64.zip"
    sha256 "55f687a8c0a4cae81ab85b2948bac992b9863c9deff25c38adb43b190aabc5c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.9-rc/datree-cli_1.3.9-rc_Linux_arm64.zip"
    sha256 "d623dafbd1e4235978ccb8dda3a30d6dd14a79ea21a532334f046ff5363f0220"
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
