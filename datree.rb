# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.85-rc"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.85-rc/datree-cli_0.14.85-rc_Darwin_x86_64.zip"
    sha256 "a09815555c4b49ffcdf6e5de8df73270b28033d654b12568c3d1ad64c1341568"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.85-rc/datree-cli_0.14.85-rc_Linux_x86_64.zip"
    sha256 "b4bbce3808b51fc2b3f60197e751b20978a12088d13e532bdc2adb04e7bb5d73"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.85-rc/datree-cli_0.14.85-rc_Linux_arm64.zip"
    sha256 "214702344ca7ebce37deff0e308cc7441076e06be26729f5d91f4803c7dd2fd5"
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
