import jsNativeApiTypes

proc napi_addon_register_func*(env: napi_env, exports: napi_value): napi_value {.header: "<node_api.h>".}

type NapiModule* {.importc: "napi_module", header:"<node_api.h>".} = object
  nm_version: cint
  nm_flags: cuint
  nm_filename: cstring
  nm_register_func: ptr napi_addon_register_func.typeof
  nm_modname: cstring
  nm_priv: pointer
  reserved: pointer

proc napi_module_register*(module: NapiModule): void {.header: "<node_api.h>".}