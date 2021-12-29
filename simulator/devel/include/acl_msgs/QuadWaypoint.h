// Generated by gencpp from file acl_msgs/QuadWaypoint.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_QUADWAYPOINT_H
#define ACL_MSGS_MESSAGE_QUADWAYPOINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct QuadWaypoint_
{
  typedef QuadWaypoint_<ContainerAllocator> Type;

  QuadWaypoint_()
    : header()
    , point()
    , heading(0.0)  {
    }
  QuadWaypoint_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , point(_alloc)
    , heading(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _point_type;
  _point_type point;

   typedef double _heading_type;
  _heading_type heading;





  typedef boost::shared_ptr< ::acl_msgs::QuadWaypoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::QuadWaypoint_<ContainerAllocator> const> ConstPtr;

}; // struct QuadWaypoint_

typedef ::acl_msgs::QuadWaypoint_<std::allocator<void> > QuadWaypoint;

typedef boost::shared_ptr< ::acl_msgs::QuadWaypoint > QuadWaypointPtr;
typedef boost::shared_ptr< ::acl_msgs::QuadWaypoint const> QuadWaypointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::QuadWaypoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::QuadWaypoint_<ContainerAllocator1> & lhs, const ::acl_msgs::QuadWaypoint_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.point == rhs.point &&
    lhs.heading == rhs.heading;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::QuadWaypoint_<ContainerAllocator1> & lhs, const ::acl_msgs::QuadWaypoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::QuadWaypoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::QuadWaypoint_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::QuadWaypoint_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "745606d9dd2edec176c7a52c6f162289";
  }

  static const char* value(const ::acl_msgs::QuadWaypoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x745606d9dd2edec1ULL;
  static const uint64_t static_value2 = 0x76c7a52c6f162289ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/QuadWaypoint";
  }

  static const char* value(const ::acl_msgs::QuadWaypoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"geometry_msgs/Point point\n"
"float64 heading\n"
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
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::acl_msgs::QuadWaypoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.point);
      stream.next(m.heading);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuadWaypoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::QuadWaypoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::QuadWaypoint_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "point: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_QUADWAYPOINT_H
