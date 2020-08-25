// Auto-generated. Do not edit!

// (in-package hello_world.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class HelloRos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Ros = null;
    }
    else {
      if (initObj.hasOwnProperty('Ros')) {
        this.Ros = initObj.Ros
      }
      else {
        this.Ros = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HelloRos
    // Serialize message field [Ros]
    bufferOffset = _serializer.string(obj.Ros, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HelloRos
    let len;
    let data = new HelloRos(null);
    // Deserialize message field [Ros]
    data.Ros = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Ros.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hello_world/HelloRos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42b99dd7c78b4fea28033dec125a8f7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Ros Messages
    string Ros
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HelloRos(null);
    if (msg.Ros !== undefined) {
      resolved.Ros = msg.Ros;
    }
    else {
      resolved.Ros = ''
    }

    return resolved;
    }
};

module.exports = HelloRos;
