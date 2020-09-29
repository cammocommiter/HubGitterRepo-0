puts Benchmark.measure("require #{file}") {
  Kernel.require file
}.format("%n: %t %r")

disable-binary