//
//  burn_in.hpp
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//

#pragma once

#ifndef burn_in_h
#define burn_in_h

#include "duration.h"
#include "result.h"

#ifdef __cplusplus
extern "C" {
#endif

ksp_tools_result_t ksp_tools_burn_in(
    ksp_tools_duration_t *input, ksp_tools_duration_t *ksp_tools_duration_t);

#ifdef __cplusplus
}
#endif

#endif /* burn_in_h */
