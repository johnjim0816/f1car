# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from acl_msgs/ImageRect.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ImageRect(genpy.Message):
  _md5sum = "6cc2dbb204a4d58734e556b0d716a7c5"
  _type = "acl_msgs/ImageRect"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 x
int32 y
int32 height
int32 width
float32 score
string class_string
int32 class_id
"""
  __slots__ = ['x','y','height','width','score','class_string','class_id']
  _slot_types = ['int32','int32','int32','int32','float32','string','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,height,width,score,class_string,class_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImageRect, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = 0
      if self.y is None:
        self.y = 0
      if self.height is None:
        self.height = 0
      if self.width is None:
        self.width = 0
      if self.score is None:
        self.score = 0.
      if self.class_string is None:
        self.class_string = ''
      if self.class_id is None:
        self.class_id = 0
    else:
      self.x = 0
      self.y = 0
      self.height = 0
      self.width = 0
      self.score = 0.
      self.class_string = ''
      self.class_id = 0

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
      buff.write(_get_struct_4if().pack(_x.x, _x.y, _x.height, _x.width, _x.score))
      _x = self.class_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.class_id
      buff.write(_get_struct_i().pack(_x))
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
      end = 0
      _x = self
      start = end
      end += 20
      (_x.x, _x.y, _x.height, _x.width, _x.score,) = _get_struct_4if().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_string = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_string = str[start:end]
      start = end
      end += 4
      (self.class_id,) = _get_struct_i().unpack(str[start:end])
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
      buff.write(_get_struct_4if().pack(_x.x, _x.y, _x.height, _x.width, _x.score))
      _x = self.class_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.class_id
      buff.write(_get_struct_i().pack(_x))
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
      end = 0
      _x = self
      start = end
      end += 20
      (_x.x, _x.y, _x.height, _x.width, _x.score,) = _get_struct_4if().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.class_string = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.class_string = str[start:end]
      start = end
      end += 4
      (self.class_id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4if = None
def _get_struct_4if():
    global _struct_4if
    if _struct_4if is None:
        _struct_4if = struct.Struct("<4if")
    return _struct_4if
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
