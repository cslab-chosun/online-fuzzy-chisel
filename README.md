<p align="center">
  <a href="https://github.com/cslab-chosun/online-fuzzy-chisel/">
    <img alt="Online Fuzzy Controller" title="Online Fuzzy Controller" src="https://raw.githubusercontent.com/cslab-chosun/uploaded-files/main/img/online-fuzzy-logo3.png" width="450">
  </a>
</p>

<p align="center">
  Online <a href="https://chisel-lang.org">chisel3</a>-based Fuzzy Controller
</p>

## Introduction

Online Fuzzy Controller implemented in the Chisel HDL language. Fuzzy Controllers are commonly used for controlling systems with complex, uncertain, or nonlinear dynamics. They are based on Fuzzy Logic, which allows for the handling of imprecise, uncertain, and qualitative information.

The implementation of the Online Fuzzy Controller in Chisel HDL provides a high-level hardware design that is more easily modifiable and adaptable. The source code utilizes online arithmetic techniques for efficient computation of the Fuzzy Controller's inference engine. This Fuzzy Controller source code provides an efficient and flexible solution for controlling complex and uncertain systems.

<p align="center">
  <img src="https://raw.githubusercontent.com/cslab-chosun/uploaded-files/main/img/fuzzy-controller-design.png" width=700>
</p>

## Using Fuzzy Controller 

For testing code and generating Verilog, you need to install chisel3, please visit <a href="https://github.com/chipsalliance/chisel3/blob/master/SETUP.md">here</a> for more information. 

### Overall test

You can use the following code to perform overall tests:
```sh
sbt test
```

### Comparators test

There are two comparators, the first one is *Regular Comparator* and the second one is *Online Comparator*.

#### Regular comparator

```sh
sbt "testOnly ComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/Comparator.vcd
```

#### Online comparator

```sh
sbt "testOnly OnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/OnlineComparator.vcd
```


#### Serial min-max tester (online comparator)

```sh
sbt "testOnly MinMaxSerialOnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/MinMaxSerialOnlineComparator.vcd
```


#### Parallel min-max tester (online comparator)

```sh
sbt "testOnly MinMaxParallelOnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/MinMaxParallelOnlineComparator.vcd
```

#### Regular Fuzzification

```sh
sbt "testOnly RegularFuzzificationTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/RegularFuzzification.vcd
```

#### Online Fuzzification

```sh
sbt "testOnly OnlineFuzzificationTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/OnlineFuzzification.vcd
```

### ModelSim

If you want to use ModelSim instead of GTKWave, you can configure the `modelsim.config` file. Please visit <a href="https://github.com/cslab-chosun/online-fuzzy-chisel/blob/main/sim/README.md">here</a> for more information.

## Results 

The generated codes along with Vivado deployed codes are available in the `result` directory. The final generated codes for fuzzy controllers are available in the `generated` directory.

## Creating codes 

You can generate HDL (Verilog) files for each component separately, by using the following command.

```sh
sbt run
```

After that, you can choose the component for code generation.

```
Multiple main classes detected. Select one to run:
 [1] fuzzy.Main
 [2] fuzzy.algorithms.implementations.LutMemOnline2Main
 [3] fuzzy.algorithms.implementations.LutMemOnlineMain
 [4] fuzzy.algorithms.implementations.OnlineFuzzificationMain
 [5] fuzzy.algorithms.interface.RegularFuzzificationMain
```

The generated codes are exported to the /generated directory in the root folder.

<!-- LICENSE -->
## License

**Online Fuzzy Controller** is licensed under an **GPLv3** license.
