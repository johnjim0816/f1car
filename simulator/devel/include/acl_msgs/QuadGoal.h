// Generated by gencpp from file acl_msgs/QuadGoal.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_QUADGOAL_H
#define ACL_MSGS_MESSAGE_QUADGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct QuadGoal_
{
  typedef QuadGoal_<ContainerAllocator> Type;

  QuadGoal_()
    : header()
    , pos()
    , vel()
    , accel()
    , jerk()
    , yaw(0.0)
    , dyaw(0.0)
    , cut_power(false)
    , reset_xy_int(false)
    , reset_z_int(false)
    , xy_mode(0)
    , z_mode(0)  {
    }
  QuadGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , pos(_alloc)
    , vel(_alloc)
    , accel(_alloc)
    , jerk(_alloc)
    , yaw(0.0)
    , dyaw(0.0)
    , cut_power(false)
    , reset_xy_int(false)
    , reset_z_int(false)
    , xy_mode(0)
    , z_mode(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _pos_type;
  _pos_type pos;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _vel_type;
  _vel_type vel;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _accel_type;
  _accel_type accel;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _jerk_type;
  _jerk_type jerk;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _dyaw_type;
  _dyaw_type dyaw;

   typedef uint8_t _cut_power_type;
  _cut_power_type cut_power;

   typedef uint8_t _reset_xy_int_type;
  _reset_xy_int_type reset_xy_int;

   typedef uint8_t _reset_z_int_type;
  _reset_z_int_type reset_z_int;

   typedef int8_t _xy_mode_type;
  _xy_mode_type xy_mode;

   typedef int8_t _z_mode_type;
  _z_mode_type z_mode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(MODE_POS)
  #undef MODE_POS
#endif
#if defined(_WIN32) && defined(MODE_VEL)
  #undef MODE_VEL
#endif
#if defined(_WIN32) && defined(MODE_ACCEL)
  #undef MODE_ACCEL
#endif

  enum {
    MODE_POS = 0,
    MODE_VEL = 1,
    MODE_ACCEL = 2,
  };


  typedef boost::shared_ptr< ::acl_msgs::QuadGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::QuadGoal_<ContainerAllocator> const> ConstPtr;

}; // struct QuadGoal_

typedef ::acl_msgs::QuadGoal_<std::allocator<void> > QuadGoal;

typedef boost::shared_ptr< ::acl_msgs::QuadGoal > QuadGoalPtr;
typedef boost::shared_ptr< ::acl_msgs::QuadGoal const> QuadGoalConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::QuadGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::QuadGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::QuadGoal_<ContainerAllocator1> & lhs, const ::acl_msgs::QuadGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.pos == rhs.pos &&
    lhs.vel == rhs.vel &&
    lhs.accel == rhs.accel &&
    lhs.jerk == rhs.jerk &&
    lhs.yaw == rhs.yaw &&
    lhs.dyaw == rhs.dyaw &&
    lhs.cut_power == rhs.cut_power &&
    lhs.reset_xy_int == rhs.reset_xy_int &&
    lhs.reset_z_int == rhs.reset_z_int &&
    lhs.xy_mode == rhs.xy_mode &&
    lhs.z_mode == rhs.z_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::QuadGoal_<ContainerAllocator1> & lhs, const ::acl_msgs::QuadGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::QuadGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::QuadGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::QuadGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::QuadGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::QuadGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::QuadGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::QuadGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "950d02887809b520e2711856716b3af3";
  }

  static const char* value(const ::acl_msgs::QuadGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x950d02887809b520ULL;
  static const uint64_t static_value2 = 0xe2711856716b3af3ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::QuadGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/QuadGoal";
  }

  static const char* value(const ::acl_msgs::QuadGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::QuadGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"geometry_msgs/Vector3 pos\n"
"geometry_msgs/Vector3 vel\n"
"geometry_msgs/Vector3 accel\n"
"geometry_msgs/Vector3 jerk\n"
"float64 yaw\n"
"float64 dyaw\n"
"bool cut_power\n"
"bool reset_xy_int\n"
"bool reset_z_int\n"
"int8 xy_mode\n"
"int8 z_mode\n"
"int8 MODE_POS=0\n"
"int8 MODE_VEL=1\n"
"int8 MODE_ACCEL=2\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::acl_msgs::QuadGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::QuadGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.pos);
      stream.next(m.vel);
      stream.next(m.accel);
      stream.next(m.jerk);
      stream.next(m.yaw);
      stream.next(m.dyaw);
      stream.next(m.cut_power);
      stream.next(m.reset_xy_int);
      stream.next(m.reset_z_int);
      stream.next(m.xy_mode);
      stream.next(m.z_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuadGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::QuadGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::QuadGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.pos);
    s << indent << "vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.vel);
    s << indent << "accel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.accel);
    s << indent << "jerk: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.jerk);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "dyaw: ";
    Printer<double>::stream(s, indent + "  ", v.dyaw);
    s << indent << "cut_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cut_power);
    s << indent << "reset_xy_int: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset_xy_int);
    s << indent << "reset_z_int: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reset_z_int);
    s << indent << "xy_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.xy_mode);
    s << indent << "z_mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.z_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_QUADGOAL_H
