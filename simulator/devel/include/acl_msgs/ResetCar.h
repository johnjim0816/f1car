// Generated by gencpp from file acl_msgs/ResetCar.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_RESETCAR_H
#define ACL_MSGS_MESSAGE_RESETCAR_H

#include <ros/service_traits.h>


#include <acl_msgs/ResetCarRequest.h>
#include <acl_msgs/ResetCarResponse.h>


namespace acl_msgs
{

struct ResetCar
{

typedef ResetCarRequest Request;
typedef ResetCarResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ResetCar
} // namespace acl_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::acl_msgs::ResetCar > {
  static const char* value()
  {
    return "cc73949c39211cec69275b332eb717e0";
  }

  static const char* value(const ::acl_msgs::ResetCar&) { return value(); }
};

template<>
struct DataType< ::acl_msgs::ResetCar > {
  static const char* value()
  {
    return "acl_msgs/ResetCar";
  }

  static const char* value(const ::acl_msgs::ResetCar&) { return value(); }
};


// service_traits::MD5Sum< ::acl_msgs::ResetCarRequest> should match
// service_traits::MD5Sum< ::acl_msgs::ResetCar >
template<>
struct MD5Sum< ::acl_msgs::ResetCarRequest>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::ResetCar >::value();
  }
  static const char* value(const ::acl_msgs::ResetCarRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::ResetCarRequest> should match
// service_traits::DataType< ::acl_msgs::ResetCar >
template<>
struct DataType< ::acl_msgs::ResetCarRequest>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::ResetCar >::value();
  }
  static const char* value(const ::acl_msgs::ResetCarRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::acl_msgs::ResetCarResponse> should match
// service_traits::MD5Sum< ::acl_msgs::ResetCar >
template<>
struct MD5Sum< ::acl_msgs::ResetCarResponse>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::ResetCar >::value();
  }
  static const char* value(const ::acl_msgs::ResetCarResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::ResetCarResponse> should match
// service_traits::DataType< ::acl_msgs::ResetCar >
template<>
struct DataType< ::acl_msgs::ResetCarResponse>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::ResetCar >::value();
  }
  static const char* value(const ::acl_msgs::ResetCarResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACL_MSGS_MESSAGE_RESETCAR_H
