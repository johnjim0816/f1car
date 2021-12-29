// Generated by gencpp from file acl_msgs/Return2StartGoal.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_RETURN2STARTGOAL_H
#define ACL_MSGS_MESSAGE_RETURN2STARTGOAL_H


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
struct Return2StartGoal_
{
  typedef Return2StartGoal_<ContainerAllocator> Type;

  Return2StartGoal_()
    : r(0.0)
    , v(0.0)  {
    }
  Return2StartGoal_(const ContainerAllocator& _alloc)
    : r(0.0)
    , v(0.0)  {
  (void)_alloc;
    }



   typedef double _r_type;
  _r_type r;

   typedef double _v_type;
  _v_type v;





  typedef boost::shared_ptr< ::acl_msgs::Return2StartGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::Return2StartGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Return2StartGoal_

typedef ::acl_msgs::Return2StartGoal_<std::allocator<void> > Return2StartGoal;

typedef boost::shared_ptr< ::acl_msgs::Return2StartGoal > Return2StartGoalPtr;
typedef boost::shared_ptr< ::acl_msgs::Return2StartGoal const> Return2StartGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::Return2StartGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::Return2StartGoal_<ContainerAllocator1> & lhs, const ::acl_msgs::Return2StartGoal_<ContainerAllocator2> & rhs)
{
  return lhs.r == rhs.r &&
    lhs.v == rhs.v;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::Return2StartGoal_<ContainerAllocator1> & lhs, const ::acl_msgs::Return2StartGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Return2StartGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Return2StartGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Return2StartGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "615e4f3e8bc91c4fadba7c107abdf4c0";
  }

  static const char* value(const ::acl_msgs::Return2StartGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x615e4f3e8bc91c4fULL;
  static const uint64_t static_value2 = 0xadba7c107abdf4c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/Return2StartGoal";
  }

  static const char* value(const ::acl_msgs::Return2StartGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"float64 r\n"
"float64 v\n"
;
  }

  static const char* value(const ::acl_msgs::Return2StartGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.r);
      stream.next(m.v);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Return2StartGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::Return2StartGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::Return2StartGoal_<ContainerAllocator>& v)
  {
    s << indent << "r: ";
    Printer<double>::stream(s, indent + "  ", v.r);
    s << indent << "v: ";
    Printer<double>::stream(s, indent + "  ", v.v);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_RETURN2STARTGOAL_H
