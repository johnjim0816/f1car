# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from acl_msgs/QuadGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class QuadGoal(genpy.Message):
  _md5sum = "950d02887809b520e2711856716b3af3"
  _type = "acl_msgs/QuadGoal"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
geometry_msgs/Vector3 pos
geometry_msgs/Vector3 vel
geometry_msgs/Vector3 accel
geometry_msgs/Vector3 jerk
float64 yaw
float64 dyaw
bool cut_power
bool reset_xy_int
bool reset_z_int
int8 xy_mode
int8 z_mode
int8 MODE_POS=0
int8 MODE_VEL=1
int8 MODE_ACCEL=2

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  # Pseudo-constants
  MODE_POS = 0
  MODE_VEL = 1
  MODE_ACCEL = 2

  __slots__ = ['header','pos','vel','accel','jerk','yaw','dyaw','cut_power','reset_xy_int','reset_z_int','xy_mode','z_mode']
  _slot_types = ['std_msgs/Header','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','geometry_msgs/Vector3','float64','float64','bool','bool','bool','int8','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,pos,vel,accel,jerk,yaw,dyaw,cut_power,reset_xy_int,reset_z_int,xy_mode,z_mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QuadGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pos is None:
        self.pos = geometry_msgs.msg.Vector3()
      if self.vel is None:
        self.vel = geometry_msgs.msg.Vector3()
      if self.accel is None:
        self.accel = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      if self.yaw is None:
        self.yaw = 0.
      if self.dyaw is None:
        self.dyaw = 0.
      if self.cut_power is None:
        self.cut_power = False
      if self.reset_xy_int is None:
        self.reset_xy_int = False
      if self.reset_z_int is None:
        self.reset_z_int = False
      if self.xy_mode is None:
        self.xy_mode = 0
      if self.z_mode is None:
        self.z_mode = 0
    else:
      self.header = std_msgs.msg.Header()
      self.pos = geometry_msgs.msg.Vector3()
      self.vel = geometry_msgs.msg.Vector3()
      self.accel = geometry_msgs.msg.Vector3()
      self.jerk = geometry_msgs.msg.Vector3()
      self.yaw = 0.
      self.dyaw = 0.
      self.cut_power = False
      self.reset_xy_int = False
      self.reset_z_int = False
      self.xy_mode = 0
      self.z_mode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_14d3B2b().pack(_x.pos.x, _x.pos.y, _x.pos.z, _x.vel.x, _x.vel.y, _x.vel.z, _x.accel.x, _x.accel.y, _x.accel.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.yaw, _x.dyaw, _x.cut_power, _x.reset_xy_int, _x.reset_z_int, _x.xy_mode, _x.z_mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pos is None:
        self.pos = geometry_msgs.msg.Vector3()
      if self.vel is None:
        self.vel = geometry_msgs.msg.Vector3()
      if self.accel is None:
        self.accel = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 117
      (_x.pos.x, _x.pos.y, _x.pos.z, _x.vel.x, _x.vel.y, _x.vel.z, _x.accel.x, _x.accel.y, _x.accel.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.yaw, _x.dyaw, _x.cut_power, _x.reset_xy_int, _x.reset_z_int, _x.xy_mode, _x.z_mode,) = _get_struct_14d3B2b().unpack(str[start:end])
      self.cut_power = bool(self.cut_power)
      self.reset_xy_int = bool(self.reset_xy_int)
      self.reset_z_int = bool(self.reset_z_int)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_14d3B2b().pack(_x.pos.x, _x.pos.y, _x.pos.z, _x.vel.x, _x.vel.y, _x.vel.z, _x.accel.x, _x.accel.y, _x.accel.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.yaw, _x.dyaw, _x.cut_power, _x.reset_xy_int, _x.reset_z_int, _x.xy_mode, _x.z_mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.pos is None:
        self.pos = geometry_msgs.msg.Vector3()
      if self.vel is None:
        self.vel = geometry_msgs.msg.Vector3()
      if self.accel is None:
        self.accel = geometry_msgs.msg.Vector3()
      if self.jerk is None:
        self.jerk = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 117
      (_x.pos.x, _x.pos.y, _x.pos.z, _x.vel.x, _x.vel.y, _x.vel.z, _x.accel.x, _x.accel.y, _x.accel.z, _x.jerk.x, _x.jerk.y, _x.jerk.z, _x.yaw, _x.dyaw, _x.cut_power, _x.reset_xy_int, _x.reset_z_int, _x.xy_mode, _x.z_mode,) = _get_struct_14d3B2b().unpack(str[start:end])
      self.cut_power = bool(self.cut_power)
      self.reset_xy_int = bool(self.reset_xy_int)
      self.reset_z_int = bool(self.reset_z_int)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_14d3B2b = None
def _get_struct_14d3B2b():
    global _struct_14d3B2b
    if _struct_14d3B2b is None:
        _struct_14d3B2b = struct.Struct("<14d3B2b")
    return _struct_14d3B2b
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I