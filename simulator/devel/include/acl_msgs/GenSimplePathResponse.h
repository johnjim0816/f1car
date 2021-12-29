// Generated by gencpp from file acl_msgs/GenSimplePathResponse.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_GENSIMPLEPATHRESPONSE_H
#define ACL_MSGS_MESSAGE_GENSIMPLEPATHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <acl_msgs/Trajectory.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct GenSimplePathResponse_
{
  typedef GenSimplePathResponse_<ContainerAllocator> Type;

  GenSimplePathResponse_()
    : trajectory()  {
    }
  GenSimplePathResponse_(const ContainerAllocator& _alloc)
    : trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::acl_msgs::Trajectory_<ContainerAllocator>  _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GenSimplePathResponse_

typedef ::acl_msgs::GenSimplePathResponse_<std::allocator<void> > GenSimplePathResponse;

typedef boost::shared_ptr< ::acl_msgs::GenSimplePathResponse > GenSimplePathResponsePtr;
typedef boost::shared_ptr< ::acl_msgs::GenSimplePathResponse const> GenSimplePathResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator1> & lhs, const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator2> & rhs)
{
  return lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator1> & lhs, const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "63186c500e781b227e2074ba560e4296";
  }

  static const char* value(const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x63186c500e781b22ULL;
  static const uint64_t static_value2 = 0x7e2074ba560e4296ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/GenSimplePathResponse";
  }

  static const char* value(const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/Trajectory trajectory\n"
"\n"
"\n"
"================================================================================\n"
"MSG: acl_msgs/Trajectory\n"
"Header header\n"
"geometry_msgs/Vector3Stamped[] pos\n"
"geometry_msgs/Vector3Stamped[] vel\n"
"geometry_msgs/Vector3Stamped[] acc\n"
"geometry_msgs/Vector3Stamped[] jerk\n"
"\n"
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
"MSG: geometry_msgs/Vector3Stamped\n"
"# This represents a Vector3 with reference coordinate frame and timestamp\n"
"Header header\n"
"Vector3 vector\n"
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

  static const char* value(const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GenSimplePathResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::GenSimplePathResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::GenSimplePathResponse_<ContainerAllocator>& v)
  {
    s << indent << "trajectory: ";
    s << std::endl;
    Printer< ::acl_msgs::Trajectory_<ContainerAllocator> >::stream(s, indent + "  ", v.trajectory);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_GENSIMPLEPATHRESPONSE_H