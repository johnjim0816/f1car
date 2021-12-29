// Generated by gencpp from file acl_msgs/PilcoRolloutResponse.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_PILCOROLLOUTRESPONSE_H
#define ACL_MSGS_MESSAGE_PILCOROLLOUTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct PilcoRolloutResponse_
{
  typedef PilcoRolloutResponse_<ContainerAllocator> Type;

  PilcoRolloutResponse_()
    : x()
    , y()  {
    }
  PilcoRolloutResponse_(const ContainerAllocator& _alloc)
    : x(_alloc)
    , y(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _x_type;
  _x_type x;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> const> ConstPtr;

}; // struct PilcoRolloutResponse_

typedef ::acl_msgs::PilcoRolloutResponse_<std::allocator<void> > PilcoRolloutResponse;

typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutResponse > PilcoRolloutResponsePtr;
typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutResponse const> PilcoRolloutResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator1> & lhs, const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator1> & lhs, const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ea663295d8fc3e5793c094269ecffd17";
  }

  static const char* value(const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xea663295d8fc3e57ULL;
  static const uint64_t static_value2 = 0x93c094269ecffd17ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/PilcoRolloutResponse";
  }

  static const char* value(const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float64MultiArray x\n"
"std_msgs/Float64MultiArray y\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float64MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float64[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PilcoRolloutResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::PilcoRolloutResponse_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_PILCOROLLOUTRESPONSE_H
