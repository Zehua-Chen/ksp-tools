//
//  burn_in.cpp
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//
#include "burn_in.h"

#include <cmath>

#include "duration.h"

using namespace ksp_tools;

ksp_tools_result_t ksp_tools_burn_in(ksp_tools_duration_t *input,
                                     ksp_tools_duration_t *output) {
  float burn_window_seconds = seconds_from_duration(input);
  float start_burn_in_seconds = burn_window_seconds / 2.0f;

  seconds_to_duration(output, start_burn_in_seconds);

  return ksp_tools_result_ok;
}
