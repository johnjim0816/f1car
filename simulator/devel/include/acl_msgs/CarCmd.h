// Generated by gencpp from file acl_msgs/CarCmd.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_CARCMD_H
#define ACL_MSGS_MESSAGE_CARCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace acl_msgs
{
template <class ContainerAllocator>
struct CarCmd_
{
  typedef CarCmd_<ContainerAllocator> Type;

  CarCmd_()
    : steering(0.0)
    , throttle(0.0)
    , drive(false)  {
    }
  CarCmd_(const ContainerAllocator& _alloc)
    : steering(0.0)
    , throttle(0.0)
    , drive(false)  {
  (void)_alloc;
    }



   typedef double _steering_type;
  _steering_type steering;

   typedef double _throttle_type;
  _throttle_type throttle;

   typedef uint8_t _drive_type;
  _drive_type drive;





  typedef boost::shared_ptr< ::acl_msgs::CarCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::CarCmd_<ContainerAllocator> const> ConstPtr;

}; // struct CarCmd_

typedef ::acl_msgs::CarCmd_<std::allocator<void> > CarCmd;

typedef boost::shared_ptr< ::acl_msgs::CarCmd > CarCmdPtr;
typedef boost::shared_ptr< ::acl_msgs::CarCmd const> CarCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::CarCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::CarCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::CarCmd_<ContainerAllocator1> & lhs, const ::acl_msgs::CarCmd_<ContainerAllocator2> & rhs)
{
  return lhs.steering == rhs.steering &&
    lhs.throttle == rhs.throttle &&
    lhs.drive == rhs.drive;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::CarCmd_<ContainerAllocator1> & lhs, const ::acl_msgs::CarCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::CarCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::CarCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::CarCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::CarCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::CarCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::CarCmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::CarCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ac2be4070d79fa054aff6c418b04022";
  }

  static const char* value(const ::acl_msgs::CarCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ac2be4070d79fa0ULL;
  static const uint64_t static_value2 = 0x54aff6c418b04022ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::CarCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/CarCmd";
  }

  static const char* value(const ::acl_msgs::CarCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::CarCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 steering\n"
"float64 throttle\n"
"bool drive\n"
;
  }

  static const char* value(const ::acl_msgs::CarCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::CarCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.steering);
      stream.next(m.throttle);
      stream.next(m.drive);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::CarCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::CarCmd_<ContainerAllocator>& v)
  {
    s << indent << "steering: ";
    Printer<double>::stream(s, indent + "  ", v.steering);
    s << indent << "throttle: ";
    Printer<double>::stream(s, indent + "  ", v.throttle);
    s << indent << "drive: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.drive);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_CARCMD_H