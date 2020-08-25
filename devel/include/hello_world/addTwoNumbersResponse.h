// Generated by gencpp from file hello_world/addTwoNumbersResponse.msg
// DO NOT EDIT!


#ifndef HELLO_WORLD_MESSAGE_ADDTWONUMBERSRESPONSE_H
#define HELLO_WORLD_MESSAGE_ADDTWONUMBERSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello_world
{
template <class ContainerAllocator>
struct addTwoNumbersResponse_
{
  typedef addTwoNumbersResponse_<ContainerAllocator> Type;

  addTwoNumbersResponse_()
    : sum(0)  {
    }
  addTwoNumbersResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> const> ConstPtr;

}; // struct addTwoNumbersResponse_

typedef ::hello_world::addTwoNumbersResponse_<std::allocator<void> > addTwoNumbersResponse;

typedef boost::shared_ptr< ::hello_world::addTwoNumbersResponse > addTwoNumbersResponsePtr;
typedef boost::shared_ptr< ::hello_world::addTwoNumbersResponse const> addTwoNumbersResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_world::addTwoNumbersResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello_world::addTwoNumbersResponse_<ContainerAllocator1> & lhs, const ::hello_world::addTwoNumbersResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello_world::addTwoNumbersResponse_<ContainerAllocator1> & lhs, const ::hello_world::addTwoNumbersResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello_world

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const ::hello_world::addTwoNumbersResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_world/addTwoNumbersResponse";
  }

  static const char* value(const ::hello_world::addTwoNumbersResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#response field\n"
"\n"
"int64 sum\n"
"\n"
;
  }

  static const char* value(const ::hello_world::addTwoNumbersResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct addTwoNumbersResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_world::addTwoNumbersResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_world::addTwoNumbersResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_WORLD_MESSAGE_ADDTWONUMBERSRESPONSE_H
