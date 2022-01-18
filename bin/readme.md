# bash tools

## kdiff


### Description

This tool makes it possible to run a diff on 2 files after they have been run through a command.

### Usage

```
kdiff fileLeft fileRight command
```

The parsed `fileLeft`, `fileRight`, `command` are printed on stderr.

The diff `command` run is printed on stderr.

The diff output goes to stdout with the `diff -yi` format.

### Example

```
kdiff a.bin b.bin xxd -g4
```

### Limitations;
* The commands have to take the files as the last argument.