#include "config.h"

#include <memory>

#include <dune/common/test/testsuite.hh>

#include "../fifo.h"

using namespace Dune;

TestSuite test_fifo()
{
  TestSuite test;

  using namespace UG;

  FIFO fifo;
  const INT size = 32;
  int items[size];
  for (int i = 0; i < size; ++i)
    items[i] = i;

  auto buffer = std::make_unique<void*[]>(size);
  {
    const auto result = fifo_init(&fifo, buffer.get(), size * sizeof(void*));
    test.require(result, "require that fifo_init() suceeds");
  }

  test.check(fifo_empty(&fifo), "New FIFO must be empty");
  test.check(!fifo_full(&fifo), "New FIFO must not be full");
  test.check(fifo_out(&fifo) == nullptr, "New FIFO must not return an element");

  {
    const auto result = fifo_in(&fifo, &items[0]);
    test.check(!result, "Inserting an element must succeed");
  }

  test.check(!fifo_empty(&fifo), "FIFO must not be empty after inserting an element");
  test.check(!fifo_full(&fifo), "FIFO must not be full after inserting an element");

  {
    const auto v = static_cast<int*>(fifo_out(&fifo));
    test.check(v == &items[0], "FIFO must return the item inserted before");
  }

  test.check(fifo_empty(&fifo), "FIFO must be empty after removing the element again");
  test.check(!fifo_full(&fifo), "FIFO must not be full after removing the element again");

  for (auto& item : items) {
    bool result = fifo_in(&fifo, &item);
    test.check(!result, "Inserting elemens must succeed");
  }

  test.check(!fifo_empty(&fifo), "FIFO must not be empty after filling it");
  test.check(fifo_full(&fifo), "FIFO must be full after filling it");

  {
    bool result = fifo_in(&fifo, &items[0]);
    test.check(result, "Inserting into a full FIFO must fail");
  }

  for (auto& item : items) {
    const auto v = static_cast<int*>(fifo_out(&fifo));
    test.check(v == &item, "FIFO must return correct item");
  }

  test.check(fifo_empty(&fifo), "FIFO must be empty after removing all elements");
  test.check(!fifo_full(&fifo), "FIFO must not be full after removing all elements");
  test.check(fifo_out(&fifo) == nullptr, "fifo_out() must return nullptr after removing all elements");

  fifo_clear(&fifo);

  return test;
}

int main()
{
  TestSuite test;

  test.subTest(test_fifo());

  return test.exit();
}
