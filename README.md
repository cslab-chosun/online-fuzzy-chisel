<h1 align="center"> Online Fuzzy Controller </h1> <br>
<p align="center">
  <a href="https://github.com/cslab-chosun/online-fuzzy-chisel/">
    <img alt="Online Fuzzy Controller" title="GitPoint" src="http://i.imgur.com/VShxJHs.png" width="450">
  </a>
</p>

<p align="center">
  An Online Fuzzy Controller written in <a href="chisel-lang.org">Chisel</a>.
</p>

## Introduction

Online Fuzzy Controller implemented in the Chisel HDL language. Fuzzy Controllers are commonly used for controlling systems with complex, uncertain, or nonlinear dynamics. They are based on Fuzzy Logic, which allows for the handling of imprecise, uncertain, and qualitative information.

The implementation of Online Fuzzy Controller in Chisel HDL provides a high-level hardware design that is more easily modifiable and adaptable. The source code utilizes online arithmetic techniques for efficient computation of the Fuzzy Controller's inference engine. This Fuzzy Controller source code provides an efficient and flexible solution for controlling complex and uncertain systems.

View repository and user information, control your notifications and even manage your issues and pull requests. Built with React Native, GitPoint is one of the most feature-rich unofficial GitHub clients that is 100% free.

**Available for both iOS and Android.**

<p align="center">
  <img src = "http://i.imgur.com/HowF6aM.png" width=700>
</p>

# Test 

## Overall test

```sh
sbt test
```

## Comparators test

There are two comparators, the first one is *Regular Comparator* and the second one is *Online Comparator*.

### Regular comparator

```sh
sbt "testOnly ComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/Comparator.vcd
```

### Online comparator

```sh
sbt "testOnly OnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/OnlineComparator.vcd
```


### Serial min-max tester (online comparator)

```sh
sbt "testOnly MinMaxSerialOnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/MinMaxSerialOnlineComparator.vcd
```


### Parallel min-max tester (online comparator)

```sh
sbt "testOnly MinMaxParallelOnlineComparatorTest -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/MinMaxParallelOnlineComparator.vcd
```

# Creating codes 

The following command generates HDL files.

```sh
sbt run
```
