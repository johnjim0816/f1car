// Generated by gencpp from file acl_msgs/OLcmd.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_OLCMD_H
#define ACL_MSGS_MESSAGE_OLCMD_H

#include <ros/service_traits.h>


#include <acl_msgs/OLcmdRequest.h>
#include <acl_msgs/OLcmdResponse.h>


namespace acl_msgs
{

struct OLcmd
{

typedef OLcmdRequest Request;
typedef OLcmdResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct OLcmd
} // namespace acl_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::acl_msgs::OLcmd > {
  static const char* value()
  {
    return "b6d83d7c503466443ff05073f46784d7";
  }

  static const char* value(const ::acl_msgs::OLcmd&) { return value(); }
};

template<>
struct DataType< ::acl_msgs::OLcmd > {
  static const char* value()
  {
    return "acl_msgs/OLcmd";
  }

  static const char* value(const ::acl_msgs::OLcmd&) { return value(); }
};


// service_traits::MD5Sum< ::acl_msgs::OLcmdRequest> should match
// service_traits::MD5Sum< ::acl_msgs::OLcmd >
template<>
struct MD5Sum< ::acl_msgs::OLcmdRequest>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::OLcmd >::value();
  }
  static const char* value(const ::acl_msgs::OLcmdRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::OLcmdRequest> should match
// service_traits::DataType< ::acl_msgs::OLcmd >
template<>
struct DataType< ::acl_msgs::OLcmdRequest>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::OLcmd >::value();
  }
  static const char* value(const ::acl_msgs::OLcmdRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::acl_msgs::OLcmdResponse> should match
// service_traits::MD5Sum< ::acl_msgs::OLcmd >
template<>
struct MD5Sum< ::acl_msgs::OLcmdResponse>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::OLcmd >::value();
  }
  static const char* value(const ::acl_msgs::OLcmdResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::OLcmdResponse> should match
// service_traits::DataType< ::acl_msgs::OLcmd >
template<>
struct DataType< ::acl_msgs::OLcmdResponse>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::OLcmd >::value();
  }
  static const char* value(const ::acl_msgs::OLcmdResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACL_MSGS_MESSAGE_OLCMD_H