#include "gtest/gtest.h"
#include "../include/SoundComponent.h"
#include "../include/VideoComponent.h"

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  
  return RUN_ALL_TESTS();
}