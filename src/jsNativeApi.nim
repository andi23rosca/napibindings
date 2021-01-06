import jsNativeApiTypes

proc napi_get_last_error_info*(env: napi_env, result: UncheckedArray[NapiExtendedErrorInfo]): NapiStatus {.header: "<node_api.h>".}


# Getters for defined singletons
proc napi_get_undefined*(env: napi_env, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_get_null*(env: napi_env, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_get_global*(env: napi_env, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_get_boolean*(env: napi_env, value: bool, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}



# Methods to create Primitive types/Objects
proc napi_create_object*(env: napi_env, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_array*(env: napi_env, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_array_with_length*(env: napi_env, length: csize_t, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_double*(env: napi_env, value: float64, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_int32*(env: napi_env, value: int32, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_uint32*(env: napi_env, value: uint32, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_int64*(env: napi_env, value: int64, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_string_latin1*(env: napi_env, str: cstring, length: csize_t, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_string_utf8*(env: napi_env, str: cstring, length: csize_t, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

# TODO napi_create_string_utf16 I'm not sure what the equivalent would be in nim
proc napi_create_symbol*(env: napi_env, description: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_function*(env: napi_env, utf8name: cstring, length: csize_t, cb: napi_callback, data: pointer, result: ptr napi_value): NapiStatus {.header:"<node_api.h>".}

proc napi_create_error*(env: napi_env, code: napi_value, msg: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_type_error*(env: napi_env, code: napi_value, msg: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_create_range_error*(env: napi_env, code: napi_value, msg: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}



# Methods to get the native napi_value from Primitive type
proc napi_typeof*(env: napi_env, value: napi_value, result: ptr NapiValueType): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_double*(env: napi_env, value: napi_value, result: ptr float64): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_int32*(env: napi_env, value: napi_value, result: ptr uint32): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_uint32*(env: napi_env, value: napi_value, result: ptr uint32): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_int64*(env: napi_env, value: napi_value, result: ptr int64): NapiStatus {.header: "<node_api.h>".}

proc napi_get_value_bool*(env: napi_env, value: napi_value, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

# Copies LATIN-1 encoded bytes from a string into a buffer.
proc napi_get_value_string_latin1*(env: napi_env, value: napi_value, buf: cstring, bufsize: csize_t, result: ptr csize_t): NapiStatus {.header: "<node_api.h>".}

#Copies UTF-8 encoded bytes from a string into a buffer.
proc napi_get_value_string_utf8*(env: napi_env, value: napi_value, buf: cstring, bufsize: csize_t, result: ptr csize_t): NapiStatus {.header: "<node_api.h>".}
# TODO napi_get_value_string_utf16



# Methods to coerce values
# These APIs may execute user scripts
proc napi_coerce_to_bool*(env: napi_env, value: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_coerce_to_number*(env: napi_env, value: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_coerce_to_object*(env: napi_env, value: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_coerce_to_string*(env: napi_env, value: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}




# Methods to work with Objects
proc napi_get_prototype*(env: napi_env, obj: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_get_property_names*(env: napi_env, obj: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_set_property*(env: napi_env, obj: napi_value, key: napi_value, value: napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_has_property*(env: napi_env, obj: napi_value, key: napi_value, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

proc napi_get_property*(env: napi_env, obj: napi_value, key: napi_value, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_delete_property*(env: napi_env, obj: napi_value, key: napi_value, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

proc napi_has_own_property*(env: napi_env, obj: napi_value, key: napi_value, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

proc napi_set_named_property*(env: napi_env, obj: napi_value, utf8name: cstring, value: napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_has_named_property*(env: napi_env, obj: napi_value, utf8name: cstring, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

proc napi_get_named_property*(env: napi_env, obj: napi_value, utf8name: cstring, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_set_element*(env: napi_env, obj: napi_value, index: uint32, value: napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_has_element*(env: napi_env, obj: napi_value, index: uint32, result: ptr bool): NapiStatus {.header: "<node_api.h>".}

proc napi_get_element*(env: napi_env, obj: napi_value, index: uint32, result: ptr napi_value): NapiStatus {.header: "<node_api.h>".}

proc napi_delete_element*(env: napi_env, obj: napi_value, index: uint32, result: ptr bool): NapiStatus {.header: "<node_api.h>".}




proc napi_throw_error*(env: napi_env, code: cstring, msg: cstring): NapiStatus {.header: "<node_api.h>".}

proc napi_get_cb_info*(env: napi_env, cbinfo: napi_callback_info, argc: ptr csize_t, argv: ptr UncheckedArray[napi_value], this_arg: napi_value, data: pointer): NapiStatus {.header:"<node_api.h>".}