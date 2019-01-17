class Rtl433 < Formula
  desc "Program to decode traffic from Devices that are broadcasting on 433.9 MHz like temperature sensors"
  homepage "https://github.com/merbanan/rtl_433"
  head "https://github.com/merbanan/rtl_433.git"
  depends_on "cmake" => :build
  depends_on "rtl-sdr"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rtl_433`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
