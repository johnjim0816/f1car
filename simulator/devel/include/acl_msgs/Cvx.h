// Generated by gencpp from file acl_msgs/Cvx.msg
// DO NOT EDIT!


#ifndef ACL_MSGS_MESSAGE_CVX_H
#define ACL_MSGS_MESSAGE_CVX_H


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
struct Cvx_
{
  typedef Cvx_<ContainerAllocator> Type;

  Cvx_()
    : header()
    , JPSa_ms(0.0)
    , JPS_fix_ms(0.0)
    , JPStotal_ms(0.0)
    , JPSa_solved(0)
    , JPS_fix_solved(0)
    , whole_solved(0)
    , safe_solved(0)
    , entered_safe_path(0)
    , needToComputeSafePath(0)
    , cvx_decomp_whole_ms(0.0)
    , gurobi_whole_ms(0.0)
    , gurobi_whole_ms_mine(0.0)
    , gurobi_whole_trials(0.0)
    , gurobi_whole_dt(0.0)
    , gurobi_whole_factor(0.0)
    , cvx_decomp_safe_ms(0.0)
    , gurobi_safe_ms(0.0)
    , gurobi_safe_ms_mine(0.0)
    , gurobi_safe_trials(0.0)
    , gurobi_safe_dt(0.0)
    , gurobi_safe_factor(0.0)
    , total_replanning_ms(0.0)
    , Ja(0.0)
    , Ja_inside(0.0)
    , Ja_outside(0.0)
    , Jb(0.0)
    , Jb_inside(0.0)
    , Jb_outside(0.0)
    , decision(0)
    , veloc_norm(0.0)
    , total_dist(0.0)
    , angle_deg(0.0)
    , computed_both(0)
    , deltaT(0)
    , indexR(0)
    , indexH(0)
    , indexR_percentage(0.0)
    , deltaT_percentage(0.0)
    , k(0)  {
    }
  Cvx_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , JPSa_ms(0.0)
    , JPS_fix_ms(0.0)
    , JPStotal_ms(0.0)
    , JPSa_solved(0)
    , JPS_fix_solved(0)
    , whole_solved(0)
    , safe_solved(0)
    , entered_safe_path(0)
    , needToComputeSafePath(0)
    , cvx_decomp_whole_ms(0.0)
    , gurobi_whole_ms(0.0)
    , gurobi_whole_ms_mine(0.0)
    , gurobi_whole_trials(0.0)
    , gurobi_whole_dt(0.0)
    , gurobi_whole_factor(0.0)
    , cvx_decomp_safe_ms(0.0)
    , gurobi_safe_ms(0.0)
    , gurobi_safe_ms_mine(0.0)
    , gurobi_safe_trials(0.0)
    , gurobi_safe_dt(0.0)
    , gurobi_safe_factor(0.0)
    , total_replanning_ms(0.0)
    , Ja(0.0)
    , Ja_inside(0.0)
    , Ja_outside(0.0)
    , Jb(0.0)
    , Jb_inside(0.0)
    , Jb_outside(0.0)
    , decision(0)
    , veloc_norm(0.0)
    , total_dist(0.0)
    , angle_deg(0.0)
    , computed_both(0)
    , deltaT(0)
    , indexR(0)
    , indexH(0)
    , indexR_percentage(0.0)
    , deltaT_percentage(0.0)
    , k(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _JPSa_ms_type;
  _JPSa_ms_type JPSa_ms;

   typedef double _JPS_fix_ms_type;
  _JPS_fix_ms_type JPS_fix_ms;

   typedef double _JPStotal_ms_type;
  _JPStotal_ms_type JPStotal_ms;

   typedef int8_t _JPSa_solved_type;
  _JPSa_solved_type JPSa_solved;

   typedef int8_t _JPS_fix_solved_type;
  _JPS_fix_solved_type JPS_fix_solved;

   typedef int8_t _whole_solved_type;
  _whole_solved_type whole_solved;

   typedef int8_t _safe_solved_type;
  _safe_solved_type safe_solved;

   typedef int8_t _entered_safe_path_type;
  _entered_safe_path_type entered_safe_path;

   typedef int8_t _needToComputeSafePath_type;
  _needToComputeSafePath_type needToComputeSafePath;

   typedef double _cvx_decomp_whole_ms_type;
  _cvx_decomp_whole_ms_type cvx_decomp_whole_ms;

   typedef double _gurobi_whole_ms_type;
  _gurobi_whole_ms_type gurobi_whole_ms;

   typedef double _gurobi_whole_ms_mine_type;
  _gurobi_whole_ms_mine_type gurobi_whole_ms_mine;

   typedef double _gurobi_whole_trials_type;
  _gurobi_whole_trials_type gurobi_whole_trials;

   typedef double _gurobi_whole_dt_type;
  _gurobi_whole_dt_type gurobi_whole_dt;

   typedef double _gurobi_whole_factor_type;
  _gurobi_whole_factor_type gurobi_whole_factor;

   typedef double _cvx_decomp_safe_ms_type;
  _cvx_decomp_safe_ms_type cvx_decomp_safe_ms;

   typedef double _gurobi_safe_ms_type;
  _gurobi_safe_ms_type gurobi_safe_ms;

   typedef double _gurobi_safe_ms_mine_type;
  _gurobi_safe_ms_mine_type gurobi_safe_ms_mine;

   typedef double _gurobi_safe_trials_type;
  _gurobi_safe_trials_type gurobi_safe_trials;

   typedef double _gurobi_safe_dt_type;
  _gurobi_safe_dt_type gurobi_safe_dt;

   typedef double _gurobi_safe_factor_type;
  _gurobi_safe_factor_type gurobi_safe_factor;

   typedef double _total_replanning_ms_type;
  _total_replanning_ms_type total_replanning_ms;

   typedef double _Ja_type;
  _Ja_type Ja;

   typedef double _Ja_inside_type;
  _Ja_inside_type Ja_inside;

   typedef double _Ja_outside_type;
  _Ja_outside_type Ja_outside;

   typedef double _Jb_type;
  _Jb_type Jb;

   typedef double _Jb_inside_type;
  _Jb_inside_type Jb_inside;

   typedef double _Jb_outside_type;
  _Jb_outside_type Jb_outside;

   typedef int8_t _decision_type;
  _decision_type decision;

   typedef double _veloc_norm_type;
  _veloc_norm_type veloc_norm;

   typedef double _total_dist_type;
  _total_dist_type total_dist;

   typedef double _angle_deg_type;
  _angle_deg_type angle_deg;

   typedef int8_t _computed_both_type;
  _computed_both_type computed_both;

   typedef int8_t _deltaT_type;
  _deltaT_type deltaT;

   typedef int8_t _indexR_type;
  _indexR_type indexR;

   typedef int8_t _indexH_type;
  _indexH_type indexH;

   typedef double _indexR_percentage_type;
  _indexR_percentage_type indexR_percentage;

   typedef double _deltaT_percentage_type;
  _deltaT_percentage_type deltaT_percentage;

   typedef int8_t _k_type;
  _k_type k;





  typedef boost::shared_ptr< ::acl_msgs::Cvx_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::acl_msgs::Cvx_<ContainerAllocator> const> ConstPtr;

}; // struct Cvx_

typedef ::acl_msgs::Cvx_<std::allocator<void> > Cvx;

typedef boost::shared_ptr< ::acl_msgs::Cvx > CvxPtr;
typedef boost::shared_ptr< ::acl_msgs::Cvx const> CvxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::acl_msgs::Cvx_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::acl_msgs::Cvx_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::acl_msgs::Cvx_<ContainerAllocator1> & lhs, const ::acl_msgs::Cvx_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.JPSa_ms == rhs.JPSa_ms &&
    lhs.JPS_fix_ms == rhs.JPS_fix_ms &&
    lhs.JPStotal_ms == rhs.JPStotal_ms &&
    lhs.JPSa_solved == rhs.JPSa_solved &&
    lhs.JPS_fix_solved == rhs.JPS_fix_solved &&
    lhs.whole_solved == rhs.whole_solved &&
    lhs.safe_solved == rhs.safe_solved &&
    lhs.entered_safe_path == rhs.entered_safe_path &&
    lhs.needToComputeSafePath == rhs.needToComputeSafePath &&
    lhs.cvx_decomp_whole_ms == rhs.cvx_decomp_whole_ms &&
    lhs.gurobi_whole_ms == rhs.gurobi_whole_ms &&
    lhs.gurobi_whole_ms_mine == rhs.gurobi_whole_ms_mine &&
    lhs.gurobi_whole_trials == rhs.gurobi_whole_trials &&
    lhs.gurobi_whole_dt == rhs.gurobi_whole_dt &&
    lhs.gurobi_whole_factor == rhs.gurobi_whole_factor &&
    lhs.cvx_decomp_safe_ms == rhs.cvx_decomp_safe_ms &&
    lhs.gurobi_safe_ms == rhs.gurobi_safe_ms &&
    lhs.gurobi_safe_ms_mine == rhs.gurobi_safe_ms_mine &&
    lhs.gurobi_safe_trials == rhs.gurobi_safe_trials &&
    lhs.gurobi_safe_dt == rhs.gurobi_safe_dt &&
    lhs.gurobi_safe_factor == rhs.gurobi_safe_factor &&
    lhs.total_replanning_ms == rhs.total_replanning_ms &&
    lhs.Ja == rhs.Ja &&
    lhs.Ja_inside == rhs.Ja_inside &&
    lhs.Ja_outside == rhs.Ja_outside &&
    lhs.Jb == rhs.Jb &&
    lhs.Jb_inside == rhs.Jb_inside &&
    lhs.Jb_outside == rhs.Jb_outside &&
    lhs.decision == rhs.decision &&
    lhs.veloc_norm == rhs.veloc_norm &&
    lhs.total_dist == rhs.total_dist &&
    lhs.angle_deg == rhs.angle_deg &&
    lhs.computed_both == rhs.computed_both &&
    lhs.deltaT == rhs.deltaT &&
    lhs.indexR == rhs.indexR &&
    lhs.indexH == rhs.indexH &&
    lhs.indexR_percentage == rhs.indexR_percentage &&
    lhs.deltaT_percentage == rhs.deltaT_percentage &&
    lhs.k == rhs.k;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::acl_msgs::Cvx_<ContainerAllocator1> & lhs, const ::acl_msgs::Cvx_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace acl_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Cvx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::acl_msgs::Cvx_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Cvx_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::acl_msgs::Cvx_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Cvx_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::acl_msgs::Cvx_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::acl_msgs::Cvx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "74962b3120644cbb8f5c179e3fb331a0";
  }

  static const char* value(const ::acl_msgs::Cvx_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x74962b3120644cbbULL;
  static const uint64_t static_value2 = 0x8f5c179e3fb331a0ULL;
};

