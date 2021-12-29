// Generated by gencpp from file acl_msgs/PilcoRollout.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_PILCOROLLOUT_H
#define ACL_MSGS_MESSAGE_PILCOROLLOUT_H

#include <ros/service_traits.h>


#include <acl_msgs/PilcoRolloutRequest.h>
#include <acl_msgs/PilcoRolloutResponse.h>


namespace acl_msgs
{

struct PilcoRollout
{

typedef PilcoRolloutRequest Request;
typedef PilcoRolloutResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PilcoRollout
} // namespace acl_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::acl_msgs::PilcoRollout > {
  static const char* value()
  {
    return "0eea5718b5de328911c85360216aff35";
  }

  static const char* value(const ::acl_msgs::PilcoRollout&) { return value(); }
};

template<>
struct DataType< ::acl_msgs::PilcoRollout > {
  static const char* value()
  {
    return "acl_msgs/PilcoRollout";
  }

  static const char* value(const ::acl_msgs::PilcoRollout&) { return value(); }
};


// service_traits::MD5Sum< ::acl_msgs::PilcoRolloutRequest> should match
// service_traits::MD5Sum< ::acl_msgs::PilcoRollout >
template<>
struct MD5Sum< ::acl_msgs::PilcoRolloutRequest>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::PilcoRollout >::value();
  }
  static const char* value(const ::acl_msgs::PilcoRolloutRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::PilcoRolloutRequest> should match
// service_traits::DataType< ::acl_msgs::PilcoRollout >
template<>
struct DataType< ::acl_msgs::PilcoRolloutRequest>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::PilcoRollout >::value();
  }
  static const char* value(const ::acl_msgs::PilcoRolloutRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::acl_msgs::PilcoRolloutResponse> should match
// service_traits::MD5Sum< ::acl_msgs::PilcoRollout >
template<>
struct MD5Sum< ::acl_msgs::PilcoRolloutResponse>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::PilcoRollout >::value();
  }
  static const char* value(const ::acl_msgs::PilcoRolloutResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::PilcoRolloutResponse> should match
// service_traits::DataType< ::acl_msgs::PilcoRollout >
template<>
struct DataType< ::acl_msgs::PilcoRolloutResponse>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::PilcoRollout >::value();
  }
  static const char* value(const ::acl_msgs::PilcoRolloutResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACL_MSGS_MESSAGE_PILCOROLLOUT_H
