// Generated by gencpp from file acl_msgs/MissionMode.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_MISSIONMODE_H
#define ACL_MSGS_MESSAGE_MISSIONMODE_H


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
struct MissionMode_
{
  typedef MissionMode_<ContainerAllocator> Type;

  MissionMode_()
    : START(false)
    , END(false)
    , KILL(false)  {
    }
  MissionMode_(const ContainerAllocator& _alloc)
    : START(false)
    , END(false)
    , KILL(false)  {
  (void)_alloc;
    }



   typedef uint8_t _START_type;
  _START_type START;

   typedef uint8_t _END_type;
  _END_type END;

   typedef uint8_t _KILL_type;
  _KILL_type KILL;





  typedef boost::shared_ptr< ::acl_msgs::MissionMode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::MissionMode_<ContainerAllocator> const> ConstPtr;

}; // struct MissionMode_

typedef ::acl_msgs::MissionMode_<std::allocator<void> > MissionMode;

typedef boost::shared_ptr< ::acl_msgs::MissionMode > MissionModePtr;
typedef boost::shared_ptr< ::acl_msgs::MissionMode const> MissionModeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::MissionMode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::MissionMode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::MissionMode_<ContainerAllocator1> & lhs, const ::acl_msgs::MissionMode_<ContainerAllocator2> & rhs)
{
  return lhs.START == rhs.START &&
    lhs.END == rhs.END &&
    lhs.KILL == rhs.KILL;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::MissionMode_<ContainerAllocator1> & lhs, const ::acl_msgs::MissionMode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::MissionMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::MissionMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::MissionMode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::MissionMode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::MissionMode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::MissionMode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::MissionMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "735b6e363094cb9a1d391d118453bf2d";
  }

  static const char* value(const ::acl_msgs::MissionMode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x735b6e363094cb9aULL;
  static const uint64_t static_value2 = 0x1d391d118453bf2dULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::MissionMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/MissionMode";
  }

  static const char* value(const ::acl_msgs::MissionMode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::MissionMode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool START\n"
"bool END\n"
"bool KILL\n"
;
  }

  static const char* value(const ::acl_msgs::MissionMode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::MissionMode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.START);
      stream.next(m.END);
      stream.next(m.KILL);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MissionMode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::MissionMode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::MissionMode_<ContainerAllocator>& v)
  {
    s << indent << "START: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.START);
    s << indent << "END: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.END);
    s << indent << "KILL: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.KILL);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_MISSIONMODE_H