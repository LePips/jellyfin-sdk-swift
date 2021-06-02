//
// SyncPlayAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SyncPlayAPI {
    /**
     Notify SyncPlay group that member is buffering.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The player status. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayBuffering(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayBufferingWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Notify SyncPlay group that member is buffering.
     - POST /SyncPlay/Buffering
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The player status. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayBufferingWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Buffering"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create a new SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The settings of the new group. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayCreateGroup(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayCreateGroupWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a new SyncPlay group.
     - POST /SyncPlay/New
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The settings of the new group. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayCreateGroupWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/New"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets all SyncPlay groups.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayGetGroups(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [GroupInfoDto]?, _ error: Error?) -> Void)) {
        syncPlayGetGroupsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets all SyncPlay groups.
     - GET /SyncPlay/List
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[GroupInfoDto]> 
     */
    open class func syncPlayGetGroupsWithRequestBuilder() -> RequestBuilder<[GroupInfoDto]> {
        let path = "/SyncPlay/List"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[GroupInfoDto]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Join an existing SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The group to join. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayJoinGroup(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayJoinGroupWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Join an existing SyncPlay group.
     - POST /SyncPlay/Join
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The group to join. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayJoinGroupWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Join"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Leave the joined SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayLeaveGroup(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayLeaveGroupWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Leave the joined SyncPlay group.
     - POST /SyncPlay/Leave
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayLeaveGroupWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/SyncPlay/Leave"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to move an item in the playlist in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new position for the item. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayMovePlaylistItem(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayMovePlaylistItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to move an item in the playlist in SyncPlay group.
     - POST /SyncPlay/MovePlaylistItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new position for the item. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayMovePlaylistItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/MovePlaylistItem"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request next item in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The current item information. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayNextItem(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayNextItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request next item in SyncPlay group.
     - POST /SyncPlay/NextItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The current item information. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayNextItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/NextItem"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request pause in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayPause(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayPauseWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request pause in SyncPlay group.
     - POST /SyncPlay/Pause
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPauseWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/SyncPlay/Pause"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update session ping.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new ping. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayPing(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayPingWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update session ping.
     - POST /SyncPlay/Ping
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new ping. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPingWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Ping"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request previous item in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The current item information. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayPreviousItem(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayPreviousItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request previous item in SyncPlay group.
     - POST /SyncPlay/PreviousItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The current item information. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPreviousItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/PreviousItem"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to queue items to the playlist of a SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The items to add. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayQueue(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayQueueWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to queue items to the playlist of a SyncPlay group.
     - POST /SyncPlay/Queue
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The items to add. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayQueueWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Queue"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Notify SyncPlay group that member is ready for playback.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The player status. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayReady(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayReadyWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Notify SyncPlay group that member is ready for playback.
     - POST /SyncPlay/Ready
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The player status. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayReadyWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Ready"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to remove items from the playlist in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The items to remove. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayRemoveFromPlaylist(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayRemoveFromPlaylistWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to remove items from the playlist in SyncPlay group.
     - POST /SyncPlay/RemoveFromPlaylist
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The items to remove. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayRemoveFromPlaylistWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/RemoveFromPlaylist"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request seek in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new playback position. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySeek(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySeekWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request seek in SyncPlay group.
     - POST /SyncPlay/Seek
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new playback position. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySeekWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/Seek"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request SyncPlay group to ignore member during group-wait.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The settings to set. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySetIgnoreWait(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySetIgnoreWaitWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request SyncPlay group to ignore member during group-wait.
     - POST /SyncPlay/SetIgnoreWait
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The settings to set. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetIgnoreWaitWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/SetIgnoreWait"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set new playlist in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new playlist to play in the group. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySetNewQueue(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySetNewQueueWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to set new playlist in SyncPlay group.
     - POST /SyncPlay/SetNewQueue
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new playlist to play in the group. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetNewQueueWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/SetNewQueue"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to change playlist item in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new item to play. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySetPlaylistItem(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySetPlaylistItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to change playlist item in SyncPlay group.
     - POST /SyncPlay/SetPlaylistItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new item to play. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetPlaylistItemWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/SetPlaylistItem"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set repeat mode in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new repeat mode. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySetRepeatMode(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySetRepeatModeWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to set repeat mode in SyncPlay group.
     - POST /SyncPlay/SetRepeatMode
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new repeat mode. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetRepeatModeWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/SetRepeatMode"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set shuffle mode in SyncPlay group.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The new shuffle mode. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlaySetShuffleMode(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlaySetShuffleModeWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request to set shuffle mode in SyncPlay group.
     - POST /SyncPlay/SetShuffleMode
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The new shuffle mode. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetShuffleModeWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        let path = "/SyncPlay/SetShuffleMode"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request stop in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayStop(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayStopWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request stop in SyncPlay group.
     - POST /SyncPlay/Stop
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayStopWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/SyncPlay/Stop"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request unpause in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func syncPlayUnpause(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        syncPlayUnpauseWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Request unpause in SyncPlay group.
     - POST /SyncPlay/Unpause
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayUnpauseWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/SyncPlay/Unpause"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}