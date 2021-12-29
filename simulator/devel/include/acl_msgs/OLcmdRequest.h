// Generated by gencpp from file acl_msgs/OLcmdRequest.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_OLCMDREQUEST_H
#define ACL_MSGS_MESSAGE_OLCMDREQUEST_H


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
struct OLcmdRequest_
{
  typedef OLcmdRequest_<ContainerAllocator> Type;

  OLcmdRequest_()
    : time(0.0)
    , max_omega(0.0)
    , max_turn(0.0)  {
    }
  OLcmdRequest_(const ContainerAllocator& _alloc)
    : time(0.0)
    , max_omega(0.0)
    , max_turn(0.0)  {
  (void)_alloc;
    }



   typedef double _time_type;
  _time_type time;

   typedef double _max_omega_type;
  _max_omega_type max_omega;

   typedef double _max_turn_type;
  _max_turn_type max_turn;





  typedef boost::shared_ptr< ::acl_msgs::OLcmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::OLcmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct OLcmdRequest_

typedef ::acl_msgs::OLcmdRequest_<std::allocator<void> > OLcmdRequest;

typedef boost::shared_ptr< ::acl_msgs::OLcmdRequest > OLcmdRequestPtr;
typedef boost::shared_ptr< ::acl_msgs::OLcmdRequest const> OLcmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::OLcmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::OLcmdRequest_<ContainerAllocator1> & lhs, const ::acl_msgs::OLcmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.max_omega == rhs.max_omega &&
    lhs.max_turn == rhs.max_turn;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::OLcmdRequest_<ContainerAllocator1> & lhs, const ::acl_msgs::OLcmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::OLcmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::OLcmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::OLcmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c84a51643c3bf557c09a02b7fb1eebd";
  }

  static const char* value(const ::acl_msgs::OLcmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c84a51643c3bf55ULL;
  static const uint64_t static_value2 = 0x7c09a02b7fb1eebdULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/OLcmdRequest";
  }

  static const char* value(const ::acl_msgs::OLcmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 time\n"
"float64 max_omega\n"
"float64 max_turn\n"
;
  }

  static const char* value(const ::acl_msgs::OLcmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.max_omega);
      stream.next(m.max_turn);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OLcmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::OLcmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::OLcmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
    s << indent << "max_omega: ";
    Printer<double>::stream(s, indent + "  ", v.max_omega);
    s << indent << "max_turn: ";
    Printer<double>::stream(s, indent + "  ", v.max_turn);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_OLCMDREQUEST_H
