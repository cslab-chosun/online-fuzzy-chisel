Online Fuzzy Controller
=======================

## Test 

Overall test:

```sh
sbt test
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

## Creating codes 

The following command generates HDL files.

```sh
sbt test
```