// Generated by gencpp from file acl_msgs/Return2StartFeedback.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_RETURN2STARTFEEDBACK_H
#define ACL_MSGS_MESSAGE_RETURN2STARTFEEDBACK_H


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
struct Return2StartFeedback_
{
  typedef Return2StartFeedback_<ContainerAllocator> Type;

  Return2StartFeedback_()
    : percent_complete(0.0)  {
    }
  Return2StartFeedback_(const ContainerAllocator& _alloc)
    : percent_complete(0.0)  {
  (void)_alloc;
    }



   typedef float _percent_complete_type;
  _percent_complete_type percent_complete;





  typedef boost::shared_ptr< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct Return2StartFeedback_

typedef ::acl_msgs::Return2StartFeedback_<std::allocator<void> > Return2StartFeedback;

typedef boost::shared_ptr< ::acl_msgs::Return2StartFeedback > Return2StartFeedbackPtr;
typedef boost::shared_ptr< ::acl_msgs::Return2StartFeedback const> Return2StartFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::Return2StartFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::Return2StartFeedback_<ContainerAllocator1> & lhs, const ::acl_msgs::Return2StartFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.percent_complete == rhs.percent_complete;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::Return2StartFeedback_<ContainerAllocator1> & lhs, const ::acl_msgs::Return2StartFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d342375c60a5a58d3bc32664070a1368";
  }

  static const char* value(const ::acl_msgs::Return2StartFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd342375c60a5a58dULL;
  static const uint64_t static_value2 = 0x3bc32664070a1368ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/Return2StartFeedback";
  }

  static const char* value(const ::acl_msgs::Return2StartFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"float32 percent_complete\n"
;
  }

  static const char* value(const ::acl_msgs::Return2StartFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.percent_complete);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Return2StartFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::Return2StartFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::Return2StartFeedback_<ContainerAllocator>& v)
  {
    s << indent << "percent_complete: ";
    Printer<float>::stream(s, indent + "  ", v.percent_complete);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_RETURN2STARTFEEDBACK_H