// Generated by gencpp from file acl_msgs/ReturnToBase.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_RETURNTOBASE_H
#define ACL_MSGS_MESSAGE_RETURNTOBASE_H

#include <ros/service_traits.h>


#include <acl_msgs/ReturnToBaseRequest.h>
#include <acl_msgs/ReturnToBaseResponse.h>


namespace acl_msgs
{

struct ReturnToBase
{

typedef ReturnToBaseRequest Request;
typedef ReturnToBaseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ReturnToBase
} // namespace acl_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::acl_msgs::ReturnToBase > {
  static const char* value()
  {
    return "c32c7657daad0d7f97bac883e5e34a75";
  }

  static const char* value(const ::acl_msgs::ReturnToBase&) { return value(); }
};

template<>
struct DataType< ::acl_msgs::ReturnToBase > {
  static const char* value()
  {
    return "acl_msgs/ReturnToBase";
  }

  static const char* value(const ::acl_msgs::ReturnToBase&) { return value(); }
};


// service_traits::MD5Sum< ::acl_msgs::ReturnToBaseRequest> should match
// service_traits::MD5Sum< ::acl_msgs::ReturnToBase >
template<>
struct MD5Sum< ::acl_msgs::ReturnToBaseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::ReturnToBase >::value();
  }
  static const char* value(const ::acl_msgs::ReturnToBaseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::ReturnToBaseRequest> should match
// service_traits::DataType< ::acl_msgs::ReturnToBase >
template<>
struct DataType< ::acl_msgs::ReturnToBaseRequest>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::ReturnToBase >::value();
  }
  static const char* value(const ::acl_msgs::ReturnToBaseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::acl_msgs::ReturnToBaseResponse> should match
// service_traits::MD5Sum< ::acl_msgs::ReturnToBase >
template<>
struct MD5Sum< ::acl_msgs::ReturnToBaseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::acl_msgs::ReturnToBase >::value();
  }
  static const char* value(const ::acl_msgs::ReturnToBaseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::acl_msgs::ReturnToBaseResponse> should match
// service_traits::DataType< ::acl_msgs::ReturnToBase >
template<>
struct DataType< ::acl_msgs::ReturnToBaseResponse>
{
  static const char* value()
  {
    return DataType< ::acl_msgs::ReturnToBase >::value();
  }
  static const char* value(const ::acl_msgs::ReturnToBaseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACL_MSGS_MESSAGE_RETURNTOBASE_H
