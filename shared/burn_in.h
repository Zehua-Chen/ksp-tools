//
//  burn_in.hpp
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//

#pragma once

#ifndef burn_in_h
#define burn_in_h

#include <stdio.h>
#include "result.h"

typedef struct ksp_time {
  float seconds;
  float minutes;
} ksp_time_t;

result_t burn_in(ksp_time_t *input, ksp_time_t *output);

#endif /* burn_in_h */