template<class ContainerAllocator>
struct DataType< ::acl_msgs::Cvx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acl_msgs/Cvx";
  }

  static const char* value(const ::acl_msgs::Cvx_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::acl_msgs::Cvx_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"float64 JPSa_ms   \n"
"float64 JPS_fix_ms  \n"
"float64 JPStotal_ms \n"
"\n"
"int8 JPSa_solved      \n"
"int8 JPS_fix_solved   \n"
"\n"
"int8 whole_solved\n"
"int8 safe_solved\n"
"\n"
"int8 entered_safe_path\n"
"\n"
"int8 needToComputeSafePath\n"
"\n"
"float64 cvx_decomp_whole_ms  \n"
" \n"
"\n"
"float64 gurobi_whole_ms  \n"
"float64 gurobi_whole_ms_mine \n"
"float64 gurobi_whole_trials\n"
"float64 gurobi_whole_dt\n"
"float64 gurobi_whole_factor\n"
"\n"
"\n"
"float64 cvx_decomp_safe_ms \n"
"\n"
"float64 gurobi_safe_ms  \n"
"float64 gurobi_safe_ms_mine \n"
"float64 gurobi_safe_trials\n"
"float64 gurobi_safe_dt\n"
"float64 gurobi_safe_factor\n"
"\n"
"float64 total_replanning_ms\n"
"\n"
"float64 Ja\n"
"float64 Ja_inside\n"
"float64 Ja_outside\n"
"\n"
"float64 Jb\n"
"float64 Jb_inside\n"
"float64 Jb_outside\n"
"int8 decision \n"
"\n"
"float64 veloc_norm\n"
"float64 total_dist \n"
"float64 angle_deg  \n"
"\n"
"int8 computed_both  \n"
"\n"
"int8 deltaT\n"
"int8 indexR\n"
"int8 indexH\n"
"float64 indexR_percentage\n"
"float64 deltaT_percentage\n"
"int8 k\n"
"\n"
"\n"
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

  static const char* value(const ::acl_msgs::Cvx_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::acl_msgs::Cvx_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.JPSa_ms);
      stream.next(m.JPS_fix_ms);
      stream.next(m.JPStotal_ms);
      stream.next(m.JPSa_solved);
      stream.next(m.JPS_fix_solved);
      stream.next(m.whole_solved);
      stream.next(m.safe_solved);
      stream.next(m.entered_safe_path);
      stream.next(m.needToComputeSafePath);
      stream.next(m.cvx_decomp_whole_ms);
      stream.next(m.gurobi_whole_ms);
      stream.next(m.gurobi_whole_ms_mine);
      stream.next(m.gurobi_whole_trials);
      stream.next(m.gurobi_whole_dt);
      stream.next(m.gurobi_whole_factor);
      stream.next(m.cvx_decomp_safe_ms);
      stream.next(m.gurobi_safe_ms);
      stream.next(m.gurobi_safe_ms_mine);
      stream.next(m.gurobi_safe_trials);
      stream.next(m.gurobi_safe_dt);
      stream.next(m.gurobi_safe_factor);
      stream.next(m.total_replanning_ms);
      stream.next(m.Ja);
      stream.next(m.Ja_inside);
      stream.next(m.Ja_outside);
      stream.next(m.Jb);
      stream.next(m.Jb_inside);
      stream.next(m.Jb_outside);
      stream.next(m.decision);
      stream.next(m.veloc_norm);
      stream.next(m.total_dist);
      stream.next(m.angle_deg);
      stream.next(m.computed_both);
      stream.next(m.deltaT);
      stream.next(m.indexR);
      stream.next(m.indexH);
      stream.next(m.indexR_percentage);
      stream.next(m.deltaT_percentage);
      stream.next(m.k);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cvx_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::acl_msgs::Cvx_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::acl_msgs::Cvx_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "JPSa_ms: ";
    Printer<double>::stream(s, indent + "  ", v.JPSa_ms);
    s << indent << "JPS_fix_ms: ";
    Printer<double>::stream(s, indent + "  ", v.JPS_fix_ms);
    s << indent << "JPStotal_ms: ";
    Printer<double>::stream(s, indent + "  ", v.JPStotal_ms);
    s << indent << "JPSa_solved: ";
    Printer<int8_t>::stream(s, indent + "  ", v.JPSa_solved);
    s << indent << "JPS_fix_solved: ";
    Printer<int8_t>::stream(s, indent + "  ", v.JPS_fix_solved);
    s << indent << "whole_solved: ";
    Printer<int8_t>::stream(s, indent + "  ", v.whole_solved);
    s << indent << "safe_solved: ";
    Printer<int8_t>::stream(s, indent + "  ", v.safe_solved);
    s << indent << "entered_safe_path: ";
    Printer<int8_t>::stream(s, indent + "  ", v.entered_safe_path);
    s << indent << "needToComputeSafePath: ";
    Printer<int8_t>::stream(s, indent + "  ", v.needToComputeSafePath);
    s << indent << "cvx_decomp_whole_ms: ";
    Printer<double>::stream(s, indent + "  ", v.cvx_decomp_whole_ms);
    s << indent << "gurobi_whole_ms: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_whole_ms);
    s << indent << "gurobi_whole_ms_mine: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_whole_ms_mine);
    s << indent << "gurobi_whole_trials: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_whole_trials);
    s << indent << "gurobi_whole_dt: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_whole_dt);
    s << indent << "gurobi_whole_factor: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_whole_factor);
    s << indent << "cvx_decomp_safe_ms: ";
    Printer<double>::stream(s, indent + "  ", v.cvx_decomp_safe_ms);
    s << indent << "gurobi_safe_ms: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_safe_ms);
    s << indent << "gurobi_safe_ms_mine: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_safe_ms_mine);
    s << indent << "gurobi_safe_trials: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_safe_trials);
    s << indent << "gurobi_safe_dt: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_safe_dt);
    s << indent << "gurobi_safe_factor: ";
    Printer<double>::stream(s, indent + "  ", v.gurobi_safe_factor);
    s << indent << "total_replanning_ms: ";
    Printer<double>::stream(s, indent + "  ", v.total_replanning_ms);
    s << indent << "Ja: ";
    Printer<double>::stream(s, indent + "  ", v.Ja);
    s << indent << "Ja_inside: ";
    Printer<double>::stream(s, indent + "  ", v.Ja_inside);
    s << indent << "Ja_outside: ";
    Printer<double>::stream(s, indent + "  ", v.Ja_outside);
    s << indent << "Jb: ";
    Printer<double>::stream(s, indent + "  ", v.Jb);
    s << indent << "Jb_inside: ";
    Printer<double>::stream(s, indent + "  ", v.Jb_inside);
    s << indent << "Jb_outside: ";
    Printer<double>::stream(s, indent + "  ", v.Jb_outside);
    s << indent << "decision: ";
    Printer<int8_t>::stream(s, indent + "  ", v.decision);
    s << indent << "veloc_norm: ";
    Printer<double>::stream(s, indent + "  ", v.veloc_norm);
    s << indent << "total_dist: ";
    Printer<double>::stream(s, indent + "  ", v.total_dist);
    s << indent << "angle_deg: ";
    Printer<double>::stream(s, indent + "  ", v.angle_deg);
    s << indent << "computed_both: ";
    Printer<int8_t>::stream(s, indent + "  ", v.computed_both);
    s << indent << "deltaT: ";
    Printer<int8_t>::stream(s, indent + "  ", v.deltaT);
    s << indent << "indexR: ";
    Printer<int8_t>::stream(s, indent + "  ", v.indexR);
    s << indent << "indexH: ";
    Printer<int8_t>::stream(s, indent + "  ", v.indexH);
    s << indent << "indexR_percentage: ";
    Printer<double>::stream(s, indent + "  ", v.indexR_percentage);
    s << indent << "deltaT_percentage: ";
    Printer<double>::stream(s, indent + "  ", v.deltaT_percentage);
    s << indent << "k: ";
    Printer<int8_t>::stream(s, indent + "  ", v.k);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACL_MSGS_MESSAGE_CVX_H