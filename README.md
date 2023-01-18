85 85 85 85 85
86 86 86 86 86
87 87 87 87 87
88 88 88 88 88
89 89 89 89 89
90 90 90 90 90
91 91 91 91 91


Online Fuzzy Controller
=======================

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
