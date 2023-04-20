//
//  duration.h
//  KSP Tools
//
//  Created by Zehua Chen on 4/16/23.
//

#ifndef duration_h
#define duration_h

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ksp_tools_duration {
  float seconds;
  float minutes;
} ksp_tools_duration_t;

#ifdef __cplusplus
}
#endif

#ifdef __cplusplus
namespace ksp_tools {
float seconds_from_duration(ksp_tools_duration_t *duration);
void seconds_to_duration(ksp_tools_duration_t *duration, float seconds);
}  // namespace ksp_tools
#endif

#endif /* duration_h */
