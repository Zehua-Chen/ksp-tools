//
//  burn_in.cpp
//  macOS
//
//  Created by Zehua Chen on 4/15/23.
//
#include <cmath>

extern "C" {
#include "burn_in.h"
}

void seconds_to_time(ksp_time_t *output, float seconds) {
  output->minutes = std::floor(seconds / 60.0f);
  output->seconds = std::remainderf(seconds, 60.0f);
}

result_t burn_in(ksp_time_t *input, ksp_time_t *output) {
  float burn_window_seconds = input->seconds + input->minutes * 60.0f;
  float start_burn_in_seconds = burn_window_seconds / 2.0f;
  
  seconds_to_time(output, start_burn_in_seconds);
  
  return result_ok;
}
