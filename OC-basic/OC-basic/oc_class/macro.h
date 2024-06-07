//
//  macro.h
//  OC-basic
//
//  Created by 郝宜文 on 2024/6/7.
//

#ifndef macro_h
#define macro_h

#define PI 3.1415926
#define MAX_SIZE 100

#define SQUARE(x) ((x) * (x))
#define MIN(a,b) ((a)<(b)?(a):(b))

#ifdef _WIN32
#define OS "Windows"
#elif __APPLE__
#define OS "Mac OS"
#elif __linux__
#define OS "Linux"
#else
#define OS "Other"
#endif

#endif /* macro_h */
