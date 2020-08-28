# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hello_world/ultRangerData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ultRangerData(genpy.Message):
  _md5sum = "977bed47f562a4bff3f01c6a45d8dc10"
  _type = "hello_world/ultRangerData"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """float64 distance
int64 ECHO
int64 TRIG
"""
  __slots__ = ['distance','ECHO','TRIG']
  _slot_types = ['float64','int64','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       distance,ECHO,TRIG

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ultRangerData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.distance is None:
        self.distance = 0.
      if self.ECHO is None:
        self.ECHO = 0
      if self.TRIG is None:
        self.TRIG = 0
    else:
      self.distance = 0.
      self.ECHO = 0
      self.TRIG = 0

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
      buff.write(_get_struct_d2q().pack(_x.distance, _x.ECHO, _x.TRIG))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.distance, _x.ECHO, _x.TRIG,) = _get_struct_d2q().unpack(str[start:end])
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
      buff.write(_get_struct_d2q().pack(_x.distance, _x.ECHO, _x.TRIG))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.distance, _x.ECHO, _x.TRIG,) = _get_struct_d2q().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2q = None
def _get_struct_d2q():
    global _struct_d2q
    if _struct_d2q is None:
        _struct_d2q = struct.Struct("<d2q")
    return _struct_d2q