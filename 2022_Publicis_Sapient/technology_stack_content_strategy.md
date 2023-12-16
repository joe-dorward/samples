The content strategy for the Technology Stack is - for each technology:
1. You should add a sub-folder to ``/docs`` - within which, you should add:
   * A 'getting started' ``.md`` file (not always necessary)
   * An 'installing'  ``.md`` file - consider creating an 'installing'  ``.md`` file for each operating system
   * In the 'getting started' ``.md`` file, add a link to the 'installing'  ``.md`` file(s)

This structure lets you infer the path to any ``.md`` file - for example - the path to the installation guide for Flutter on macOS is:
* ``/docs/flutter/installing_flutter_macos.md``

<hr/>

```mermaid
  flowchart LR

    DOCS["/docs"]
    %%click DOCS "." _blank
    
    FLUTTER["/flutter"]
      click FLUTTER "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/flutter" _blank
      GSW_F["getting_started_with_flutter.md"] 
      F_IM["installing_flutter_macos.md"]
      %%F_DEMO["run_flutter_demo_macos.md"]
      style GSW_F fill:cornsilk,color:dodgerblue
      style F_IM fill:cornsilk,color:dodgerblue
      %%style F_DEMO fill:cornsilk,color:dodgerblue

    MACOS["/macos"]
      %%click MACOS "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/macos" _blank

    NODE_JS["/node_js"]
      click NODE_JS "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/node_js" _blank
      NODE_JS_I["installing_node_js.md"]
      style NODE_JS_I fill:cornsilk,color:dodgerblue

    NVM["/nvm"]
      click NVM "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/nvm" _blank
      NVM_I["installing_nvm.md"]
      style NVM_I fill:cornsilk,color:dodgerblue

    REACT_NATIVE["/react_native"]
      click REACT_NATIVE "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/react_native" _blank
      GSW_RN["getting_started_with_react_native.md"]
      GSW_RN_IM["installing_react_native_macos.md"]
      style GSW_RN fill:cornsilk,color:dodgerblue
      style GSW_RN_IM fill:cornsilk,color:dodgerblue

    VS_CODE["/vs_code"]
      %%click VS_CODE "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/vs_code" _blank
      GSW_VS_CODE["getting_started_with_vs_code.md"]
      style GSW_VS_CODE fill:cornsilk,color:dodgerblue

    XCODE["/xcode"]
      click XCODE "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/xcode" _blank
      XCODE_I["installing_xcode.md"]
      style XCODE_I fill:cornsilk,color:dodgerblue

    YARN["/yarn"]
      click YARN "https://github.com/joe-dorward/samples/tree/main/2022_Publicis_Sapient/yarn" _blank
      YARN_I["installing_yarn.md"]
      style YARN_I fill:cornsilk,color:dodgerblue   
      
    %% CONNECTIONS
    
    DOCS-- add<br/>sub-folder -->FLUTTER
      FLUTTER-- add<br/>'getting started' -->GSW_F
      FLUTTER-- add<br/>'installing' -->F_IM %% install macos
      %%FLUTTER-- add<br/>'run demo' -->F_DEMO

    DOCS-- add<br/>sub-folder -->MACOS

    DOCS-- add<br/>sub-folder -->NODE_JS-- add<br/>'installing' -->NODE_JS_I
    DOCS-- add<br/>sub-folder -->NVM-- add<br/>'installing' -->NVM_I

    DOCS-- add<br/>sub-folder -->REACT_NATIVE
      REACT_NATIVE-- add<br/>'getting started' -->GSW_RN
      REACT_NATIVE-- add<br/>'installing' -->GSW_RN_IM

    DOCS-- add<br/>sub-folder -->VS_CODE
      VS_CODE-- add<br/>'getting started' -->GSW_VS_CODE

    DOCS-- add<br/>sub-folder -->XCODE-- add<br/>'installing' -->XCODE_I
    DOCS-- add<br/>sub-folder -->YARN-- add<br/>'installing' -->YARN_I
 ```
