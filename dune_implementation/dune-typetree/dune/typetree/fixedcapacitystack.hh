// -*- tab-width: 8; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=8 sw=2 sts=2:

#ifndef DUNE_TYPETREE_FIXEDCAPACITYSTACK_HH
#define DUNE_TYPETREE_FIXEDCAPACITYSTACK_HH

#include <array>
#include <cassert>

namespace Dune {
  namespace TypeTree {


    //! \addtogroup TreePath
    //! \ingroup TypeTree
    //! \{

    template<typename T>
    class FixedCapacityStackView
    {

    public:

      struct Impl
      {

        Impl(T* data, std::size_t capacity)
          : _data(data)
          , _size(0)
          , _capacity(capacity)
        {}

        T * const _data;
        std::size_t _size;
        const std::size_t _capacity;
      };

      FixedCapacityStackView(Impl& impl)
        : _impl(impl)
      {}

    public:

      std::size_t size() const
      {
        return _impl._size;
      }

      std::size_t capacity() const
      {
        return _impl._capacity;
      }

      bool empty() const
      {
        return _impl._size == 0;
      }

      bool full() const
      {
        return _impl._size == _impl._capacity;
      }

      void push_back(const T& t)
      {
        assert(!full());
        _impl._data[_impl._size++] = t;
      }

      void pop_back()
      {
        assert(!empty());
        --_impl._size;
      }

      T& back()
      {
        assert(!empty());
        return _impl._data[_impl._size-1];
      }

      const T& back() const
      {
        assert(!empty());
        return _impl._data[_impl._size-1];
      }

      T& front()
      {
        assert(!empty());
        return _impl._data[0];
      }

      const T& front() const
      {
        assert(!empty());
        return _impl._data[0];
      }

      T& operator[](std::size_t k)
      {
        assert(k < _impl._size);
        return _impl._data[k];
      }

      const T& operator[](std::size_t k) const
      {
        assert(k < _impl._size);
        return _impl._data[k];
      }

    private:
      Impl& _impl;

    };


    template<typename T, std::size_t capacity>
    class FixedCapacityStack
      : private std::array<T,capacity>
      , private FixedCapacityStackView<T>::Impl
      , public FixedCapacityStackView<T>
    {

      typedef FixedCapacityStackView<T> view_base;

    public:

      using view_base::back;
      using view_base::front;
      using view_base::size;
      using view_base::operator[];

      FixedCapacityStack()
        : FixedCapacityStackView<T>::Impl(&(static_cast<std::array<T,capacity>&>(*this)[0]),capacity)
        , FixedCapacityStackView<T>(static_cast<typename FixedCapacityStackView<T>::Impl&>(*this))
      {}

    private:

      //FixedCapacityStack(const FixedCapacityStack&);
      FixedCapacityStack& operator=(const FixedCapacityStack&);

    };

    //! \} group TypeTree

  } // namespace TypeTree
} //namespace Dune

#endif // DUNE_TYPETREE_FIXEDCAPACITYSTACK_HH
