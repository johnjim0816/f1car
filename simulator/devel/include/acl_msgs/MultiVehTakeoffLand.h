// Generated by gencpp from file acl_msgs/MultiVehTakeoffLand.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_MULTIVEHTAKEOFFLAND_H
#define ACL_MSGS_MESSAGE_MULTIVEHTAKEOFFLAND_H

#include <ros/service_traits.h>


#include <acl_msgs/MultiVehTakeoffLandRequest.h>
#include <acl_msgs/MultiVehTakeoffLandResponse.h>


namespace acl_msgs
{

struct MultiVehTakeoffLand
{

typedef MultiVehTakeoffLandRequest Request;
typedef MultiVehTakeoffLandResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MultiVehTakeoffLand
} // namespace acl_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::acl_msgs::MultiVehTakeoffLand > {
  static const char* value()
  {
    return "27f425af94b703f836a37c2b21423b61";
  }

  static const char* value(const ::acl_msgs::MultiVehTakeoffLand&) { return value(); }
};

template<>
struct DataType< ::acl_msgs::MultiVehTakeoffLand > {
  static const char* value()
  {
    return "acl_msgs/MultiVehTakeoffLand";
  }

  static const char* value(const ::acl_msgs::MultiVehTakeoffLand&) { return value(); }
};


// service_traits::MD5Sum< ::acl_msgs::MultiVehTakeoffLandRequest> should match
// service_traits::MD5Sum< ::acl_msgs::MultiVehTakeoffLand >
template<>
struct MD5Sum< ::acl_msgs::MultiVehTakeoffLandRequest>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::MultiVehTakeoffLand >::value();
  }
  static const char* value(const ::acl_msgs::MultiVehTakeoffLandRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::MultiVehTakeoffLandRequest> should match
// service_traits::DataType< ::acl_msgs::MultiVehTakeoffLand >
template<>
struct DataType< ::acl_msgs::MultiVehTakeoffLandRequest>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::MultiVehTakeoffLand >::value();
  }
  static const char* value(const ::acl_msgs::MultiVehTakeoffLandRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::acl_msgs::MultiVehTakeoffLandResponse> should match
// service_traits::MD5Sum< ::acl_msgs::MultiVehTakeoffLand >
template<>
struct MD5Sum< ::acl_msgs::MultiVehTakeoffLandResponse>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::MultiVehTakeoffLand >::value();
  }
  static const char* value(const ::acl_msgs::MultiVehTakeoffLandResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::MultiVehTakeoffLandResponse> should match
// service_traits::DataType< ::acl_msgs::MultiVehTakeoffLand >
template<>
struct DataType< ::acl_msgs::MultiVehTakeoffLandResponse>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::MultiVehTakeoffLand >::value();
  }
  static const char* value(const ::acl_msgs::MultiVehTakeoffLandResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACL_MSGS_MESSAGE_MULTIVEHTAKEOFFLAND_H
