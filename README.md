Online Fuzzy Controller
=======================

## Test 

Overall test:

```sh
sbt test
```

Run the min-max tester:

```sh
sbt "testOnly MinMaxTester -- -DwriteVcd=1"
```

In order to see the waves:
```sh
gtkwave ./test_run_dir/DUT_should_pass/MinMaxTree.vcd
```

## Creating Codes 

The following command generates HDL files.

```sh
sbt test
```