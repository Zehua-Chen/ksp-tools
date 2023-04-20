//
//  duration.cc
//  KSP Tools
//
//  Created by Zehua Chen on 4/16/23.
//

#include "duration.h"

#include <assert.h>

#include <cmath>

namespace ksp_tools {
float seconds_from_duration(ksp_tools_duration_t *duration) {
  assert(duration != nullptr);

  return duration->seconds + duration->minutes * 60.0f;
}

void seconds_to_duration(ksp_tools_duration_t *duration, float seconds) {
  assert(duration != nullptr);

  duration->minutes = std::floor(seconds / 60.0f);
  duration->seconds = std::fmodf(seconds, 60.0f);
}
}  // namespace ksp_tools
