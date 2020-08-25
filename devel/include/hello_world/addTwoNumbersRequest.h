// Generated by gencpp from file hello_world/addTwoNumbersRequest.msg
// DO NOT EDIT!


#ifndef HELLO_WORLD_MESSAGE_ADDTWONUMBERSREQUEST_H
#define HELLO_WORLD_MESSAGE_ADDTWONUMBERSREQUEST_H


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
struct addTwoNumbersRequest_
{
  typedef addTwoNumbersRequest_<ContainerAllocator> Type;

  addTwoNumbersRequest_()
    : x(0)
    , y(0)  {
    }
  addTwoNumbersRequest_(const ContainerAllocator& _alloc)
    : x(0)
    , y(0)  {
  (void)_alloc;
    }



   typedef int64_t _x_type;
  _x_type x;

   typedef int64_t _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> const> ConstPtr;

}; // struct addTwoNumbersRequest_

typedef ::hello_world::addTwoNumbersRequest_<std::allocator<void> > addTwoNumbersRequest;

typedef boost::shared_ptr< ::hello_world::addTwoNumbersRequest > addTwoNumbersRequestPtr;
typedef boost::shared_ptr< ::hello_world::addTwoNumbersRequest const> addTwoNumbersRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_world::addTwoNumbersRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello_world::addTwoNumbersRequest_<ContainerAllocator1> & lhs, const ::hello_world::addTwoNumbersRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello_world::addTwoNumbersRequest_<ContainerAllocator1> & lhs, const ::hello_world::addTwoNumbersRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello_world

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b834ede922a0fff22c43585c533b49f";
  }

  static const char* value(const ::hello_world::addTwoNumbersRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b834ede922a0fffULL;
  static const uint64_t static_value2 = 0x22c43585c533b49fULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_world/addTwoNumbersRequest";
  }

  static const char* value(const ::hello_world::addTwoNumbersRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#request field\n"
"\n"
"int64 x\n"
"int64 y\n"
"\n"
;
  }

  static const char* value(const ::hello_world::addTwoNumbersRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct addTwoNumbersRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_world::addTwoNumbersRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_world::addTwoNumbersRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_WORLD_MESSAGE_ADDTWONUMBERSREQUEST_H
