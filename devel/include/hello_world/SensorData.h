// Generated by gencpp from file hello_world/SensorData.msg
// DO NOT EDIT!


#ifndef HELLO_WORLD_MESSAGE_SENSORDATA_H
#define HELLO_WORLD_MESSAGE_SENSORDATA_H


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
struct SensorData_
{
  typedef SensorData_<ContainerAllocator> Type;

  SensorData_()
    : manufacturer_name()
    , distance(0)
    , sensor_type()
    , max_range(0)
    , min_range(0)  {
    }
  SensorData_(const ContainerAllocator& _alloc)
    : manufacturer_name(_alloc)
    , distance(0)
    , sensor_type(_alloc)
    , max_range(0)
    , min_range(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _manufacturer_name_type;
  _manufacturer_name_type manufacturer_name;

   typedef int64_t _distance_type;
  _distance_type distance;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sensor_type_type;
  _sensor_type_type sensor_type;

   typedef int64_t _max_range_type;
  _max_range_type max_range;

   typedef int64_t _min_range_type;
  _min_range_type min_range;





  typedef boost::shared_ptr< ::hello_world::SensorData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_world::SensorData_<ContainerAllocator> const> ConstPtr;

}; // struct SensorData_

typedef ::hello_world::SensorData_<std::allocator<void> > SensorData;

typedef boost::shared_ptr< ::hello_world::SensorData > SensorDataPtr;
typedef boost::shared_ptr< ::hello_world::SensorData const> SensorDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_world::SensorData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_world::SensorData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::hello_world::SensorData_<ContainerAllocator1> & lhs, const ::hello_world::SensorData_<ContainerAllocator2> & rhs)
{
  return lhs.manufacturer_name == rhs.manufacturer_name &&
    lhs.distance == rhs.distance &&
    lhs.sensor_type == rhs.sensor_type &&
    lhs.max_range == rhs.max_range &&
    lhs.min_range == rhs.min_range;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::hello_world::SensorData_<ContainerAllocator1> & lhs, const ::hello_world::SensorData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace hello_world

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::SensorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_world::SensorData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::SensorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_world::SensorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::SensorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_world::SensorData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_world::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a1990867dc4d7d4a1a2518817eae425";
  }

  static const char* value(const ::hello_world::SensorData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a1990867dc4d7d4ULL;
  static const uint64_t static_value2 = 0xa1a2518817eae425ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_world::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_world/SensorData";
  }

  static const char* value(const ::hello_world::SensorData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_world::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string manufacturer_name\n"
"int64 distance\n"
"string sensor_type\n"
"int64 max_range\n"
"int64 min_range\n"
;
  }

  static const char* value(const ::hello_world::SensorData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_world::SensorData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.manufacturer_name);
      stream.next(m.distance);
      stream.next(m.sensor_type);
      stream.next(m.max_range);
      stream.next(m.min_range);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SensorData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_world::SensorData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_world::SensorData_<ContainerAllocator>& v)
  {
    s << indent << "manufacturer_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.manufacturer_name);
    s << indent << "distance: ";
    Printer<int64_t>::stream(s, indent + "  ", v.distance);
    s << indent << "sensor_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sensor_type);
    s << indent << "max_range: ";
    Printer<int64_t>::stream(s, indent + "  ", v.max_range);
    s << indent << "min_range: ";
    Printer<int64_t>::stream(s, indent + "  ", v.min_range);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_WORLD_MESSAGE_SENSORDATA_H
