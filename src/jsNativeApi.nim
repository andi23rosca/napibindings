import jsNativeApiTypes

proc napi_get_cb_info*(env: napi_env, cbinfo: napi_callback_info, argc: ptr csize_t, argv: ptr UncheckedArray[napi_value], this_arg: napi_value, data: pointer): NapiStatus {.header:"<node_api.h>".}

proc napi_throw_error*(env: napi_env, code: cstring, msg: cstring): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_int32*(env: napi_env, value: napi_value, result: ptr uint32): NapiStatus {.header: "<node_api.h>".}

proc napi_create_int32*(env: napi_env, value: int32, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_function*(env: napi_env, utf8name: cstring, length: csize_t, cb: napi_callback, data: pointer, result: ptr napi_value): NapiStatus {.header:"<node_api.h>".}

proc napi_set_named_property*(env: napi_env, obj: napi_value, utf8name: cstring, value: napi_value): NapiStatus {.header:"<node_api.h>".}