add_executable (
  combinations 
	"combinations.cpp" 
	"combinations.h" 
	"main.cpp")


add_executable(
  combinations_test

  "combinations.cpp" 
  "combinations.h" 
  test.cpp )

target_link_libraries(
  combinations_test
  gtest_main)

include(GoogleTest)

gtest_discover_tests(combinations_test)
