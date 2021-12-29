// Generated by gencpp from file acl_msgs/ClassifierProbabilities.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_CLASSIFIERPROBABILITIES_H
#define ACL_MSGS_MESSAGE_CLASSIFIERPROBABILITIES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct ClassifierProbabilities_
{
  typedef ClassifierProbabilities_<ContainerAllocator> Type;

  ClassifierProbabilities_()
    : header()
    , probabilities()
    , probabilities_raw()
    , class_names()  {
    }
  ClassifierProbabilities_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , probabilities(_alloc)
    , probabilities_raw(_alloc)
    , class_names(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _probabilities_type;
  _probabilities_type probabilities;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _probabilities_raw_type;
  _probabilities_raw_type probabilities_raw;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _class_names_type;
  _class_names_type class_names;





  typedef boost::shared_ptr< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> const> ConstPtr;

}; // struct ClassifierProbabilities_

typedef ::acl_msgs::ClassifierProbabilities_<std::allocator<void> > ClassifierProbabilities;

typedef boost::shared_ptr< ::acl_msgs::ClassifierProbabilities > ClassifierProbabilitiesPtr;
typedef boost::shared_ptr< ::acl_msgs::ClassifierProbabilities const> ClassifierProbabilitiesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator1> & lhs, const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.probabilities == rhs.probabilities &&
    lhs.probabilities_raw == rhs.probabilities_raw &&
    lhs.class_names == rhs.class_names;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator1> & lhs, const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a18c7fe1b3d8f68005c144ab97a8ac7c";
  }

  static const char* value(const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa18c7fe1b3d8f680ULL;
  static const uint64_t static_value2 = 0x05c144ab97a8ac7cULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/ClassifierProbabilities";
  }

  static const char* value(const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64[] probabilities\n"
"float64[] probabilities_raw\n"
"string[] class_names\n"
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
;
  }

  static const char* value(const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.probabilities);
      stream.next(m.probabilities_raw);
      stream.next(m.class_names);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ClassifierProbabilities_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::ClassifierProbabilities_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::ClassifierProbabilities_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "probabilities[]" << std::endl;
    for (size_t i = 0; i < v.probabilities.size(); ++i)
    {
      s << indent << "  probabilities[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.probabilities[i]);
    }
    s << indent << "probabilities_raw[]" << std::endl;
    for (size_t i = 0; i < v.probabilities_raw.size(); ++i)
    {
      s << indent << "  probabilities_raw[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.probabilities_raw[i]);
    }
    s << indent << "class_names[]" << std::endl;
    for (size_t i = 0; i < v.class_names.size(); ++i)
    {
      s << indent << "  class_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.class_names[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_CLASSIFIERPROBABILITIES_H