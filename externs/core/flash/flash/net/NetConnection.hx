package flash.net; #if (!display && flash)


import openfl.events.EventDispatcher;
import openfl.utils.Object;


extern class NetConnection extends EventDispatcher {
	
	
	//public static inline var CONNECT_SUCCESS:String = "connectSuccess";
	
	#if flash
	public static var defaultObjectEncoding:UInt;
	#end
	
	#if flash
	public var client:Dynamic;
	#end
	
	#if flash
	public var connected (default, null):Bool;
	#end
	
	#if flash
	public var connectedProxyType (default, null):String;
	#end
	
	#if flash
	@:require(flash10) public var farID (default, null):String;
	#end
	
	#if flash
	@:require(flash10) public var farNonce (default, null):String;
	#end
	
	#if flash
	@:require(flash10) public var maxPeerConnections:UInt;
	#end
	
	#if flash
	@:require(flash10) public var nearID (default, null):String;
	#end
	
	#if flash
	@:require(flash10) public var nearNonce (default, null):String;
	#end
	
	#if flash
	public var objectEncoding:UInt;
	#end
	
	#if flash
	@:require(flash10) public var protocol (default, null):String;
	#end
	
	#if flash
	public var proxyType:String;
	#end
	
	#if flash
	@:require(flash10) public var unconnectedPeerStreams (default, null):Array<Dynamic>;
	#end
	
	#if flash
	public var uri (default, null):String;
	#end
	
	#if flash
	public var usingTLS (default, null):Bool;
	#end
	
	
	public function new ();
	
	
	#if flash
	public function addHeader (operation:String, mustUnderstand:Bool = false, ?param:Object):Void;
	#end
	
	#if flash
	public function call (command:String, responder:flash.net.Responder, ?p1:Dynamic, ?p2:Dynamic, ?p3:Dynamic, ?p4:Dynamic, ?p5:Dynamic):Void;
	#end
	
	#if flash
	public function close ():Void;
	#end
	
	public function connect (command:String, ?p1:Dynamic, ?p2:Dynamic, ?p3:Dynamic, ?p4:Dynamic, ?p5:Dynamic):Void;
	
	
}


#else
typedef NetConnection = openfl.net.NetConnection;
#end