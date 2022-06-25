// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
#ifndef DUNE_COMMON_TYPELIST_HH
#define DUNE_COMMON_TYPELIST_HH

#include <type_traits>
#include <tuple>


namespace Dune {

  /**
   * \brief A type that refers to another type
   *
   * \ingroup TypeUtilities
   *
   * The referred-to type can be accessed using the contained typedef `type`
   * or, if you have a `MetaType` object by using the dereferencing operator.
   *
   * MetaType<T> is an empty literal class.  Objects of type `MetaType<T>` can
   * still be used even if `T` is incomplete or non-constructible.  They can
   * even be used if `T` is complete but non-instatiable
   * (e.g. `std::tuple<void>`), although you need to be extra careful to avoid
   * attempts to instantiate the template parameter `T` due to
   * argument-dependent lookup (ADL).
   *
   * Objects of type `MetaType` are passed to the generic lambda when
   * iterating over a `TypeList` using `Hybrid::forEach()`.
   */
  template<class T>
  struct MetaType {
    //! The referred-to type
    using type = T;
  };

  /**
   * \brief A simple type list
   *
   * \ingroup TypeUtilities
   *
   * The purpose of this is to encapsulate a list of types.
   * This allows, e.g., to pack an argument-pack into one type.
   * In contrast to a std::tuple a TypeList can be created
   * without creating any object of the stored types.
   *
   * This can, e.g., be used for overload resolution
   * with tag-dispatch where TypeList is used as tag.
   * In combination with PriorityTag this allows to emulate
   * partial specialization of function templates in
   * a sane way, i.e., without the hassle of classic
   * specialization of function templates
   *
   * A `TypeList<T...>` can be iterated over using `Hybrid::forEach()`.  For
   * the purpose of iterating with `Hybrid::forEach()`, the members of
   * `TypeList<T...>{}` are `MetaType<T>{}...`.  This allows iteration over
   * incomplete and non-constructible types, since no attempt is made to
   * create objects of those types:
   * \code
   * using namespace Hybrid;
   * struct NonConstructible { NonConstructible() = delete; };
   * forEach(TypeList<void, NonConstructible, int>{}, [] (auto metaType) {
   *   std::cout << className<typename decltype(metaType)::type>()
   *             << std::endl;
   * });
   * \endcode
   *
   * It is also possible to iterate over complete-but-non-instantiable types,
   * e.g. `tuple<void>`.  But to do so you need to suppress ADL in the
   * invocation of `forEach()`, since ADL would try to instanciate complete
   * types in the template argument list of `TypeList` in order to find the
   * associated namespaces.  To suppress ADL you can either use a qualified
   * lookup:
   * \code
   * Hybrid::forEach(TypeList<std::tuple<void> >{},
   *                 [] (auto metaType) { ... });
   * });
   * \endcode
   * or you can enclose the name `forEach` in parentheses:
   * \code
   * using namespace Hybrid;
   * (forEach)(TypeList<std::tuple<void> >{}, [] (auto metaType) { ... });
   * \endcode
   */
  template<class... T>
  using TypeList = std::tuple<MetaType<T>...>;



  /**
   * \brief Check if given type is a TypeList
   *
   * \ingroup TypeUtilities
   *
   * The result of the check is encoded in the
   * base class of type std::integral_constant<bool, result>.
   */
  template<class T>
  struct IsTypeList : std::false_type {};

  /**
   * \copydoc IsTypeList
   *
   * \ingroup TypeUtilities
   */
  template<class... T>
  struct IsTypeList<TypeList<T...> > : std::true_type {};



  /**
   * \brief Check if given type is an empty TypeList
   *
   * \ingroup TypeUtilities
   *
   * The result of the check is encoded in the
   * base class of type std::integral_constant<bool, result>.
   */
  template<class T>
  struct IsEmptyTypeList : std::is_same<T, TypeList<> > {};



  template<class T>
  struct TypeListSize {};

  /**
   * \brief Get size of TypeList
   *
   * \ingroup TypeUtilities
   *
   * The result of is encoded in the base class of
   * type std::integral_constant<std::size_t, result>.
   */
  template<class... T>
  struct TypeListSize<TypeList<T...>> : std::integral_constant<std::size_t, sizeof...(T)> {};



  template<std::size_t i, class T>
  struct TypeListElement {};

  /**
   * \brief Get element of TypeList
   *
   * \ingroup TypeUtilities
   */
  template<std::size_t i, class... T>
  struct TypeListElement<i, TypeList<T...>>
  {
    /**
     * \brief Export type of i-th element in TypeList
     *
     * \todo Implement without using std::tuple.
     */
    using type = typename std::tuple_element<i, std::tuple<T...>>::type;

    /**
     * \brief Export type of i-th element in TypeList
     *
     * \todo Implement without using std::tuple.
     */
    using Type = type;
  };

  /**
   * \brief Shortcut for TypeListElement<i, T>::type;
   */
  template<std::size_t i, class T>
  using TypeListEntry_t = typename TypeListElement<i, T>::type;


} // namespace Dune

#endif // DUNE_COMMON_TYPELIST_HH
