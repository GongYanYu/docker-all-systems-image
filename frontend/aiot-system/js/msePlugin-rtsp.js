/*code by zsli4(13721069895)*/
/* eslint-disable */
function abToAsc(buffer) {
  let str = Array.prototype.map.call(buffer,
    function (bit) {
      return String.fromCharCode(bit);
    })
  return str.join('');
};

class IMsevideoPlayer {
  constructor(wsurl, _0x3ad72b, _0x1ef28c, _0x427219) {
    this['_wsurl'] = wsurl;
    this['_hwnd'] = _0x3ad72b;
    this['_pid'] = _0x1ef28c;
    this['_callback'] = _0x427219;
    this['wsclient'] = null;
  }
  close() {
    console['log']('VideoClose:' + this['_pid']);
    if (this['wsclient']) {
      this['wsclient']['send']('000');
      this['wsclient']['close']();
      this['wsclient'] = null;
    }
    this['_hwnd']['pause']();
    this['_hwnd']['src'] = '';
    this['_hwnd']['removeAttribute']('src');
    while (this['_hwnd']['childElementCount'])
      this['_hwnd']['firstChild']['remove']();
    this['_hwnd']['load']();
  }
  play() {
    var _self = this;
    return new Promise(function (resolve, reject) {

      if (_self['wsclient']) {
        _self['wsclient']['send']('000');
        _self['wsclient']['close']();
        _self['wsclient'] = null;
      }
      _self['_hwnd']['pause']();
      _self['_hwnd']['src'] = '';
      _self['_hwnd']['removeAttribute']('src');
      while (_self['_hwnd']['childElementCount'])
        _self['_hwnd']['firstChild']['remove']();
      _self['_hwnd']['load']();
	  
      var _0x5ee441 = true;
      var _0x3cdd5c = 0x0;
      var _0x170914 = 0x0;
      function _0x3806d4(_0x4806d4, _0x5806d4) {
        this._0x1806d4 = _0x4806d4;
        this._0x2806d4 = _0x5806d4;
      };
      var _0x6806d4 = new Array();
      var _0xcf248e = 0;
      var _0x424e20 = new MediaSource();
      _self['_hwnd']['src'] = URL['createObjectURL'](_0x424e20);
      _0x424e20['addEventListener']('sourceopen', function (_0x553a4f) {
        var _0x4902c5 = new Array();
        console['log']('sourceopen\x20channel:' + _self['_pid'] + '\x20' + _0x553a4f['target']['readyState']);
        var _0x2b7b8d = _0x553a4f['target']['addSourceBuffer']('video/mp4;\x20codecs=\x22avc1.640032\x22');
        _0x2b7b8d['addEventListener']('updateend', function () {
          if (_0x2b7b8d['updating'] == ![] && _0x4902c5['length'] > 0x0) {
            try {
              var _0x2d6746 = new Uint8Array(_0x4902c5['shift']());
              if (_0x2d6746[0x0] == 0x30 && _0x2d6746[0x1] == 0x30 && _0x2d6746[0x2] == 0x31) {
                if (_0x2d6746[0x3] == 0x31) //打框 
                {
                  var _0x2937c3 = 0x10000 * _0x2d6746[0x6] + 0x100 * _0x2d6746[0x5] + _0x2d6746[0x4];
                  _0x2b7b8d['appendBuffer'](_0x2d6746['subarray'](0x8, 0x8 + _0x2937c3));
                  if (_0x2d6746.length - _0x2937c3 > 20) {
                    if (_0x2b7b8d['buffered']['length'] > 0)
                      _0x6806d4['push'](new _0x3806d4(_0x2b7b8d['buffered']['end'](0x0), _0x2d6746['subarray'](0x8 + _0x2937c3)));
                    else _0x6806d4['push'](new _0x3806d4(0, _0x2d6746['subarray'](0x8 + _0x2937c3)));
                  }
                }
                else if (_0x2d6746[0x3] == 0x32) //切片数据
                {
                  _0x2b7b8d['appendBuffer'](_0x2d6746['subarray'](0x5));
                  var nowPercent = _0x2d6746[0x4];
                  // console.log('nowPercent1:' + nowPercent);
                  _self.percentage(nowPercent)
                }
              }
              else _0x2b7b8d['appendBuffer'](_0x2d6746);
            } catch (_0x12a9f1) {
              console['log']('appendBuffer1\x20error' + _0x12a9f1);
            }
          }
        });
        _self['wsclient'] = new WebSocket(_self['_wsurl']);
        _self['wsclient']['binaryType'] = 'arraybuffer';
        _self['wsclient']['onerror'] = function () {
          var errorObj = new Error("插件连接失败");
          errorObj.code = 101;
          reject(errorObj)
        }
        _self['wsclient']['onmessage'] = function (_0x202a6f) {
          if (_0x202a6f['data']['byteLength'] < 0x3c) {
            var mydata = new Uint8Array(_0x202a6f['data']);
            if (mydata[0x0] == 0x30 && mydata[0x1] == 0x30 && mydata[0x2] == 0x32) //002 视频流反馈信令
            {
              if (mydata[0x3] == 0x30 && mydata[0x4] == 0x31) //00201
              {
                var w = 256 * mydata[5] + mydata[6];
                var h = 256 * mydata[7] + mydata[8];
                var iversion = abToAsc(mydata['subarray'](9));
                var sinfoObj = { vwidth: w, vheight: h, iVersion: iversion };
                resolve(sinfoObj);
              }
              else if (mydata[0x3] == 0x31 && mydata[0x4] == 0x31) //00211
              {
                var w = 256 * mydata[5] + mydata[6];
                var h = 256 * mydata[7] + mydata[8];
                var iversion = abToAsc(mydata['subarray'](9));
                var sinfoObj = { vwidth: w, vheight: h, iVersion: iversion };
                resolve(sinfoObj);
              }
              else if (mydata[0x3] == 0x32 && mydata[0x4] == 0x31) //00221
              {
                var w = 256 * mydata[5] + mydata[6];
                var h = 256 * mydata[7] + mydata[8];
                var t_size = 256 * 256 * 256 * mydata[9] + 256 * 256 * mydata[10] + 256 * mydata[11] + mydata[12];  //总大小
                var t_time = 256 * mydata[13] + mydata[14];   //总时长
                var s_time = 256 * 256 * 256 * mydata[15] + 256 * 256 * mydata[16] + 256 * mydata[17] + mydata[18];   //开始时间
                var e_time = 256 * 256 * 256 * mydata[19] + 256 * 256 * mydata[20] + 256 * mydata[21] + mydata[22];   //预警时间
                var iversion = abToAsc(mydata['subarray'](23));
                var sinfoObj = { vwidth: w, vheight: h, totalSize: t_size, totalTime: t_time, startTime: s_time, eventTime: e_time, iVersion: iversion };
                resolve(sinfoObj);
              }

            }
            else if (mydata[0x0] == 0x39 && mydata[0x1] == 0x39 && mydata[0x2] == 0x39) //999 异常信息
            {

              var errorObj = new Error(abToAsc(mydata['subarray'](6)));
              errorObj.code = abToAsc(mydata['subarray'](0, 5));
              console.log('异常信息:' + abToAsc(mydata));
              reject(errorObj);
            }
            //else if (_0x202a6f['data']['byteLength'] == 0x6) {
            //self['_callback'](_self['_pid'], _0x202a6f['data']['byteLength']);  //rtsp流暂停或结束了，接收超时
            //return;
            //}
            return;
          }

          //MSE模块,不要管
          else if (_0x202a6f['data']['byteLength'] == 0x2f9) {
			  _0x5ee441=false;
            var _0x352cbb = _self['_hwnd']['currentTime'];
            if (_0x3cdd5c == _0x352cbb) {
              ++_0x170914;
              if (_0x170914 > 0x4) {
                if (!_0x2b7b8d['updating']) {
                  _self['_hwnd']['currentTime'] = _0x2b7b8d['buffered']['end'](0x0);
                  _0x2b7b8d['abort']();
                } return;
              }
            } else _0x170914 = 0x0;
            _0x3cdd5c = _0x352cbb;
            var _0x2285d8 = _0x2b7b8d['buffered'];
            if (_0x2285d8['length'] > 0x0) {
			  var _0x353cbb=_0x2285d8['end'](0x0)-_0x352cbb;
			  console.log('difftime+:'+_0x353cbb);
			  if(_0x353cbb<1.5) _self['_hwnd']['playbackRate']=1;
			  else  _self['_hwnd']['playbackRate']=1.2;
              var _0x36a0b3 = _0x2285d8['start'](0x0);
              if (_0x352cbb - _0x36a0b3 > 0x1e) {
                if (!_0x2b7b8d['updating']) {
                  _0x2b7b8d['remove'](_0x36a0b3, _0x36a0b3 + 0x19);
                }
              }
            }
          }

          var _0x352cbc = _self['_hwnd']['currentTime'];
          for (_0xcf248e = 0; _0xcf248e < _0x6806d4['length']; _0xcf248e++)
            if (_0x352cbc <= _0x6806d4[_0xcf248e]._0x1806d4) break;
          if (_0xcf248e > 0) {
            var str1 = JSON.parse(abToAsc(_0x6806d4[_0xcf248e - 1]._0x2806d4));
           
            console.log('aidata0:' + str1);
          }
          while (_0xcf248e) {
            _0x6806d4['shift']();
            _0xcf248e--;
          }
          if(_0x5ee441) return;
          _0x4902c5['push'](_0x202a6f['data']);
          if (_0x2b7b8d['updating'] == ![] && _0x4902c5['length'] > 0x0) {
            try {
              var _0x37c3a3 = new Uint8Array(_0x4902c5['shift']());
              if (_0x37c3a3[0x0] == 0x30 && _0x37c3a3[0x1] == 0x30 && _0x37c3a3[0x2] == 0x31) {
                if (_0x37c3a3[0x3] == 0x31) {
                  var _0x2937c3 = 0x10000 * _0x37c3a3[0x6] + 0x100 * _0x37c3a3[0x5] + _0x37c3a3[0x4];
                  _0x2b7b8d['appendBuffer'](_0x37c3a3['subarray'](0x8, 0x8 + _0x2937c3));
                  if (_0x37c3a3.length - _0x2937c3 > 20) {
                    if (_0x2b7b8d['buffered']['length'] > 0)
                      _0x6806d4['push'](new _0x3806d4(_0x2b7b8d['buffered']['end'](0x0), _0x37c3a3['subarray'](0x8 + _0x2937c3)));
                    else _0x6806d4['push'](new _0x3806d4(0, _0x37c3a3['subarray'](0x8 + _0x2937c3)));
                  }

                }
                else if (_0x37c3a3[0x3] == 0x32) //切片数据
                {
                  _0x2b7b8d['appendBuffer'](_0x37c3a3['subarray'](0x5));
                  var nowPercent = _0x37c3a3[0x4];
                  // console.log('nowPercent0:' + nowPercent);
                  _self.percentage(nowPercent)
                }
              }
              else _0x2b7b8d['appendBuffer'](_0x37c3a3);
            } catch (_0x4c615e) {
              console['log']('appendBuffer0\x20error' + _0x4c615e);
              //if (_self['wsclient']) {
               // _self['wsclient']['send']('000');
               // _self['wsclient']['close']();
               // _self['wsclient'] = null;
             // }
			  
			  _0x5ee441=true;
			  _0x4902c5['clear']();
			   _self['_hwnd']['currentTime'] = _0x2b7b8d['buffered']['end'](0x0);
               _0x2b7b8d['abort']();
			   
             // _self.play();
            }
          }
        };  //websocket onmessage
      });

    }) //Promise

  }
  pause() {
    if (this['wsclient']) this['wsclient']['send']('008-2-1');  //暂停
  }
  replay() {
    if (this['wsclient']) this['wsclient']['send']('008-2-0');   //恢复
  }
  process(percent) {
    if (this['wsclient']) this['wsclient']['send']('007-2-' + percent);  //拖拽
  }
  cycleplay(iscycle) {
    if (this['wsclient']) this['wsclient']['send']('006-2-' + iscycle);  //是否循环播放
  }
  beatxtc() {
    if (this['wsclient']) this['wsclient']['send']('002-1112');
  }
  percentage(per) {
    // per 0-100，百分比
  }
}

//export default IMsevideoPlayer