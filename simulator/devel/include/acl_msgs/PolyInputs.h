// Generated by gencpp from file acl_msgs/PolyInputs.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_POLYINPUTS_H
#define ACL_MSGS_MESSAGE_POLYINPUTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>
#include <std_msgs/Float64MultiArray.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct PolyInputs_
{
  typedef PolyInputs_<ContainerAllocator> Type;

  PolyInputs_()
    : n(0)
    , wp()
    , wp0()
    , wpf()
    , wp_vel()
    , wp_elm()
    , tt()  {
    }
  PolyInputs_(const ContainerAllocator& _alloc)
    : n(0)
    , wp(_alloc)
    , wp0(_alloc)
    , wpf(_alloc)
    , wp_vel(_alloc)
    , wp_elm(_alloc)
    , tt(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _n_type;
  _n_type n;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _wp_type;
  _wp_type wp;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _wp0_type;
  _wp0_type wp0;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _wpf_type;
  _wpf_type wpf;

   typedef  ::std_msgs::Float64MultiArray_<ContainerAllocator>  _wp_vel_type;
  _wp_vel_type wp_vel;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _wp_elm_type;
  _wp_elm_type wp_elm;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _tt_type;
  _tt_type tt;





  typedef boost::shared_ptr< ::acl_msgs::PolyInputs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::PolyInputs_<ContainerAllocator> const> ConstPtr;

}; // struct PolyInputs_

typedef ::acl_msgs::PolyInputs_<std::allocator<void> > PolyInputs;

typedef boost::shared_ptr< ::acl_msgs::PolyInputs > PolyInputsPtr;
typedef boost::shared_ptr< ::acl_msgs::PolyInputs const> PolyInputsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::PolyInputs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::PolyInputs_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::PolyInputs_<ContainerAllocator1> & lhs, const ::acl_msgs::PolyInputs_<ContainerAllocator2> & rhs)
{
  return lhs.n == rhs.n &&
    lhs.wp == rhs.wp &&
    lhs.wp0 == rhs.wp0 &&
    lhs.wpf == rhs.wpf &&
    lhs.wp_vel == rhs.wp_vel &&
    lhs.wp_elm == rhs.wp_elm &&
    lhs.tt == rhs.tt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::PolyInputs_<ContainerAllocator1> & lhs, const ::acl_msgs::PolyInputs_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PolyInputs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PolyInputs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PolyInputs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PolyInputs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PolyInputs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PolyInputs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::PolyInputs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1bda35eaa32e8a9d7e75090c28023cbc";
  }

  static const char* value(const ::acl_msgs::PolyInputs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1bda35eaa32e8a9dULL;
  static const uint64_t static_value2 = 0x7e75090c28023cbcULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::PolyInputs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/PolyInputs";
  }

  static const char* value(const ::acl_msgs::PolyInputs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::PolyInputs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Definition of polynomial inputs for trajectory generation.\n"
"\n"
"int64 n # polynomial order (n=4 -> cubic spline)\n"
"std_msgs/Float64MultiArray wp # x,y,z waypoints\n"
"std_msgs/Float64MultiArray wp0 # initial x,y,z velocity and derivatives if appropriate\n"
"std_msgs/Float64MultiArray wpf # final x,y,z velocity and derivatives if appropriate\n"
"std_msgs/Float64MultiArray wp_vel # intermediate velocity commands\n"
"int64[] wp_elm # waypoints at which the wp_vel should be applied\n"
"float64[] tt # time segments between waypoints (relative, not cumulative)\n"
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

  static const char* value(const ::acl_msgs::PolyInputs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::PolyInputs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.n);
      stream.next(m.wp);
      stream.next(m.wp0);
      stream.next(m.wpf);
      stream.next(m.wp_vel);
      stream.next(m.wp_elm);
      stream.next(m.tt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PolyInputs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::PolyInputs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::PolyInputs_<ContainerAllocator>& v)
  {
    s << indent << "n: ";
    Printer<int64_t>::stream(s, indent + "  ", v.n);
    s << indent << "wp: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.wp);
    s << indent << "wp0: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.wp0);
    s << indent << "wpf: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.wpf);
    s << indent << "wp_vel: ";
    s << std::endl;
    Printer< ::std_msgs::Float64MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.wp_vel);
    s << indent << "wp_elm[]" << std::endl;
    for (size_t i = 0; i < v.wp_elm.size(); ++i)
    {
      s << indent << "  wp_elm[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.wp_elm[i]);
    }
    s << indent << "tt[]" << std::endl;
    for (size_t i = 0; i < v.tt.size(); ++i)
    {
      s << indent << "  tt[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.tt[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_POLYINPUTS_H
