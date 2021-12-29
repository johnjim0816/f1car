// Generated by gencpp from file acl_msgs/PilcoRolloutRequest.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_PILCOROLLOUTREQUEST_H
#define ACL_MSGS_MESSAGE_PILCOROLLOUTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <acl_msgs/GPparams.h>

namespace acl_msgs
{
template <class ContainerAllocator>
struct PilcoRolloutRequest_
{
  typedef PilcoRolloutRequest_<ContainerAllocator> Type;

  PilcoRolloutRequest_()
    : params()
    , H(0)
    , num_centers(0)
    , D(0)
    , E(0)
    , rate(0.0)
    , random(false)
    , dy0(0.0)  {
    }
  PilcoRolloutRequest_(const ContainerAllocator& _alloc)
    : params(_alloc)
    , H(0)
    , num_centers(0)
    , D(0)
    , E(0)
    , rate(0.0)
    , random(false)
    , dy0(0.0)  {
  (void)_alloc;
    }



   typedef std::vector< ::acl_msgs::GPparams_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::acl_msgs::GPparams_<ContainerAllocator> >::other >  _params_type;
  _params_type params;

   typedef int64_t _H_type;
  _H_type H;

   typedef int64_t _num_centers_type;
  _num_centers_type num_centers;

   typedef int64_t _D_type;
  _D_type D;

   typedef int64_t _E_type;
  _E_type E;

   typedef double _rate_type;
  _rate_type rate;

   typedef uint8_t _random_type;
  _random_type random;

   typedef double _dy0_type;
  _dy0_type dy0;





  typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PilcoRolloutRequest_

typedef ::acl_msgs::PilcoRolloutRequest_<std::allocator<void> > PilcoRolloutRequest;

typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutRequest > PilcoRolloutRequestPtr;
typedef boost::shared_ptr< ::acl_msgs::PilcoRolloutRequest const> PilcoRolloutRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator1> & lhs, const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator2> & rhs)
{
  return lhs.params == rhs.params &&
    lhs.H == rhs.H &&
    lhs.num_centers == rhs.num_centers &&
    lhs.D == rhs.D &&
    lhs.E == rhs.E &&
    lhs.rate == rhs.rate &&
    lhs.random == rhs.random &&
    lhs.dy0 == rhs.dy0;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator1> & lhs, const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d55d528b5c126896ba4c21101f746628";
  }

  static const char* value(const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd55d528b5c126896ULL;
  static const uint64_t static_value2 = 0xba4c21101f746628ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/PilcoRolloutRequest";
  }

  static const char* value(const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/GPparams[] params\n"
"int64 H\n"
"int64 num_centers\n"
"int64 D\n"
"int64 E\n"
"float64 rate\n"
"bool random\n"
"float64 dy0\n"
"\n"
"================================================================================\n"
"MSG: acl_msgs/GPparams\n"
"float64[] input\n"
"float64[] beta\n"
"float64[] iL2\n"
;
  }

  static const char* value(const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.params);
      stream.next(m.H);
      stream.next(m.num_centers);
      stream.next(m.D);
      stream.next(m.E);
      stream.next(m.rate);
      stream.next(m.random);
      stream.next(m.dy0);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PilcoRolloutRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::PilcoRolloutRequest_<ContainerAllocator>& v)
  {
    s << indent << "params[]" << std::endl;
    for (size_t i = 0; i < v.params.size(); ++i)
    {
      s << indent << "  params[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::acl_msgs::GPparams_<ContainerAllocator> >::stream(s, indent + "    ", v.params[i]);
    }
    s << indent << "H: ";
    Printer<int64_t>::stream(s, indent + "  ", v.H);
    s << indent << "num_centers: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num_centers);
    s << indent << "D: ";
    Printer<int64_t>::stream(s, indent + "  ", v.D);
    s << indent << "E: ";
    Printer<int64_t>::stream(s, indent + "  ", v.E);
    s << indent << "rate: ";
    Printer<double>::stream(s, indent + "  ", v.rate);
    s << indent << "random: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.random);
    s << indent << "dy0: ";
    Printer<double>::stream(s, indent + "  ", v.dy0);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_PILCOROLLOUTREQUEST_H