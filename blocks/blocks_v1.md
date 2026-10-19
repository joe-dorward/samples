### Four blocks in a row
```mermaid
  block

    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
```
### Four blocks (wrapping - two columns)
```mermaid
  block
  columns 2

    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
```
### Four blocks (wrapping - one column)
```mermaid
  block
  columns 1

    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
```
### Four blocks (one group)
```mermaid
  block

  %% define a block with an ID for styling
  block:GROUP_01
    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
  end

  %% style
  style GROUP_01 fill:cornsilk,stroke:firebrick,stroke-width:2px
```

### Four blocks (two groups - no columns)
```mermaid
  block

  %% define a block with an ID for styling
  block:GROUP_01
    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
  end

  block:GROUP_02
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
  end

  %% style
  style GROUP_01 fill:cornsilk,stroke:firebrick,stroke-width:2px
  style GROUP_02 fill:cornsilk,stroke:firebrick,stroke-width:2px
```

### Four blocks (two groups - one column)
```mermaid
  block
  columns 1

  %% define a block with an ID for styling
  block:GROUP_01
    BLOCK_01["Block 01"]
    BLOCK_02["Block 02"]
  end

  block:GROUP_02
    BLOCK_03["Block 03"]
    BLOCK_04["Block 04"]
  end

  %% style
  style GROUP_01 fill:cornsilk,stroke:firebrick,stroke-width:2px
  style GROUP_02 fill:cornsilk,stroke:firebrick,stroke-width:2px
```
